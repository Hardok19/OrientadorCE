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

carrera(ingenieria_quimica, 
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
    [sociales, cocina]).
    
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

carrera(periodismo, 
    [escritura, lectura, sociales, personas], 
    [quimica, biologia]).



% --- áreas base ---
sinonimo(debates, debate).
sinonimo(tecnologias, tecnologia).
sinonimo(programaciones, programacion).
sinonimo(biologias, biologia).
sinonimo(quimicas, quimica).
sinonimo(fisicas, fisica).
sinonimo(artes, arte).
sinonimo(musicas, musica).
sinonimo(dibujos, dibujo).
sinonimo(escrituras, escritura).
sinonimo(literaturas, literatura).
sinonimo(lecturas, lectura).

% --- personas / educación ---
sinonimo(personass, personas).      
sinonimo(educaciones, educacion).
sinonimo(ensenanzas, ensenanza).
sinonimo(comunidades, comunidad).
sinonimo(sociedades, sociedad).

% --- salud / ciencias de la vida ---         
sinonimo(animales, animales).        
sinonimo(problemas, problemas).      
sinonimo(soluciones, solucion).

% --- negocios / leyes / sociales ---
sinonimo(negocioss, negocios).       
sinonimo(leyess, leyes).             
sinonimo(sociales, sociales).        
sinonimo(argumentaciones, argumentacion).
sinonimo(liderazgos, liderazgo).

% --- ciencia / investigación ---
sinonimo(investigaciones, investigacion).
sinonimo(experimentos, investigacion).   
sinonimo(analisis, investigacion).       
sinonimo(descubrimientos, investigacion).

% --- automatización / mecánica ---
sinonimo(automatizaciones, automatizacion).
sinonimo(mecanicas, mecanica).
sinonimo(precisiones, precision).
sinonimo(seguridades, seguridad).

% --- creatividad / diseño ---
sinonimo(creatividades, creatividad).
sinonimo(disenos, dibujo).
sinonimo(bocetos, dibujo).
sinonimo(ilustraciones, arte).

% --- deportes / actividad ---
sinonimo(deportes, deporte).
sinonimo(ejercicios, problemas).   
sinonimo(actividades, deporte).
sinonimo(entrenamientos, deporte).

% --- cocina ---
sinonimo(cocinas, cocina).
sinonimo(gastronomias, cocina).
sinonimo(recetas, cocina).              
sinonimo(alimentos, cocina).             

% --- ambiente / ecología ---
sinonimo(ambientes, ambiente).
sinonimo(ecologias, biologia).
sinonimo(ecosistemas, ambiente).        
sinonimo(climas, ambiente).

% --- lógica / razonamiento ---
sinonimo(logicas, logica).
sinonimo(razonamientos, logica).
sinonimo(pensamientos, logica).
sinonimo(desafios, retos).              
sinonimo(retos, retos).                  

% términos de carreras (plurales frecuentes en conversación) 
sinonimo(ciencias, investigacion).
sinonimo(humanidades, lectura).
sinonimo(finanzas, negocios).            
sinonimo(normas, leyes).                
sinonimo(regulaciones, leyes).          
sinonimo(argumentos, argumentacion).    
sinonimo(equipos, liderazgo).     



% --- sinónimos de errores comunes de tipeo (para normalizar antes de parsear) ---
% AMBIENTE 
sinonimo(abiente,       ambiente).
sinonimo(ambiante,      ambiente).
sinonimo(ambente,       ambiente).
sinonimo(ambientte,     ambiente).
sinonimo(amviente,      ambiente).
sinonimo(ambinte,       ambiente).

% ANIMALES 
sinonimo(animlaes,      animales).
sinonimo(animaless,     animales).
sinonimo(animaels,      animales).
sinonimo(animles,       animales).
sinonimo(anmiales,      animales).
sinonimo(animales,      animales). % ya es plural, alias directo

% ARGUMENTACION 
sinonimo(argumantacion, argumentacion).
sinonimo(argumentaion,  argumentacion).
sinonimo(argumentcaion, argumentacion).
sinonimo(argumentacoin, argumentacion).
sinonimo(argmentacion,  argumentacion).
sinonimo(argumentacin,  argumentacion).
sinonimo(arqumentacion, argumentacion).

% ARTE 
sinonimo(atre,          arte).
sinonimo(arte,          arte).
sinonimo(aret,          arte).


% AUTOMATIZACION 
sinonimo(automatizaicon,  automatizacion).
sinonimo(automatizacoin,  automatizacion).
sinonimo(automatizaion,   automatizacion).
sinonimo(automtizacion,   automatizacion).
sinonimo(automatizacin,   automatizacion).
sinonimo(autamatizacion,  automatizacion).
sinonimo(automotizacion,  automatizacion).
sinonimo(automatisacion,  automatizacion). % s por z

% BIOLOGIA 
sinonimo(bilogia,       biologia).
sinonimo(biologa,       biologia).
sinonimo(biogolia,      biologia).
sinonimo(bioliga,       biologia).
sinonimo(biolgia,       biologia).
sinonimo(bilogia,       biologia).
sinonimo(bioolgia,      biologia).
sinonimo(biolgia,       biologia).
sinonimo(bioglia,       biologia).

% CIENCIAS 
sinonimo(ciencas,       investigacion).
sinonimo(cienciaas,     investigacion).
sinonimo(cienias,       investigacion).
sinonimo(siencias,      investigacion). % s por c
sinonimo(ciencis,       investigacion).
sinonimo(ciensias,      investigacion).

% COCINA 
sinonimo(coicna,        cocina).
sinonimo(cocnia,        cocina).
sinonimo(cocinna,       cocina).
sinonimo(cocnia,        cocina).
sinonimo(cosina,        cocina). % s por c (fonético)
sinonimo(cozina,        cocina). % z por c (fonético)

% CREATIVIDAD 
sinonimo(creativdad,    creatividad).
sinonimo(cratividad,    creatividad).
sinonimo(creativiad,    creatividad).
sinonimo(creativiidad,  creatividad).
sinonimo(creatiivdad,   creatividad).
sinonimo(creaitividad,  creatividad).
sinonimo(creatividaad,  creatividad).
sinonimo(cretividad,    creatividad).

% DEBATE 
sinonimo(debatte,       debate).
sinonimo(devate,        debate). % v por b (fonético)
sinonimo(debte,         debate).
sinonimo(debaet,        debate).
sinonimo(deabte,        debate).

% DEPORTE 
sinonimo(deprote,       deporte).
sinonimo(deportte,      deporte).
sinonimo(deporet,       deporte).
sinonimo(depopte,       deporte).
sinonimo(deportes,      deporte). % plural directo
sinonimo(deoppte,       deporte).
sinonimo(depote,        deporte).

% DIBUJO 
sinonimo(dibuho,        dibujo). % h por j (fonético)
sinonimo(dibugo,        dibujo). % g por j
sinonimo(dibuoj,        dibujo).
sinonimo(dibjo,         dibujo).
sinonimo(dibijo,        dibujo).

% EDUCACION 
sinonimo(educaion,      educacion).
sinonimo(educacoin,     educacion).
sinonimo(educacin,      educacion).
sinonimo(educasion,     educacion). % s por c (fonético)
sinonimo(edcuacion,     educacion).
sinonimo(educaacion,    educacion).

% ESCRITURA 
sinonimo(escritra,      escritura).
sinonimo(escritrua,     escritura).
sinonimo(escrirtura,    escritura).
sinonimo(escrtura,      escritura).
sinonimo(escritua,      escritura).
sinonimo(escriturra,    escritura).
sinonimo(escriturea,    escritura).

% FISICA 
sinonimo(fisca,         fisica).
sinonimo(fiisca,        fisica).
sinonimo(fisisca,       fisica).
sinonimo(fiscia,        fisica).
sinonimo(fiisica,       fisica).
sinonimo(fisicca,       fisica).
sinonimo(fisika,        fisica). % k por c (fonético)
sinonimo(phisica,       fisica). % ph por f (anglicismo)

% INVESTIGACION 
sinonimo(investigaion,   investigacion).
sinonimo(investigacoin,  investigacion).
sinonimo(investiagcion,  investigacion).
sinonimo(investigacin,   investigacion).
sinonimo(investigaicon,  investigacion).
sinonimo(invetsigacion,  investigacion).
sinonimo(investgacion,   investigacion).
sinonimo(investigasion,  investigacion). % s por c

% LECTURA 
sinonimo(lectrua,       lectura).
sinonimo(lecura,        lectura).
sinonimo(lecutra,       lectura).
sinonimo(lectrura,      lectura).
sinonimo(lecttura,      lectura).
sinonimo(letcura,       lectura).

% LEYES 
sinonimo(leyess,        leyes).
sinonimo(lleyes,        leyes).
sinonimo(leeys,         leyes).
sinonimo(leys,          leyes).

%  LIDERAZGO 
sinonimo(liderazco,     liderazgo). 
sinonimo(liderazago,    liderazgo).
sinonimo(liderazog,     liderazgo).
sinonimo(lidearazgo,    liderazgo).
sinonimo(liderazgoo,    liderazgo).
sinonimo(lidearsgo,     liderazgo).
sinonimo(lidarezgo,     liderazgo).

% LITERATURA 
sinonimo(litertura,     literatura).
sinonimo(literautra,    literatura).
sinonimo(lteratura,     literatura).
sinonimo(literatrua,    literatura).
sinonimo(literratura,   literatura).
sinonimo(literattura,   literatura).
sinonimo(litratura,     literatura).

% LOGICA 
sinonimo(logika,        logica). % k por c
sinonimo(lgoica,        logica).
sinonimo(loigca,        logica).
sinonimo(logca,         logica).
sinonimo(lgica,         logica).

% MATEMATICAS 
sinonimo(matematicass,  matematicas). % ya en bd.pl
sinonimo(mates,   matematicas).
sinonimo(mate,    matematicas).
sinonimo(matamaticas,   matematicas).
sinonimo(matematicaas,  matematicas).
sinonimo(matamticas,    matematicas).
sinonimo(matematca,     matematicas).
sinonimo(matematiacs,   matematicas).
sinonimo(matematicaes,  matematicas).
sinonimo(matmeaticas,   matematicas).
sinonimo(matemticas,    matematicas).
sinonimo(matematicqs,   matematicas). % q en lugar de a (teclado)
sinonimo(matematics,    matematicas). 

% MECANICA 
sinonimo(mecanika,      mecanica). % k por c
sinonimo(mecnaica,      mecanica).
sinonimo(mecaniica,     mecanica).
sinonimo(mecancica,     mecanica).
sinonimo(mcanica,       mecanica).
sinonimo(mecanicca,     mecanica).

% MEDIO AMBIENTE (como bloque) 
sinonimo(medioambiente,  ambiente).
sinonimo(medio_ambiente, ambiente).
sinonimo(medioambente,   ambiente).
sinonimo(medioambinte,   ambiente).
sinonimo(medioambiate,   ambiente).

% MUSICA
sinonimo(msuica,        musica).
sinonimo(mussica,       musica).
sinonimo(musiica,       musica).
sinonimo(muisca,        musica).
sinonimo(musiac,        musica).
sinonimo(muzica,        musica). % z por s (fonético)

% NEGOCIOS
sinonimo(negocio,       negocios). % singular
sinonimo(neogcios,      negocios).
sinonimo(negocois,      negocios).
sinonimo(negcoios,      negocios).
sinonimo(negosios,      negocios). % s por c (fonético)
sinonimo(negociosd,     negocios).
sinonimo(neogocio,      negocios).

% PERSONAS 
sinonimo(persona,       personas). % singular
sinonimo(pesona,        personas).
sinonimo(persna,        personas).
sinonimo(persone,        personas).
sinonimo(pesonas,       personas).
sinonimo(persnas,       personas).
sinonimo(presonas,      personas).
sinonimo(persoans,      personas).
sinonimo(persnoas,      personas).
sinonimo(personaes,     personas).

% PINTURA
sinonimo(pinttura,      pintura).
sinonimo(pntura,        pintura).
sinonimo(pinutra,       pintura).
sinonimo(pintua,        pintura).
sinonimo(pintrua,       pintura).
sinonimo(puntura,       pintura).

% PRECISION
sinonimo(presiion,      precision).
sinonimo(presioon,      precision).
sinonimo(precison,      precision).
sinonimo(presicion,     precision). % s por c (fonético)
sinonimo(precission,    precision).
sinonimo(precsion,      precision).
sinonimo(precisoin,     precision).

% PROBLEMAS
sinonimo(problema,      problemas). % singular
sinonimo(probemas,      problemas).
sinonimo(prblemas,      problemas).
sinonimo(problemass,    problemas).
sinonimo(problmes,      problemas).
sinonimo(problaems,     problemas).
sinonimo(prloblemas,    problemas).

% PROGRAMACION
sinonimo(programcion,   programacion).
sinonimo(programacin,   programacion).
sinonimo(porgramacion,  programacion).
sinonimo(programaicon,  programacion).
sinonimo(programacoin,  programacion).
sinonimo(progamacion,   programacion).
sinonimo(programasion,  programacion). % s por c
sinonimo(prgramacion,   programacion).
sinonimo(prograamcion,  programacion).

% QUIMICA 
sinonimo(quiica,        quimica).
sinonimo(qumica,        quimica).
sinonimo(qimica,        quimica).
sinonimo(quimca,        quimica).
sinonimo(quimmica,      quimica).
sinonimo(quimiica,      quimica).
sinonimo(quiimca,       quimica).
sinonimo(kimica,        quimica). 

% RETOS 
sinonimo(reto,          retos). % singular
sinonimo(retoss,        retos).
sinonimo(retos,         retos).
sinonimo(rteos,         retos).
sinonimo(reots,         retos).

% SALUD 
sinonimo(sald,          salud).
sinonimo(saldu,         salud).
sinonimo(saludd,        salud).
sinonimo(slaud,         salud).
sinonimo(salut,         salud). 
sinonimo(slaud,         salud).

% SEGURIDAD
sinonimo(seguriddad,    seguridad).
sinonimo(seguirdad,     seguridad).
sinonimo(seguirdad,     seguridad).
sinonimo(seguriadad,    seguridad).
sinonimo(seguridda,     seguridad).
sinonimo(segirudad,     seguridad).
sinonimo(sguridad,      seguridad).

%  SOCIALES 
sinonimo(social,        sociales). % singular
sinonimo(sociiales,     sociales).
sinonimo(socales,       sociales).
sinonimo(sociaels,      sociales).
sinonimo(sociales,      sociales).
sinonimo(sosciales,     sociales).
sinonimo(sociiales,     sociales).

% TECNOLOGIA 
sinonimo(tegnologia,    tecnologia). 
sinonimo(tecnologoia,   tecnologia).
sinonimo(tcnologia,     tecnologia). 
sinonimo(tecnolgia,     tecnologia).
sinonimo(tecnologiia,   tecnologia).
sinonimo(tecnologa,     tecnologia).
sinonimo(tecnoloiga,    tecnologia).
sinonimo(tecnologai,    tecnologia).
sinonimo(tecnoligia,    tecnologia).
sinonimo(tekhnologia,   tecnologia). 
sinonimo(tegnologoia,   tecnologia).


% SINONIMOS - Determinantes
sinonimo(sl, el).
sinonimo(ell, el).
sinonimo(le, el).
sinonimo(laa, la).
sinonimo(al, la).
sinonimo(lla, la).
sinonimo(lass, las).
sinonimo(lsa, las).
sinonimo(las, las).
sinonimo(un, un).
sinonimo(nu, un).
sinonimo(unn, un).
sinonimo(unaa, una).
sinonimo(uan, una).
sinonimo(nua, una).
sinonimo(lso, los).
sinonimo(ols, los).
sinonimo(loss, los).
sinonimo(unoss, unos).
sinonimo(uons, unos).
sinonimo(nuos, unos).
sinonimo(unass, unas).
sinonimo(unas, unas).
sinonimo(nuas, unas).
sinonimo(etse, este).
sinonimo(eset, este).
sinonimo(estee, este).
sinonimo(etsa, esta).
sinonimo(aest, esta).
sinonimo(estaa, esta).
sinonimo(sobr, sobre).
sinonimo(soble, sobre).
sinonimo(sobree, sobre).

% SINONIMOS - Pronombres
sinonimo(oy, yo).
sinonimo(yoo, yo).
sinonimo(yo, yo).
sinonimo(im, mi).
sinonimo(mii, mi).
sinonimo(mio, mi).

% SINONIMOS - Preposiciones
sinonimo(aa, a).
sinonimo(da, de).
sinonimo(ed, de).
sinonimo(dee, de).
sinonimo(pro, por).
sinonimo(prot, por).
sinonimo(porr, por).
sinonimo(ne, en).
sinonimo(enn, en).
sinonimo(een, en).
sinonimo(sobr, sobre).
sinonimo(soble, sobre).
sinonimo(sobree, sobre).
sinonimo(ocn, con).
sinonimo(cno, con).
sinonimo(conn, con).

% SINONIMOS - Verbos positivos
sinonimo(amos, amo).
sinonimo(amoo, amo).
sinonimo(mao, amo).
sinonimo(adorro, adoro).
sinonimo(odoro, adoro).
sinonimo(adoroo, adoro).
sinonimo(adorra, adora).
sinonimo(adoraa, adora).
sinonimo(facsina, fascina).
sinonimo(fasicna, fascina).
sinonimo(fascinaa, fascina).
sinonimo(fascinan, fascinan).
sinonimo(fasciman, fascinan).
sinonimo(fascimas, fascinan).
sinonimo(encata, encanta).
sinonimo(encnata, encanta).
sinonimo(encantaa, encanta).
sinonimo(encatan, encantan).
sinonimo(encnatan, encantan).
sinonimo(encantann, encantan).
sinonimo(gusat, gusta).
sinonimo(gsuta, gusta).
sinonimo(gustaa, gusta).
sinonimo(gustan, gustan).
sinonimo(gustann, gustan).
sinonimo(gsutan, gustan).
sinonimo(disfurto, disfruto).
sinonimo(disfrtuo, disfruto).
sinonimo(disfrutoo, disfruto).
sinonimo(disfutra, disfruta).
sinonimo(difruta, disfruta).
sinonimo(disfrutaa, disfruta).
sinonimo(disfrtar, disfrutar).
sinonimo(disfutar, disfrutar).
sinonimo(disfrutarr, disfrutar).
sinonimo(intersa, interesa).
sinonimo(ineresa, interesa).
sinonimo(interesaa, interesa).
sinonimo(interesan, interesan).
sinonimo(intersan, interesan).
sinonimo(interesann, interesan).
sinonimo(apasonia, apasiona).
sinonimo(apasonia, apasiona).
sinonimo(apasionaa, apasiona).
sinonimo(apasionan, apasionan).
sinonimo(apasonan, apasionan).
sinonimo(apasionann, apasionan).
sinonimo(prefiero, prefiero).
sinonimo(preifero, prefiero).
sinonimo(prefieroo, prefiero).
sinonimo(quiero, quiero).
sinonimo(querio, quiero).
sinonimo(quieroo, quiero).
sinonimo(deseo, deseo).
sinonimo(desoe, deseo).
sinonimo(deseoo, deseo).
sinonimo(valorro, valoro).
sinonimo(valoro, valoro).
sinonimo(valoroo, valoro).
sinonimo(pracitco, practico).
sinonimo(practicoo, practico).
sinonimo(estuido, estudio).
sinonimo(etudio, estudio).
sinonimo(estudioo, estudio).
sinonimo(motvia, motiva).
sinonimo(moitva, motiva).
sinonimo(motivaa, motiva).
sinonimo(divirete, divierte).
sinonimo(divietre, divierte).
sinonimo(diviertee, divierte).
sinonimo(diviertn, divierten).
sinonimo(divierteen, divierten).
sinonimo(divireten, divierten).
sinonimo(apernder, aprender).
sinonimo(apreder, aprender).
sinonimo(aprenderr, aprender).
sinonimo(resolevr, resolver).
sinonimo(reoslver, resolver).
sinonimo(resolverr, resolver).

% SINONIMOS - Verbos negativos
sinonimo(oido, odio).
sinonimo(odioo, odio).
sinonimo(oidoo, odio).
sinonimo(detetso, detesto).
sinonimo(detseto, detesto).
sinonimo(detestoo, detesto).
sinonimo(abomino, abomino).
sinonimo(aboimno, abomino).
sinonimo(abominoo, abomino).
sinonimo(aborrezco, aborrezco).
sinonimo(aborresco, aborrezco).
sinonimo(aborreczo, aborrezco).
sinonimo(desprecio, desprecio).
sinonimo(deprecio, desprecio).
sinonimo(despreico, desprecio).
sinonimo(evtio, evito).
sinonimo(evitoo, evito).
sinonimo(evtoo, evito).
sinonimo(aburre, aburre).
sinonimo(aburr, aburre).
sinonimo(aburree, aburre).
sinonimo(aburren, aburren).
sinonimo(aburrenn, aburren).
sinonimo(aburrne, aburren).
sinonimo(cansa, cansa).
sinonimo(cnasa, cansa).
sinonimo(cansaa, cansa).
sinonimo(cansan, cansan).
sinonimo(cansann, cansan).
sinonimo(cnasan, cansan).
sinonimo(desagada, desagrada).
sinonimo(desagrda, desagrada).
sinonimo(desagradaa, desagrada).
sinonimo(desagradan, desagradan).
sinonimo(desagradann, desagradan).
sinonimo(desagrdan, desagradan).
sinonimo(soporto, soporto).
sinonimo(soprto, soporto).
sinonimo(soportoo, soporto).
sinonimo(tloreo, tolero).
sinonimo(toelro, tolero).
sinonimo(toleroo, tolero).



% SINONIMOS - Corrección de errores tipográficos para saludos
% hola
sinonimo(hpla, hola).
sinonimo(hloa, hola).
sinonimo(ohal, hola).
sinonimo(hols, hola).
sinonimo(hoia, hola).
sinonimo(holaa, hola).
% buenas
sinonimo(buebas, buenas).
sinonimo(buenass, buenas).
sinonimo(buens, buenas).
sinonimo(buenaz, buenas).
sinonimo(benas, buenas).
% buenos
sinonimo(buenps, buenos).
sinonimo(buenoz, buenos).
sinonimo(buenis, buenos).
sinonimo(buenoss, buenos).
sinonimo(buenoa, buenos).
% hey
sinonimo(hei, hey).
sinonimo(heg, hey).
sinonimo(heey, hey).
sinonimo(hye, hey).
% saludos
sinonimo(salidos, saludos).
sinonimo(salufos, saludos).
sinonimo(saludoz, saludos).
sinonimo(saludoss, saludos).
sinonimo(saluods, saludos).
% ey
sinonimo(eyy, ey).
sinonimo(aey, ey).
% dias
sinonimo(dais, dias).
sinonimo(diaz, dias).
sinonimo(doas, dias).
sinonimo(diias, dias).
% tardes
sinonimo(tares, tardes).
sinonimo(tardez, tardes).
sinonimo(tardess, tardes).
sinonimo(tarads, tardes).
sinonimo(traeds, tardes).
% noches
sinonimo(nohces, noches).
sinonimo(ncohez, noches).
sinonimo(noche, noches).
sinonimo(nochess, noches).
sinonimo(nohes, noches).
% mananas
sinonimo(mamanas, mananas).
sinonimo(manana, mananas).
sinonimo(manans, mananas).
sinonimo(maanas, mananas).
% tal
sinonimo(tla, tal).
sinonimo(taal, tal).
% como
sinonimo(ocmo, como).
sinonimo(cmoo, como).
sinonimo(cmo, como).
sinonimo(comoo, como).
% buen
sinonimo(bune, buen).
sinonimo(buesn, buen).
sinonimo(bueen, buen).
% dia
sinonimo(dai, dia).
sinonimo(ddia, dia).
sinonimo(doa, dia).
% muy
sinonimo(myu, muy).
sinonimo(myy, muy).
sinonimo(muyy, muy).
% que
sinonimo(qeu, que).
sinonimo(qe, que).
sinonimo(quee, que).
sinonimo(qiue, que).
% hay
sinonimo(hya, hay).
sinonimo(hayy, hay).
sinonimo(hau, hay).
% pasa
sinonimo(psaa, pasa).
sinonimo(paas, pasa).
sinonimo(pasaa, pasa).
% onda
sinonimo(odna, onda).
sinonimo(ondaa, onda).
sinonimo(onnda, onda).