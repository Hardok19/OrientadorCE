


inicio :-
    pregunta1,
    write(" "),
    read_line_to_string(user_input, Input),
    write('Tu respuesta fue: '), 
    write(Input).





pregunta1 :-
    write('Hola, entiendo que la tarea de buscar una carrera es difcil. Estamos aquí para ayudarte!
    ').
    




noentiende :-
    write('No entiendo tu respuesta, puedes darme m�s informaci�n?').






:- initialization(inicio).
