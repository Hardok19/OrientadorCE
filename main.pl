:- encoding(utf8).
:- consult('bnf.pl').


inicio :-
    pregunta1,
    nl,
    read_line_to_string(user_input, Input),
    string_lower(Input, Lower),
    quitar_tildes(Lower, Limpio),

    write('Tu respuesta fue: '),
    write(Limpio),
    nl,
    

    split_string(Limpio, " ", "", ListaStr), 
    maplist(atom_string, Lista, ListaStr),  %Convierte la cadena en una lista de palabras
    limpiar_lista(Lista, ListaLimpia),  % ← elimina el "me, etc"
    phrase(oracion, ListaLimpia),
    halt.
    



pregunta1 :-
    write('Hola, entiendo que la tarea de buscar una carrera es difícil. Estamos aquí para ayudarte! Dime que te gusta.').





noentiende :-
    write('No entiendo tu respuesta, puedes darme más información?').




%eliminar tildes de una cadena
quitar_tildes(Entrada, Salida) :-
    string_codes(Entrada, Codes),
    maplist(reemplazar_tilde, Codes, NuevosCodes),
    string_codes(Salida, NuevosCodes).

reemplazar_tilde(225, 97).  % á → a
reemplazar_tilde(233, 101). % é → e
reemplazar_tilde(237, 105). % í → i
reemplazar_tilde(243, 111). % ó → o
reemplazar_tilde(250, 117). % ú → u
reemplazar_tilde(C, C).

% Eliminar palabras irrelevantes antes de parsear
limpiar_lista([], []).
limpiar_lista([me|T], Rest) :- limpiar_lista(T, Rest).
limpiar_lista([H|T], [H|Rest]) :- limpiar_lista(T, Rest).




