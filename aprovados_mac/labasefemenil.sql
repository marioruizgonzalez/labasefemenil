create table lbf_goleo (
    temporada varchar(100), --año en que ocurrio el torneo
    torneo varchar(100),--torneo si fue apertura o clausura
    fase varchar(100),--si fue fase regular o fase final del torneo
    posicion varchar(10), --Posicion en la tabla de goleo
    jugador varchar(100), --nombre de la jugadora
    club varchar(100), --nombre del club
    goles int,--numeros de goles anotados por la jugadora
    mj int, --minutos jugados
    anota_cada varchar(20),--lapto en minutos en los que promedio anota la jugadora
    nacionalidad varchar(50)--nacionalidad de la jugadora 
);

create table lbf_goleo_hist (
    temporada varchar(100), --año en que ocurrio el torneo
    torneo varchar(100),--torneo si fue apertura o clausura
    pos varchar(10), --Posicion de la tabla goleadora
    jugador varchar(100), --nombre de la jugadora
    club varchar(100), --nombre del club
    goles int,--numeros de goles anotados por la jugadora
    mj int --minutos jugados

);

create table lbf_tarjetas_jugadora (
    temporada varchar(100),--año en que ocurrio el torneo
    torneo varchar(100),--torneo si fue apertura o clausura
    club varchar(100),--nombre del club
    idaflddrvd varchar(10),--id identificador del row
    nui varchar(10),--id identificador de la jugadora
    nombre varchar(100),--nombre de la jugadora
    ta int,--numero de targetas amarillas
    ta_reglamento int,-- no tomar en cuenta
    tr int,--numero de tarjetas rojas
    trpc int--no tomar en cuenta
);

create table lbf_tarjetas_club (
    temporada varchar(20) not null,--año en que ocurrio el torneo
    torneo varchar(20) not null,--torneo si fue apertura o clausura
    tipo varchar(20) not null,--si fue fase regular o fase final del torneo 
    tarjeta varchar(20) not null,--si es targeta amarilla o targeta roja
    club varchar(50) not null,--nombre del club
    total_tarjetas int not null,--total de targetas acomuladas en el torneo
    porcentaje_x_club numeric(5, 2) not null,--porcentaje de tarjetas por club 
    promedio_x_minutos numeric(5, 2) not null,--en promedio cada cuantos minutos obtienen una tarjeta
    promedio_x_partido numeric(5, 2) not null--numero de targetas en promedio por partido 
);

create table lbf_historical_stats (
    temporada varchar(20),--año en que ocurrio el torneo
    torneo varchar(20),--torneo si fue apertura o clausura
    posicion int,--Posicion de la jugadora dentro del campo
    club varchar(50),--nombre del club
    jj int,--juegos jugados
    jg int,--juegos ganados
    je int,--juegos empatados
    jp int,--juegos perdidos
    gf int,--goles a favor
    gc int,--goles en contra
    dif int,--diferencia de goles
    pts int,--puntos acomulados en la tabla
    jj2 int,--juegos jugados como local
    jg2 int,--juegos ganados como local
    je2 int,--juegos empatados como local
    jp2 int,--juegos perdidos como local
    gf2 int,--goles a favor como local
    gc2 int,--goles en contra como local
    dif2 int,--diferencia de goles como local
    pts2 int,--puntos acomulados en la tabla como local
    jj3 int,--juegos jugados como visita
    jg3 int,--juegos ganados como visita
    je3 int,--juegos empatados como visita
    jp3 int,--juegos perdidos como visita
    gf3 int,--goles a favor como visita
    gc3 int,--goles en contra como visita
    dif3 int,--diferencia de goles como visita
    pts3 int--puntos acomulados en la tabla como visita
);

create table lbf_fair_play (
    temporada varchar(100),--año en que ocurrio el torneo
    torneo varchar(100),--torneo si fue apertura o clausura
    club varchar(100),--nombre del club
    tarjeta_amarilla int,--numero de tarjetas amarillas obtenidas
    puntos_tarjeta_amarilla int,--puntos acomulados por sus targetas amarillas
    tarjeta_roja_x_segunda_amarilla int,--numero de tarjetas rojas por segunda amarilla
    puntos_tarjeta_roja_x_2da_amarilla int,--puntos acomulados por tarjeta roja debido a segunda amarilla
    tarjeta_roja_directa int,--numero de tarjetas rojas
    puntos_tarjeta_roja_directa int,--puntos acomulados por tarjetas rojas directas
    total_puntos int --puntos acomulados debido a su acomulacion de tarjetas en general
);

create table lbf_participacion_menores (
    temporada varchar(100),--año en que ocurrio el torneo
    torneo varchar(100),--torneo si fue apertura o clausura
    club varchar(50),--nombre del club
    menores_alineadas int,--numero de menores alineadas en el equipo
    minutos int,--minutos que se les permitio jugar
    menores_seleccionadas int,--no tomar en cuenta
    minutos_acumulados int,--no tomar en cuenta
    menores_que_acumularon int, --no tomar en cuenta
    minutos_acumulados_2 int,--minutos acomulados de alinear menores por equipo 
    minutos_al_reglamento int,--minutos acomulados segun el reglamento 
    minutos_por_cumplir varchar(20)--si complio el equipo con la regla de minutos a menores 
);
