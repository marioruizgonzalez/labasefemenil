select * from lbf_fair_play;

select * from lbf_goleo;

select count(*) from lbf_historical_stats;

select distinct temporada, torneo from lbf_historical_stats order by 1,2 asc ;

select * from lbf_participacion_menores;

select count(1) from lbf_tarjetas_club;

select * from lbf_tarjetas_club;

ALTER TABLE lbf_tarjetas_club ALTER COLUMN promedio_x_minutos TYPE NUMERIC(7,2);

select count(1) from lbf_tarjetas_jugadora;

select * from lbf_tarjetas_jugadora;

select distinct club from lbf_tarjetas_jugadora;

CREATE TABLE lbf_goleo_hist (
    temporada VARCHAR(20),
    torneo VARCHAR(20),
    pos INT,
    jugador VARCHAR(200),
    club VARCHAR(200),
    goles INT,
    mj INT
);


select distinct temporada, torneo from lbf_goleo_hist order by 1,2 asc ;

commit;

