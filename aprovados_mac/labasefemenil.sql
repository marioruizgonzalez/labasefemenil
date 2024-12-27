CREATE DATABASE SoccerAnalytics;

USE SoccerAnalytics;

-- Table for "2-GoleoFaseFinal"
CREATE TABLE GoleoFaseFinal (
    Position VARCHAR(10),
    Player VARCHAR(100),
    Club VARCHAR(50),
    Goals INT,
    MinutesPlayed INT,
    ScoringFrequency VARCHAR(20),
    Nationality VARCHAR(50)
);

-- Table for "2-GoleoFaseFinal2"
CREATE TABLE GoleoFaseFinal2 (
    Position VARCHAR(10),
    Player VARCHAR(100),
    Club VARCHAR(50),
    Goals INT,
    MinutesPlayed INT,
    ScoringFrequency VARCHAR(20),
    Nationality VARCHAR(50)
);

-- Table for "America"
CREATE TABLE AmericaStats (
    PlayerID VARCHAR(10),
    NUI VARCHAR(10),
    Name VARCHAR(100),
    YellowCards INT,
    YellowCardsRegulation INT,
    RedCards INT,
    RedCardsPC INT
);

-- Table for "1-EstHist_2024-2025_Clausura"
CREATE TABLE HistoricalStats (
    Season VARCHAR(20),
    Tournament VARCHAR(20),
    Position INT,
    Team VARCHAR(50),
    Column5 INT,
    Column6 INT,
    Column7 INT,
    Column8 INT,
    Column9 INT,
    Column10 INT,
    Column19 INT,
    Column20 INT,
    Column21 INT,
    Column22 INT,
    Column23 INT,
    Column24 INT,
    Column25 INT,
    Column26 INT,
    Column27 INT,
    Column28 INT
);

-- Table for "30-FairPlay"
CREATE TABLE FairPlay (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Team VARCHAR(50),
    Column2 INT,
    Column3 INT,
    Column4 INT,
    Column5 INT,
    Column6 INT,
    Column7 INT,
    Column8 INT
);

-- Table for "44-ParticipacionMenores"
CREATE TABLE ParticipacionMenores (
    Team VARCHAR(50),
    PlayersUnderAge INT,
    MinutesUnderAge INT,
    ExceededCount INT,
    ExceededMinutes INT,
    TotalPlayersUnderAge INT,
    TotalMinutesUnderAge INT,
    RequiredMinutes INT,
    Status VARCHAR(20)
);
