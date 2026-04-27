%bnf.pl
% Reglas de la oración
oracion --> sintagma_nominal, sintagma_verbal.
oracion --> sintagma_verbal.




% Definición de componentes
sintagma_nominal --> pronombre, sintagma_nominal. 
sintagma_nominal --> saludo, sintagma_nominal.
sintagma_nominal --> pronombre.
sintagma_nominal --> determinante, sustantivo.





sintagma_verbal --> verbo(_), objeto.



objeto --> sustantivo.
objeto --> determinante, sustantivo.






% Diccionario (Terminales)
determinante --> [el].
determinante --> [las].
determinante --> [un].
determinante --> [una].
determinante --> [los].
determinante --> [unos].
determinante --> [unas].
determinante --> [este].
determinante --> [esta].



pronombre --> preposicion, pronombre.
pronombre --> [yo].
pronombre --> [mi].


preposicion --> [a].


sustantivo --> [ambiente].
sustantivo --> [animales].
sustantivo --> [argumentacion].
sustantivo --> [arte].
sustantivo --> [automatizacion].
sustantivo --> [biologia].
sustantivo --> [ciencias].
sustantivo --> [cocina].
sustantivo --> [creatividad].
sustantivo --> [debate].
sustantivo --> [deporte].
sustantivo --> [dibujo].
sustantivo --> [educacion].
sustantivo --> [escritura].
sustantivo --> [fisica].
sustantivo --> [investigacion].
sustantivo --> [lectura].
sustantivo --> [leyes].
sustantivo --> [liderazgo].
sustantivo --> [literatura].
sustantivo --> [logica].
sustantivo --> [matematicas].
sustantivo --> [mecanica].
sustantivo --> [medio], [ambiente].
sustantivo --> [musica].
sustantivo --> [negocios].
sustantivo --> [personas].
sustantivo --> [pintura].
sustantivo --> [precision].
sustantivo --> [problemas].
sustantivo --> [programacion].
sustantivo --> [quimica].
sustantivo --> [retos].
sustantivo --> [salud].
sustantivo --> [seguridad].
sustantivo --> [sociales].
sustantivo --> [tecnologia].




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
verbo(positivo) --> [prefiero].
verbo(positivo) --> [amo].
verbo(positivo) --> [quiero].
verbo(positivo) --> [deseo].
verbo(positivo) --> [valoro].
verbo(positivo) --> [practico].
verbo(positivo) --> [estudio].
verbo(positivo) --> [dedico], [a].
verbo(positivo) --> [soy], [bueno], [en].
verbo(positivo) --> [soy], [buena], [en].
verbo(positivo) --> [tengo], [habilidad], [en].
verbo(positivo) --> [tengo], [talento], [en].
verbo(positivo) --> [siento], [atraccion], [por].
verbo(positivo) --> [motiva].
verbo(positivo) --> [divierte].
verbo(positivo) --> [divierten].
verbo(positivo) --> [divierte].
verbo(positivo) --> [disfruto], [mucho].
verbo(positivo) --> [amo], [mucho].
verbo(positivo) --> [apasiona], [mucho].

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
saludo --> [como], [estas].
saludo --> [hola], [que], [tal].
saludo --> [hola], [buenas].
saludo --> [muy], [buenos], [dias].
saludo --> [muy], [buenas], [tardes].
saludo --> [muy], [buenas], [noches].
saludo --> [bienvenido].
saludo --> [bienvenida].