create table lbf_goleo (
    temporada varchar(100),
    torneo varchar(100),
    fase varchar(100),
    posicion varchar(10),
    jugador varchar(100),
    club varchar(100),
    goles int,
    mj int,
    anota_cada varchar(20),
    nacionalidad varchar(50)
);

create table lbf_tarjetas_x_jugadora (
    temporada varchar(100),
    torneo varchar(100),
    club varchar(100),
    idaflddrvd varchar(10),
    nui varchar(10),
    nombre varchar(100),
    ta int,
    ta_reglamento int,
    tr int,
    trpc int
);

create table lbf_tarjetas_temporada (
    temporada varchar(20) not null,
    torneo varchar(20) not null,
    tipo varchar(20) not null,
    tarjeta varchar(20) not null,
    club varchar(50) not null,
    total_tarjetas int not null,
    porcentaje_x_club numeric(5, 2) not null,
    promedio_x_minutos numeric(5, 2) not null,
    promedio_x_partido numeric(5, 2) not null
);

create table lbf_historical_stats (
    temporada varchar(20),
    torneo varchar(20),
    posicion int,
    club varchar(50),
    jj int,
    jg int,
    je int,
    jp int,
    gf int,
    gc int,
    dif int,
    pts int,
    jj2 int,
    jg2 int,
    je2 int,
    jp2 int,
    gf2 int,
    gc2 int,
    dif2 int,
    pts2 int,
    jj3 int,
    jg3 int,
    je3 int,
    jp3 int,
    gf3 int,
    gc3 int,
    dif3 int,
    pts3 int
);

create table lbf_fair_play (
    temporada varchar(100),
    torneo varchar(100),
    club varchar(100),
    tarjeta_amarilla int,
    puntos_tarjeta_amarilla int,
    tarjeta_roja_x_segunda_amarilla int,
    puntos_tarjeta_roja_x_2da_amarilla int,
    tarjeta_roja_directa int,
    puntos_tarjeta_roja_directa int,
    total_puntos int
);

create table lbf_participacion_menores (
    temporada varchar(100),
    torneo varchar(100),
    club varchar(50),
    menores_alineadas int,
    minutos int,
    menores_seleccionadas int,
    minutos_acumulados int,
    menores_que_acumularon int,
    minutos_acumulados_2 int,  
    minutos_al_reglamento int,
    minutos_por_cumplir varchar(20)
);
