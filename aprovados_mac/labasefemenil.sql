-- Table for "2-GoleoFaseFinal"
CREATE TABLE lbf_Goleo_Fase_Final (
    Pos VARCHAR(10),
    Jugador VARCHAR(100),
    Club VARCHAR(50),
    G INT,
    MJ INT,
    ANOTA_CADA VARCHAR(20),
    NACIONALIDAD VARCHAR(50)
);

-- Table for "America"
CREATE TABLE lbf_tarjetas_x_jugador (
    IDAFLDDRVD VARCHAR(10),
    NUI VARCHAR(10),
    NOMBRE VARCHAR(100),
    TA INT,
    TA_REGLAMENTO INT,
    TR INT,
    TRPC INT
);

-- Table for "1-EstHist_2024-2025_Clausura"
CREATE TABLE lbf_Historical_Stats (
    Temporada VARCHAR(20),
    Torneo VARCHAR(20),
    Pos INT,
    Club VARCHAR(50),
    JJ INT,
    JG INT,
    JE INT,
    JP INT,
    GF INT,
    GC INT,
    Dif INT,
    PTS INT,
    JJ2 INT,
    JG2 INT,
    JE2 INT,
    JP2 INT,
    GF2 INT,
    GC2 INT,
    Dif2 INT,
    PTS2 INT,
    JJ3 INT,
    JG3 INT,
    JE3 INT,
    JP3 INT,
    GF3 INT,
    GC3 INT,
    Dif3 INT,
    PTS3 INT
);

-- Table for "30-FairPlay"
CREATE TABLE lbf_Fair_Play (
    CLUB VARCHAR(50),
    TARJETA_AMARILLA INT,
    PUNTOS_TARJETA_AMARILLA INT,
    TARJETA_ROJA_X_SEGUNDA_AMARILLA INT,
    PUNTOS_TARJETA_ROJA_X_2DA_AMARILLA INT,
    TARJETA_ROJA_DIRECTA INT,
    PUNTOS_TARJETA_ROJA_DIRECTA INT,
    TOTAL_PUNTOS INT
);

-- Table for "44-ParticipacionMenores"
-- Cambiamos la segunda columna "Minutos_Acumulados" a otro nombre para evitar duplicados
CREATE TABLE lbf_Participacion_Menores (
    Club VARCHAR(50),
    Menores_Alineadas INT,
    Minutos INT,
    Menores_Seleccionadas INT,
    Minutos_Acumulados INT,
    Menores_que_acumularon INT,
    Minutos_Acumulados_2 INT,  -- <--- Se renombra aquí
    Minutos_al_Reglamento INT,
    Minutos_por_Cumplir VARCHAR(20)
);

CREATE TABLE lbf_Goleo_Temporada (
    Temporada VARCHAR(20),
    Torneo VARCHAR(20),
    Pos INT,
    Jugador VARCHAR(100),
    Club VARCHAR(50),
    G INT,
    MJ INT
);
