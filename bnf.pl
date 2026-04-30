% bnf.pl






% ORACION
% Punto de entrada del parser. Acepta oraciones con o sin saludo
% y con o sin sintagma nominal. El tema T puede venir del
% sintagma nominal o del objeto dentro del sintagma verbal.
oracion(S, T) --> sintagma_verbal(S, T).
oracion(S, T) --> sintagma_nominal(_), sintagma_verbal(S, T).   % SN ignorado, tema viene del SV
oracion(S, T) --> sintagma_nominal(T), sintagma_verbal(S, _).   % tema viene del SN
oracion(S, T) --> saludo, sintagma_verbal(S, T).
oracion(S, T) --> saludo, sintagma_nominal(_), sintagma_verbal(S, T).
oracion(S, T) --> saludo, sintagma_nominal(T), sintagma_verbal(S, _).




% SINTAGMA NOMINAL
% Representa el sujeto de la oracion. Puede ser un sustantivo
% solo, con determinante, un pronombre, o precedido de preposicion.
sintagma_nominal(T) --> determinante, sustantivo(T).
sintagma_nominal(T) --> sustantivo(T).
sintagma_nominal(_) --> pronombre.
sintagma_nominal(_) --> preposicion, pronombre.
sintagma_nominal(_) --> saludo, sintagma_nominal(_).  % saludo pegado al SN ("hola yo...")



% SINTAGMA VERBAL
% Nucleo semantico de la oracion. Combina un verbo (que porta el
% sentimiento) con el objeto (que porta el tema).
% Acepta intensificadores opcionales entre el verbo y el objeto.
sintagma_verbal(S, T) --> verbo(S), objeto(T).
sintagma_verbal(S, T) --> verbo(S), [mucho], objeto(T).
sintagma_verbal(S, T) --> verbo(S), [bastante], objeto(T).
sintagma_verbal(S, T) --> verbo(S), [demasiado], objeto(T).
sintagma_verbal(S, T) --> verbo(S), [mucho], preposicion, objeto(T).




% OBJETO
% El sustantivo que recibe la accion del verbo. Puede ir
% precedido de determinante, preposicion, o ambos (via conector).
objeto(T) --> sustantivo(T).
objeto(T) --> determinante, sustantivo(T).
objeto(T) --> conector, sustantivo(T).

% Conector: permite preposicion, determinante o ambos antes del sustantivo
conector --> preposicion.
conector --> determinante.
conector --> preposicion, determinante.


% Diccionario (Terminales)
determinante --> [el].
determinante --> [la].
determinante --> [las].
determinante --> [un].
determinante --> [una].
determinante --> [los].
determinante --> [unos].
determinante --> [unas].
determinante --> [este].
determinante --> [esta].
determinante --> [sobre].


pronombre --> [yo].
pronombre --> [mi].



% Preposiciones
preposicion --> [a].
preposicion --> [de].
preposicion --> [por].
preposicion --> [en].
preposicion --> [sobre].
preposicion --> [con].






sustantivo(ambiente) --> [ambiente].
sustantivo(ambiente) --> [medio], [animales].
sustantivo(animales) --> [animales].
sustantivo(argumentacion) --> [argumentacion].
sustantivo(arte) --> [arte].
sustantivo(automatizacion) --> [automatizacion].
sustantivo(biologia) --> [biologia].
sustantivo(ciencias) --> [ciencias].
sustantivo(cocina) --> [cocina].
sustantivo(creatividad) --> [creatividad].
sustantivo(debate) --> [debate].
sustantivo(deporte) --> [deporte].
sustantivo(dibujo) --> [dibujo].
sustantivo(educacion) --> [educacion].
sustantivo(escritura) --> [escritura].
sustantivo(fisica) --> [fisica].
sustantivo(investigacion) --> [investigacion].
sustantivo(lectura) --> [lectura].
sustantivo(leyes) --> [leyes].
sustantivo(liderazgo) --> [liderazgo].
sustantivo(literatura) --> [literatura].
sustantivo(logica) --> [logica].
sustantivo(matematicas) --> [matematicas].
sustantivo(mecanica) --> [mecanica].
sustantivo(musica) --> [musica].
sustantivo(negocios) --> [negocios].
sustantivo(personas) --> [personas].
sustantivo(pintura) --> [pintura].
sustantivo(precision) --> [precision].
sustantivo(problemas) --> [problemas].
sustantivo(programacion) --> [programacion].
sustantivo(quimica) --> [quimica].
sustantivo(retos) --> [retos].
sustantivo(salud) --> [salud].
sustantivo(seguridad) --> [seguridad].
sustantivo(sociales) --> [sociales].
sustantivo(tecnologia) --> [tecnologia].
sustantivo(desconocido)  --> [_].  




% VERBOS POSITIVOS
verbo(positivo) --> [amo].
verbo(positivo) --> [adoro].
verbo(positivo) --> [adora].
verbo(positivo) --> [fascina].
verbo(positivo) --> [fascinan].
verbo(positivo) --> [encanta].
verbo(positivo) --> [encantan].
verbo(positivo) --> [gusta].
verbo(positivo) --> [gustan].
verbo(positivo) --> [estudio].
verbo(positivo) --> [estudiar].
verbo(positivo) --> [disfruto].
verbo(positivo) --> [disfruta].
verbo(positivo) --> [disfrutar].
verbo(positivo) --> [interesa].
verbo(positivo) --> [interesan].
verbo(positivo) --> [apasiona].
verbo(positivo) --> [apasionan].
verbo(positivo) --> [apasiona].
verbo(positivo) --> [encanta].
verbo(positivo) --> [fascina].
verbo(positivo) --> [gusta].
verbo(positivo) --> [llama], [la], [atencion].
verbo(positivo) --> [llama], [mucho], [la], [atencion].
verbo(positivo) --> [prefiero].
verbo(positivo) --> [amo].
verbo(positivo) --> [quiero].
verbo(positivo) --> [deseo].
verbo(positivo) --> [valoro].
verbo(positivo) --> [practico].
verbo(positivo) --> [siento], [comodidad].
verbo(positivo) --> [siento], [comoda].
verbo(positivo) --> [siento], [comodo].
verbo(positivo) --> [dedico], [a].
verbo(positivo) --> [soy], [bueno], [en].
verbo(positivo) --> [soy], [buena], [en].
verbo(positivo) --> [tengo], [habilidad], [en].
verbo(positivo) --> [tengo], [talento], [en].
verbo(positivo) --> [soy], [muy], [bueno], [en].
verbo(positivo) --> [soy], [muy], [buena], [en].
verbo(positivo) --> [tengo], [mucha], [habilidad], [en].
verbo(positivo) --> [tengo], [mucho], [talento], [en].
verbo(positivo) --> [siento], [atraccion], [por].
verbo(positivo) --> [motiva].
verbo(positivo) --> [divierte].
verbo(positivo) --> [divierten].
verbo(positivo) --> [divierte].
verbo(positivo) --> [disfruto], [mucho].
verbo(positivo) --> [amo], [mucho].
verbo(positivo) --> [apasiona], [mucho].
verbo(positivo) --> [aprender].
verbo(positivo) --> [quiero].
verbo(positivo) --> [quiero], [aprender].
verbo(positivo) --> [siento].
verbo(positivo) --> [resolver].

% VERBOS NEGATIVOS
verbo(negativo) --> [odio].
verbo(negativo) --> [detesto].
verbo(negativo) --> [abomino].
verbo(negativo) --> [aborrezco].
verbo(negativo) --> [desprecio].
verbo(negativo) --> [evito].
verbo(negativo) --> [no], verbo(positivo).
verbo(negativo) --> [jamas], verbo(positivo).
verbo(negativo) --> [nunca], verbo(positivo).
verbo(negativo) --> [para], [nada], verbo(positivo).
verbo(negativo) --> [no], [soporto].
verbo(negativo) --> [no], [tolero].
verbo(negativo) --> [aburre].
verbo(negativo) --> [aburren].
verbo(negativo) --> [cansa].
verbo(negativo) --> [cansan].
verbo(negativo) --> [desagrada].
verbo(negativo) --> [desagradan].

% SALUDOS
saludo --> [hola].
saludo --> [buenas].
saludo --> [hey].
saludo --> [saludos].
saludo --> [ey].
saludo --> [buenos], [dias].
saludo --> [buenas], [tardes].
saludo --> [buenas], [noches].
saludo --> [buenas], [mananas].
saludo --> [buen], [dia].
saludo --> [que], [tal].
saludo --> [hola], [que], [tal].
saludo --> [hola], [buenas].
saludo --> [muy], [buenos], [dias].
saludo --> [muy], [buenas], [tardes].
saludo --> [muy], [buenas], [noches].
saludo --> [bienvenido].
saludo --> [bienvenidos].
saludo --> [buenas], [dias].
saludo --> [que], [hubo].
saludo --> [que], [hay].
saludo --> [que], [pasa].
saludo --> [que], [onda].
saludo --> [que], [mas].