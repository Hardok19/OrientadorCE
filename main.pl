:- encoding(utf8).
:- consult('bnf.pl').  % Carga las reglas gramaticales (BNF)
:- consult('bd.pl').   % Carga la base de datos de carreras, afinidades, antagonias y sinonimos


% INICIO
% Punto de entrada del programa. 4 preguntas,
% los intereses detectados en cada respuesta y al final llama a recomendar.
% El flujo es secuencial: cada leer_y_parsear bloquea hasta que el usuario
% escribe algo que el parser entiende.
inicio :-
    write('OrientadorCE: Hola, entiendo que la tarea de buscar una carrera es dificil.'),
    nl,
    write('Estamos aqui para ayudarte! Dime que te gusta.'),
    nl,
    leer_y_parsear(S1, T1),           % Lee la primera respuesta y extrae sentimiento y tema
    actualizar_intereses(S1, T1, [], I1),  % Agrega el tema a la lista de intereses si es positivo/negativo valido

    pregunta2, nl,
    leer_y_parsear(S2, T2),
    actualizar_intereses(S2, T2, I1, I2),

    pregunta3, nl,
    leer_y_parsear(S3, T3),
    actualizar_intereses(S3, T3, I2, I3),

    pregunta4, nl,
    leer_y_parsear(S4, T4),
    actualizar_intereses(S4, T4, I3, I4),

    recomendar(I4),   % Evalua los intereses acumulados y recomienda las mejores carreras
    esperar_enter,
    halt.




pregunta2 :- write('OrientadorCE: Hay algo que cuando lo practiques sientas comodidad?').

pregunta3 :- write('OrientadorCE: Te interesa aprender sobre algo en particular aparte de lo que me has comentado?').

pregunta4 :- write('OrientadorCE: Hay algo que no te guste o prefieras evitar?').


% LEER Y PARSEAR
% Lee una linea del usuario, la normaliza (minusculas, sin tildes, sin puntuacion),
% la convierte en una lista y la intenta parsear con la gramatica BNF.
% Si el parser falla, pide al usuario que reformule y reintenta recursivamente.
% Unifica Sentimiento con 'positivo' o 'negativo', y Tema con el area detectada.
leer_y_parsear(Sentimiento, Tema) :-
    read_line_to_string(user_input, Input),
    string_lower(Input, Lower),             % Convierte todo a minusculas
    limpiar_string(Lower, SinRuido),        % Elimina tildes y puntuacion
    normalizar_espacios(SinRuido, Limpio),  % Elimina espacios extras
    split_string(Limpio, " ", "", ListaStr),
    maplist(atom_string, Lista, ListaStr),  % Convierte strings a lista
    limpiar_lista(Lista, ListaLimpia),      % Elimina palabras irrelevantes (me, y, pero)
    normalizar(ListaLimpia, ListaNormalizada), % Reemplaza sinonimos y errores tipograficos
    (phrase(oracion(Sentimiento, Tema), ListaNormalizada)
    ->  true
    ;   write('OrientadorCE: No entendi, puedes darme mas informacion?'), nl,
        leer_y_parsear(Sentimiento, Tema)). % Reintenta hasta parsear correctamente







% ACTUALIZAR INTERESES
% Agrega el tema detectado a la lista acumulada de intereses.
% Los temas positivos se agregan directamente: [matematicas, tecnologia, ...]
% Los temas negativos se envuelven en neg:  [neg(arte), neg(biologia), ...]
% Si el tema es 'desconocido' o no esta instanciado, no se agrega nada.

% Caso positivo: agrega el tema directamente a la lista
actualizar_intereses(positivo, Tema, Lista, [Tema|Lista]) :-
    nonvar(Tema), Tema \= desconocido, !.

% Caso negativo: agrega neg(Tema) para distinguirlo al recomendar
actualizar_intereses(negativo, Tema, Lista, [neg(Tema)|Lista]) :-
    nonvar(Tema), Tema \= desconocido, !.

% Caso por defecto: si el tema es desconocido o no parseable, la lista no cambia
actualizar_intereses(_, _, Lista, Lista).


% RECOMENDAR
% Evalua cada carrera de la base de datos contra la lista de intereses acumulados.
% Calcula un puntaje para cada carrera sumando matches positivos y bonificaciones.
% Muestra la(s) carrera(s) con mayor puntaje.
%   Puntaje = Positivos + Negativos
recomendar(Intereses) :-
    findall(Puntaje-Carrera,
        (carrera(Carrera, Afinidades, Antagonias),
         contar_positivos(Intereses, Afinidades, Positivos),
         contar_negativos(Intereses, Antagonias, Negativos),
         Puntaje is Positivos + Negativos,
         Puntaje > 0),
        Lista),
    (Lista = []
    ->  write('OrientadorCE: No pude determinar una carrera adecuada con la informacion brindada.')
    ;   max_member(Mejor-_, Lista),
        findall(Carrera, member(Mejor-Carrera, Lista), Mejores),
        (   Mejores = [Unica]
        ->  format("OrientadorCE: Dadas tus preferencias te recomendaria: ~w~n", [Unica])
        ;   write('OrientadorCE: Dadas tus preferencias te recomendaria alguna de estas carreras:'), nl,
            maplist([C]>>(write('  - '), write(C), nl), Mejores)
        )
    ).







% CONTAR POSITIVOS
% Recorre la lista de intereses ignorando los neg(_) y cuentatemas positivos.

% Caso base: lista vacia, contador en 0
contar_positivos([], _, 0).
% Ignora los intereses negativos, no suman ni restan aqui
contar_positivos([neg(_)|T], Lista, N) :-
    !, contar_positivos(T, Lista, N).
% Si el tema positivo esta en la lista objetivo, suma 1
contar_positivos([H|T], Lista, N) :-
    (member(H, Lista) -> contar_positivos(T, Lista, N1), N is N1 + 1
    ; contar_positivos(T, Lista, N)).






% CONTAR NEGATIVOS
% Recorre la lista de intereses buscando solo los neg(Tema) y cuenta cuantos parecen en la lista dada.

% Caso base: lista vacia, contador en 0
contar_negativos([], _, 0).
% Si el tema negativo esta en la lista objetivo, suma 1
contar_negativos([neg(H)|T], Lista, N) :-
    !, (member(H, Lista) -> contar_negativos(T, Lista, N1), N is N1 + 1
       ; contar_negativos(T, Lista, N)).
% Ignora los intereses positivos, no cuentan aqui
contar_negativos([_|T], Lista, N) :-
    contar_negativos(T, Lista, N).





% LIMPIEZA DE STRING
% Recorre el string caracter por caracter usando sus codigos Unicode
limpiar_string(Entrada, Salida) :-
    string_codes(Entrada, Codes),
    maplist(reemplazar_char, Codes, NuevosCodes),
    string_codes(Salida, NuevosCodes).


% Mapeo de codigos Unicode: tildes -> vocal simple, puntuacion -> espacio
reemplazar_char(225, 97).   % á -> a
reemplazar_char(233, 101).  % é -> e
reemplazar_char(237, 105).  % í -> i
reemplazar_char(243, 111).  % ó -> o
reemplazar_char(250, 117).  % ú -> u
reemplazar_char(46,  32).   % .  -> espacio
reemplazar_char(33,  32).   % !  -> espacio
reemplazar_char(59,  32).   % ;  -> espacio
reemplazar_char(191, 32).   % ¿  -> espacio
reemplazar_char(44,  32).   % ,  -> espacio
reemplazar_char(63,  32).   % ?  -> espacio
reemplazar_char(161, 32).   % ¡  -> espacio
reemplazar_char(173, 32).   % guion -> espacio
reemplazar_char(164, 110).  % ñ -> n
reemplazar_char(165, 110).  % Ñ -> n
reemplazar_char(C,   C).    % Cualquier otro caracter se mantiene igual


% NORMALIZAR ESPACIOS
% Divide el string por espacios, elimina los fragmentos vacios que quedan
% tras eliminar puntuacion, y los vuelve a unir con un solo espacio entre cada token.
normalizar_espacios(Entrada, Salida) :-
    split_string(Entrada, " ", " ", Partes),
    exclude(=(""), Partes, PartesFiltradas),
    atomic_list_concat(PartesFiltradas, ' ', Salida).


% LIMPIAR LISTA
% Elimina de la lista de tokens las palabras que no aportan informacion semantica
% al parser: 'me', 'y', 'pero'. Esto evita que el BNF falle por palabras de relleno.
limpiar_lista([], []).
limpiar_lista([me|T],   Rest) :- !, limpiar_lista(T, Rest).
limpiar_lista([y|T],    Rest) :- !, limpiar_lista(T, Rest).
limpiar_lista([pero|T], Rest) :- !, limpiar_lista(T, Rest).
limpiar_lista([H|T], [H|Rest])    :- limpiar_lista(T, Rest).  % Cualquier otro token se conserva


% NORMALIZAR
% Recorre la lista y reemplaza cada uno por su sinonimo canonico
% si existe una regla sinonimo en bd.pl. Esto unifica variantes de escritura
% (errores tipograficos, plurales, palabras relacionadas) antes de parsear.
normalizar([], []).
normalizar([H|T], [N|Rest]) :-
    (sinonimo(H, N) -> true ; N = H),  % Si hay sinonimo usa el canonico, si no deja el token igual
    normalizar(T, Rest).


% Pausa la ejecucion mostrando un mensaje y esperando que el usuario presione ENTER.
% Evita que la ventana se cierre inmediatamente al terminar el programa.
esperar_enter :-
    write('Presione ENTER para salir...'),
    nl,
    flush_output,
    read_line_to_string(user_input, _).