% bd.pl
% Base de datos del Orientador Vocacional

% carrera(Nombre, [Afinidades], [Antagonias])
carrera(ingenieria_computadores, 
    [tecnologia, matematicas, automatizacion, problemas], 
    [personas, arte]).

carrera(ingenieria_computacion, 
    [tecnologia, automatizacion, matematicas, logica], 
    [biologia, animales]).

carrera(medicina, 
    [biologia, quimica, problemas, salud],
    [tecnologia, automatizacion]).

carrera(inenieria_quimica, 
    [quimica, biologia, cocina, investigacion], 
    [sociales, leyes]).    

carrera(veterinaria, 
    [biologia, animales, problemas, salud],
    [tecnologia, automatizacion]).


carrera(ingenieria_ambiental, 
    [biologia, quimica, fisica, sociales],
    [tecnologia, automatizacion]).

carrera(derecho, 
    [sociales, lectura, debate, argumentacion], 
    [matematicas, tecnologia]).

carrera(diseno_grafico, 
    [arte, creatividad, dibujo, tecnologia], 
    [matematicas, biologia]).

carrera(filosofia, 
    [lectura, problemas, sociales, escritura], 
    [negocios, programacion]).
    
carrera(ingenieria_electrica, 
    [matematicas, fisica, tecnologia, precision], 
    [sociales, arte]).
    
carrera(arquitectura_urbanismo, 
    [arte, dibujo, matematicas, creatividad], 
    [salud, quimica]).

carrera(ingenieria_biotecnologia, 
    [biologia, quimica, tecnologia, investigacion], 
    [sociales, leyes]).

carrera(ingenieria_mantenimiento_industrial, 
    [fisica, mecanica, problemas, tecnologia], 
    [lectura, arte]).

carrera(administracion_empresas, 
    [negocios, matematicas, liderazgo, sociales], 
    [biologia, dibujo]).

carrera(ciencias_policiales, 
    [sociales, leyes, seguridad, personas], 
    [arte, creatividad]).

carrera(educacion_general_basica, 
    [personas, educacion, sociales, lectura], 
    [tecnologia, fisica]).




% matematicas
sinonimo(mates, matematicas).
sinonimo(mate, matematicas).
sinonimo(calculo, matematicas).
sinonimo(algebra, matematicas).
sinonimo(numeros, matematicas).
sinonimo(aritmetica, matematicas).
sinonimo(estadistica, matematicas).

% tecnologia
sinonimo(computacion, tecnologia).
sinonimo(computo, tecnologia).
sinonimo(informatica, tecnologia).
sinonimo(computadoras, tecnologia).
sinonimo(sistemas, tecnologia).
sinonimo(electronica, tecnologia).
sinonimo(internet, tecnologia).
sinonimo(redes, tecnologia).

% programacion
sinonimo(codigo, programacion).
sinonimo(codificacion, programacion).
sinonimo(software, programacion).
sinonimo(desarrollo, programacion).
sinonimo(apps, programacion).
sinonimo(aplicaciones, programacion).

% biologia
sinonimo(bio, biologia).
sinonimo(seres, biologia).
sinonimo(vida, biologia).
sinonimo(naturaleza, biologia).
sinonimo(plantas, biologia).
sinonimo(celulas, biologia).

% quimica
sinonimo(quimi, quimica).
sinonimo(reacciones, quimica).
sinonimo(moleculas, quimica).
sinonimo(elementos, quimica).
sinonimo(laboratorio, quimica).

% fisica
sinonimo(movimiento, fisica).
sinonimo(energia, fisica).
sinonimo(fuerzas, fisica).
sinonimo(termodinamica, fisica).

% arte
sinonimo(artes, arte).
sinonimo(ilustracion, arte).
sinonimo(escultura, arte).
sinonimo(mural, arte).
sinonimo(ceramica, arte).
sinonimo(artesania, arte).

% musica
sinonimo(musica, musica).
sinonimo(canto, musica).
sinonimo(instrumentos, musica).
sinonimo(guitarra, musica).
sinonimo(piano, musica).
sinonimo(composicion, musica).
sinonimo(ritmo, musica).

% dibujo / pintura
sinonimo(ilustrar, dibujo).
sinonimo(boceto, dibujo).
sinonimo(trazos, dibujo).
sinonimo(acuarela, pintura).
sinonimo(oleo, pintura).
sinonimo(lienzo, pintura).
sinonimo(colores, pintura).

% escritura / literatura
sinonimo(redaccion, escritura).
sinonimo(textos, escritura).
sinonimo(cuentos, literatura).
sinonimo(novelas, literatura).
sinonimo(poesia, literatura).
sinonimo(libros, literatura).
sinonimo(lectura, literatura).

% personas / educacion / ensenanza
sinonimo(gente, personas).
sinonimo(comunidad, personas).
sinonimo(sociedad, personas).
sinonimo(ninos, educacion).
sinonimo(estudiantes, educacion).
sinonimo(ensenanza, educacion).
sinonimo(docencia, ensenanza).
sinonimo(clases, ensenanza).
sinonimo(escuela, ensenanza).

% salud
sinonimo(medicina, salud).
sinonimo(medico, salud).
sinonimo(enfermeria, salud).
sinonimo(hospitales, salud).
sinonimo(bienestar, salud).
sinonimo(cuerpo, salud).

% deporte
sinonimo(ejercicio, deporte).
sinonimo(atletismo, deporte).
sinonimo(futbol, deporte).
sinonimo(natacion, deporte).
sinonimo(entrenamiento, deporte).
sinonimo(actividad, deporte).

% negocios
sinonimo(empresa, negocios).
sinonimo(emprendimiento, negocios).
sinonimo(finanzas, negocios).
sinonimo(economia, negocios).
sinonimo(administracion, negocios).
sinonimo(comercio, negocios).
sinonimo(mercadeo, negocios).

% leyes
sinonimo(derecho, leyes).
sinonimo(justicia, leyes).
sinonimo(normas, leyes).
sinonimo(regulaciones, leyes).
sinonimo(abogacia, leyes).

% cocina
sinonimo(gastronomia, cocina).
sinonimo(recetas, cocina).
sinonimo(alimentos, cocina).
sinonimo(chef, cocina).
sinonimo(reposteria, cocina).

% investigacion
sinonimo(ciencia, investigacion).
sinonimo(experimentos, investigacion).
sinonimo(analisis, investigacion).
sinonimo(descubrimientos, investigacion).
sinonimo(estudio, investigacion).

% ambiente / medio ambiente
sinonimo(ecologia, ambiente).
sinonimo(ecosistemas, ambiente).
sinonimo(conservacion, ambiente).
sinonimo(medioambiente, ambiente).
sinonimo(clima, ambiente).
sinonimo(fauna, animales).
sinonimo(mascotas, animales).
sinonimo(zoologia, animales).

% logica / problemas / retos
sinonimo(razonamiento, logica).
sinonimo(pensamiento, logica).
sinonimo(desafios, retos).
sinonimo(obstaculos, retos).
sinonimo(ejercicios, problemas).
sinonimo(solucion, problemas).

% liderazgo / debate / argumentacion
sinonimo(gestion, liderazgo).
sinonimo(direccion, liderazgo).
sinonimo(equipos, liderazgo).
sinonimo(discusion, debate).
sinonimo(oratoria, debate).
sinonimo(dialogo, debate).
sinonimo(argumentos, argumentacion).
sinonimo(convencer, argumentacion).

% automatizacion / mecanica / precision / seguridad
sinonimo(robotica, automatizacion).
sinonimo(maquinas, automatizacion).
sinonimo(motores, mecanica).
sinonimo(herramientas, mecanica).
sinonimo(exactitud, precision).
sinonimo(detalle, precision).
sinonimo(proteccion, seguridad).
sinonimo(ciberseguridad, seguridad).
sinonimo(riesgos, seguridad).

% plurales



