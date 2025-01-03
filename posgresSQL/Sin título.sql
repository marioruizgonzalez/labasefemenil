--
-- PostgreSQL database dump
--

-- Dumped from database version 14.15 (Homebrew)
-- Dumped by pg_dump version 15.2

-- Started on 2025-01-03 16:34:11 CST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: marioruiz
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO marioruiz;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 213 (class 1259 OID 16419)
-- Name: lbf_fair_play; Type: TABLE; Schema: public; Owner: labasefemenil
--

CREATE TABLE public.lbf_fair_play (
    temporada character varying(100),
    torneo character varying(100),
    club character varying(100),
    tarjeta_amarilla integer,
    puntos_tarjeta_amarilla integer,
    tarjeta_roja_x_segunda_amarilla integer,
    puntos_tarjeta_roja_x_2da_amarilla integer,
    tarjeta_roja_directa integer,
    puntos_tarjeta_roja_directa integer,
    total_puntos integer
);


ALTER TABLE public.lbf_fair_play OWNER TO labasefemenil;

--
-- TOC entry 209 (class 1259 OID 16405)
-- Name: lbf_goleo; Type: TABLE; Schema: public; Owner: labasefemenil
--

CREATE TABLE public.lbf_goleo (
    temporada character varying(100),
    torneo character varying(100),
    fase character varying(100),
    posicion character varying(10),
    jugador character varying(100),
    club character varying(100),
    goles integer,
    mj integer,
    anota_cada character varying(20),
    nacionalidad character varying(50)
);


ALTER TABLE public.lbf_goleo OWNER TO labasefemenil;

--
-- TOC entry 215 (class 1259 OID 16429)
-- Name: lbf_goleo_hist; Type: TABLE; Schema: public; Owner: labasefemenil
--

CREATE TABLE public.lbf_goleo_hist (
    temporada character varying(20),
    torneo character varying(20),
    pos integer,
    jugador character varying(200),
    club character varying(200),
    goles integer,
    mj integer
);


ALTER TABLE public.lbf_goleo_hist OWNER TO labasefemenil;

--
-- TOC entry 212 (class 1259 OID 16416)
-- Name: lbf_historical_stats; Type: TABLE; Schema: public; Owner: labasefemenil
--

CREATE TABLE public.lbf_historical_stats (
    temporada character varying(20),
    torneo character varying(20),
    posicion integer,
    club character varying(50),
    jj integer,
    jg integer,
    je integer,
    jp integer,
    gf integer,
    gc integer,
    dif integer,
    pts integer,
    jj2 integer,
    jg2 integer,
    je2 integer,
    jp2 integer,
    gf2 integer,
    gc2 integer,
    dif2 integer,
    pts2 integer,
    jj3 integer,
    jg3 integer,
    je3 integer,
    jp3 integer,
    gf3 integer,
    gc3 integer,
    dif3 integer,
    pts3 integer
);


ALTER TABLE public.lbf_historical_stats OWNER TO labasefemenil;

--
-- TOC entry 214 (class 1259 OID 16422)
-- Name: lbf_participacion_menores; Type: TABLE; Schema: public; Owner: labasefemenil
--

CREATE TABLE public.lbf_participacion_menores (
    temporada character varying(100),
    torneo character varying(100),
    club character varying(50),
    menores_alineadas integer,
    minutos integer,
    menores_seleccionadas integer,
    minutos_acumulados integer,
    menores_que_acumularon integer,
    minutos_acumulados_2 integer,
    minutos_al_reglamento integer,
    minutos_por_cumplir character varying(20)
);


ALTER TABLE public.lbf_participacion_menores OWNER TO labasefemenil;

--
-- TOC entry 211 (class 1259 OID 16413)
-- Name: lbf_tarjetas_club; Type: TABLE; Schema: public; Owner: labasefemenil
--

CREATE TABLE public.lbf_tarjetas_club (
    temporada character varying(20) NOT NULL,
    torneo character varying(20) NOT NULL,
    tipo character varying(20) NOT NULL,
    tarjeta character varying(20) NOT NULL,
    club character varying(50) NOT NULL,
    total_tarjetas integer NOT NULL,
    porcentaje_x_club numeric(5,2) NOT NULL,
    promedio_x_minutos numeric(7,2) NOT NULL,
    promedio_x_partido numeric(5,2) NOT NULL
);


ALTER TABLE public.lbf_tarjetas_club OWNER TO labasefemenil;

--
-- TOC entry 210 (class 1259 OID 16410)
-- Name: lbf_tarjetas_jugadora; Type: TABLE; Schema: public; Owner: labasefemenil
--

CREATE TABLE public.lbf_tarjetas_jugadora (
    temporada character varying(100),
    torneo character varying(100),
    club character varying(100),
    idaflddrvd character varying(10),
    nui character varying(10),
    nombre character varying(100),
    ta integer,
    ta_reglamento integer,
    tr integer,
    trpc integer
);


ALTER TABLE public.lbf_tarjetas_jugadora OWNER TO labasefemenil;

--
-- TOC entry 3682 (class 0 OID 16419)
-- Dependencies: 213
-- Data for Name: lbf_fair_play; Type: TABLE DATA; Schema: public; Owner: labasefemenil
--

COPY public.lbf_fair_play (temporada, torneo, club, tarjeta_amarilla, puntos_tarjeta_amarilla, tarjeta_roja_x_segunda_amarilla, puntos_tarjeta_roja_x_2da_amarilla, tarjeta_roja_directa, puntos_tarjeta_roja_directa, total_puntos) FROM stdin;
2024-2025	Apertura	 America	18	18	0	0	1	3	21
2024-2025	Apertura	 Rayadas	22	22	1	3	0	0	25
2024-2025	Apertura	 Atlas	23	23	1	3	0	0	26
2024-2025	Apertura	 Cruz Azul	17	17	2	6	1	3	26
2024-2025	Apertura	 Guadalajara	29	29	0	0	0	0	29
2024-2025	Apertura	 Tigres	28	28	0	0	1	3	31
2024-2025	Apertura	 Pumas	29	29	1	3	0	0	32
2024-2025	Apertura	 Santos Laguna	29	29	1	3	0	0	32
2024-2025	Apertura	 Tijuana	30	30	0	0	1	3	33
2024-2025	Apertura	 FC Juarez	26	26	2	6	1	3	35
2024-2025	Apertura	 Atletico de San Luis	36	36	0	0	0	0	36
2024-2025	Apertura	 Mazatlan FC	27	27	2	6	1	3	36
2024-2025	Apertura	 Queretaro	34	34	1	3	0	0	37
2024-2025	Apertura	 Puebla	32	32	2	6	0	0	38
2024-2025	Apertura	 Leon	32	32	2	6	1	3	41
2024-2025	Apertura	 Pachuca	40	40	0	0	1	3	43
2024-2025	Apertura	 Toluca	35	35	1	3	2	6	44
2024-2025	Apertura	 Necaxa	38	38	0	0	3	9	47
\.


--
-- TOC entry 3678 (class 0 OID 16405)
-- Dependencies: 209
-- Data for Name: lbf_goleo; Type: TABLE DATA; Schema: public; Owner: labasefemenil
--

COPY public.lbf_goleo (temporada, torneo, fase, posicion, jugador, club, goles, mj, anota_cada, nacionalidad) FROM stdin;
2024-2025	Apertura	 Regular	1	Verónica Charlyn Corral	Pachuca	18	1530	85.00 min	Mexicano
2024-2025	Apertura	 Regular	2	Aisha Keshy Solórzano	Tijuana	16	1385	86.56 min	Guatemalteco
2024-2025	Apertura	 Regular	3	Lizbeth Jacqueline Ovalle	Tigres	15	1251	83.40 min	Mexicano
2024-2025	Apertura	 Regular	4	Kiana Angélica Palacios	América	13	1141	87.77 min	Mexicano
2024-2025	Apertura	 Regular	5	Alicia Cervantes	Guadalajara	11	1490	135.45 min	Mexicano
2024-2025	Apertura	 Regular	6	Stephanie Mariana Ribeiro	Pumas	11	1033	93.91 min	Estadounidense
2024-2025	Apertura	 Regular	7	Sarah Jacquelyn Luebbert	América	10	1113	111.30 min	Estadounidense
2024-2025	Apertura	 Regular	8	Christina Marie Burkenroad	Rayadas	9	801	89.00 min	Mexicano
2024-2025	Apertura	 Regular	9	Chinwendu Verónica Ihezuo	Pachuca	9	1073	119.22 min	Nigeriano
2024-2025	Apertura	 Regular	10	María Paula Salas	Atlas	9	1211	134.56 min	Costarricense
2024-2025	Apertura	 Regular	11	Mariel Román	Toluca	8	1278	159.75 min	Mexicano
2024-2025	Apertura	 Regular	12	Jasmine Alexis Casarez	FC Juárez	7	1077	153.86 min	Mexicano
2024-2025	Apertura	 Regular	13	Dania Nicole Pérez	Rayadas	6	959	159.83 min	Mexicano
2024-2025	Apertura	 Regular	14	Michaela Batya Bisi Abam	Toluca	6	1084	180.67 min	Estadounidense
2024-2025	Apertura	 Regular	15	Cinthya Peraza	Toluca	6	1417	236.17 min	Mexicano
2024-2025	Apertura	 Regular	16	Enekia Kasonga Lunyamila	Mazatlán FC	6	1067	177.83 min	Tanzano
2024-2025	Apertura	 Regular	17	Lucía García	Rayadas	5	732	146.40 min	Español
2024-2025	Apertura	 Regular	18	Scarlett Nefer Camberos	América	5	758	151.60 min	Mexicano
2024-2025	Apertura	 Regular	19	Irene Guerrero	América	5	1209	241.80 min	Español
2024-2025	Apertura	 Regular	20	Aerial Lynndonna Chavarin	Pumas	5	1158	231.60 min	Estadounidense
2024-2025	Apertura	 Regular	21	Edna Fabiola Santamaria	Querétaro	5	1258	251.60 min	Mexicano
2024-2025	Apertura	 Regular	22	Marcia Paola García	Atlas	5	774	154.80 min	Mexicano
2024-2025	Apertura	 Regular	23	Ana Lucia Martínez	Rayadas	4	662	165.50 min	Guatemalteco
2024-2025	Apertura	 Regular	24	Chrestinah Thembi Kgatlana	Tigres	4	1010	252.50 min	Sudafricano
2024-2025	Apertura	 Regular	25	Dayana Milan Martin	FC Juárez	4	370	92.50 min	Estadounidense
2024-2025	Apertura	 Regular	26	Janelly Farias	FC Juárez	4	1209	302.25 min	Mexicano
2024-2025	Apertura	 Regular	27	Adriana Iturbide	Guadalajara	4	459	114.75 min	Mexicano
2024-2025	Apertura	 Regular	28	Gabriela Valenzuela	Guadalajara	4	1191	297.75 min	Mexicano
2024-2025	Apertura	 Regular	29	Deneisha Selena Blackwood	Pumas	4	1354	338.50 min	Jamaiquino
2024-2025	Apertura	 Regular	30	Wendis Jhoana Cabrera	Querétaro	4	610	152.50 min	Colombiano
2024-2025	Apertura	 Regular	31	Dalia Isabel Molina	Cruz Azul	4	1261	315.25 min	Mexicano
2024-2025	Apertura	 Regular	32	María Fernanda Sánchez	Atlético de San Luis	4	1310	327.50 min	Mexicano
2024-2025	Apertura	 Regular	33	Allison Rose Veloz	Necaxa	4	1182	295.50 min	Estadounidense
2024-2025	Apertura	 Regular	34	Jermaine Seoposenwe	Rayadas	3	683	227.67 min	Sudafricano
2024-2025	Apertura	 Regular	35	Ana Inés Costa Mendes	Tigres	3	543	181.00 min	Portugués
2024-2025	Apertura	 Regular	36	Alison Hecnary González	Tigres	3	669	223.00 min	Mexicano
2024-2025	Apertura	 Regular	37	Jennifer Hermoso	Tigres	3	712	237.33 min	Español
2024-2025	Apertura	 Regular	38	Priscila Flor Da Silva	América	3	315	105.00 min	Brasileño
2024-2025	Apertura	 Regular	39	María Natalia Mauleon	América	3	438	146.00 min	Mexicano
2024-2025	Apertura	 Regular	40	Angelique Montserrat Saldivar	América	3	508	169.33 min	Mexicano
2024-2025	Apertura	 Regular	41	Aylin Ariana Aviléz	América	3	524	174.67 min	Mexicano
2024-2025	Apertura	 Regular	42	Karen Irasema Luna	América	3	1222	407.33 min	Mexicano
2024-2025	Apertura	 Regular	43	Grace Asantewaa	FC Juárez	3	1207	402.33 min	Ghanés
2024-2025	Apertura	 Regular	44	Annia Stephany Mejía	FC Juárez	3	1347	449.00 min	Mexicano
2024-2025	Apertura	 Regular	45	Christian Carolina Jaramillo	Guadalajara	3	907	302.33 min	Mexicano
2024-2025	Apertura	 Regular	46	Dorian Montserrat Hernández	Guadalajara	3	1015	338.33 min	Mexicano
2024-2025	Apertura	 Regular	47	Sindia Anahi Arteaga	Pumas	3	675	225.00 min	Mexicano
2024-2025	Apertura	 Regular	48	Amandine Henry	Toluca	3	634	211.33 min	Francés
2024-2025	Apertura	 Regular	49	Brenda Woch Da Graca	Toluca	3	1296	432.00 min	Brasileño
2024-2025	Apertura	 Regular	50	Daniela Espinosa	Tijuana	3	820	273.33 min	Mexicano
2024-2025	Apertura	 Regular	51	Mayra Alejandra Pelayo-bernal	Tijuana	3	1088	362.67 min	Mexicano
2024-2025	Apertura	 Regular	52	Dulce Maria Alvarado	Querétaro	3	402	134.00 min	Mexicano
2024-2025	Apertura	 Regular	53	Solange Lemos	Querétaro	3	1468	489.33 min	Uruguayo
2024-2025	Apertura	 Regular	54	Ximena Elizabeth Rios	Cruz Azul	3	909	303.00 min	Mexicano
2024-2025	Apertura	 Regular	55	Danielle Marie Fuentes	Cruz Azul	3	1163	387.67 min	Estadounidense
2024-2025	Apertura	 Regular	56	Lizbeth Ángeles	León	3	940	313.33 min	Mexicano
2024-2025	Apertura	 Regular	57	María Cristina Montaño	Mazatlán FC	3	1382	460.67 min	Mexicano
2024-2025	Apertura	 Regular	58	Sandra Nabweteme	Santos Laguna	3	296	98.67 min	Ugandés
2024-2025	Apertura	 Regular	59	Katty Martínez	Rayadas	2	614	307.00 min	Mexicano
2024-2025	Apertura	 Regular	60	Diana Laura García	Rayadas	2	1031	515.50 min	Mexicano
2024-2025	Apertura	 Regular	61	Rebeca Bernal	Rayadas	2	1210	605.00 min	Mexicano
2024-2025	Apertura	 Regular	62	Tanna Sánchez	Rayadas	2	1247	623.50 min	Mexicano
2024-2025	Apertura	 Regular	63	Maricarmen Reyes	Tigres	2	840	420.00 min	Mexicano
2024-2025	Apertura	 Regular	64	Sandra Stephany Mayor	Tigres	2	1087	543.50 min	Mexicano
2024-2025	Apertura	 Regular	65	Nicolette Andrea Hernández	América	2	841	420.50 min	Mexicano
2024-2025	Apertura	 Regular	66	Kimberly Vanessa Rodríguez	América	2	849	424.50 min	Mexicano
2024-2025	Apertura	 Regular	67	Nina Dominique Nicosia	Pachuca	2	475	237.50 min	Mexicano
2024-2025	Apertura	 Regular	68	Mónica Ocampo	Pachuca	2	734	367.00 min	Mexicano
2024-2025	Apertura	 Regular	69	Ohale Osinachi	Pachuca	2	1253	626.50 min	Nigeriano
2024-2025	Apertura	 Regular	70	Prisca Chilufya	FC Juárez	2	1003	501.50 min	Zambiano
2024-2025	Apertura	 Regular	71	Liliana Mercado	FC Juárez	2	1134	567.00 min	Mexicano
2024-2025	Apertura	 Regular	72	Karime Abud	FC Juárez	2	1448	724.00 min	Mexicano
2024-2025	Apertura	 Regular	73	Esbeydi Viridiana Salazar	Guadalajara	2	1112	556.00 min	Mexicano
2024-2025	Apertura	 Regular	74	Kinberly Paloma Guzmán	Guadalajara	2	1321	660.50 min	Mexicano
2024-2025	Apertura	 Regular	75	Laura Herrera	Pumas	2	530	265.00 min	Mexicano
2024-2025	Apertura	 Regular	76	Alejandra Guerrero	Pumas	2	1091	545.50 min	Mexicano
2024-2025	Apertura	 Regular	77	Paola Del Carmen Villamizar	Tijuana	2	733	366.50 min	Venezolano
2024-2025	Apertura	 Regular	78	Mónica Rose Alvarado	Tijuana	2	1064	532.00 min	Mexicano
2024-2025	Apertura	 Regular	79	Bianca Esther Mora	Tijuana	2	1153	576.50 min	Mexicano
2024-2025	Apertura	 Regular	80	Emily Loriana Flores	Querétaro	2	1268	634.00 min	Costarricense
2024-2025	Apertura	 Regular	81	Alondra Karime Camargo	Querétaro	2	1530	765.00 min	Mexicano
2024-2025	Apertura	 Regular	82	Kayla Laurynn Fernandez	Atlas	2	369	184.50 min	Mexicano
2024-2025	Apertura	 Regular	83	Brenda Damaris Ceren	Atlas	2	1401	700.50 min	Salvadoreño
2024-2025	Apertura	 Regular	84	María Fernanda Daniela Pérez	Atlas	2	1530	765.00 min	Mexicano
2024-2025	Apertura	 Regular	85	Sarah Anne Mary Huchet	Cruz Azul	2	607	303.50 min	Francés
2024-2025	Apertura	 Regular	86	Ana Rosa García	Cruz Azul	2	780	390.00 min	Mexicano
2024-2025	Apertura	 Regular	87	Renata Fernanda Huerta	Cruz Azul	2	873	436.50 min	Mexicano
2024-2025	Apertura	 Regular	88	Danya Jasmin Gutiérrrez	Cruz Azul	2	902	451.00 min	Mexicano
2024-2025	Apertura	 Regular	89	Edith Deyanira Carmona	Cruz Azul	2	1417	708.50 min	Mexicano
2024-2025	Apertura	 Regular	90	Valeria Valdez	Cruz Azul	2	1529	764.50 min	Mexicano
2024-2025	Apertura	 Regular	91	Elliana Rose Ramirez	León	2	288	144.00 min	Mexicano
2024-2025	Apertura	 Regular	92	Yashira Yuleth Barrientos	León	2	625	312.50 min	Mexicano
2024-2025	Apertura	 Regular	93	Daniela Calderón	León	2	751	375.50 min	Mexicano
2024-2025	Apertura	 Regular	94	Michelle Guadalupe Gutiérrez	Atlético de San Luis	2	120	60.00 min	Mexicano
2024-2025	Apertura	 Regular	95	Denisse Alejandra Rivera	Atlético de San Luis	2	846	423.00 min	Mexicano
2024-2025	Apertura	 Regular	96	Isidora Victoria Olave	Atlético de San Luis	2	1422	711.00 min	Chileno
2024-2025	Apertura	 Regular	97	Olga Massombo	Mazatlán FC	2	713	356.50 min	Congalí (RD)
2024-2025	Apertura	 Regular	98	Sebelle Elysse Rojas	Puebla	2	1222	611.00 min	Mexicano
2024-2025	Apertura	 Regular	99	Johana Esperanza Rosas	Puebla	2	1269	634.50 min	Mexicano
2024-2025	Apertura	 Regular	100	Kimberli Anahí Gómez	Santos Laguna	2	1177	588.50 min	Mexicano
2024-2025	Apertura	 Regular	101	Ana Gabriela Huerta	Necaxa	2	915	457.50 min	Mexicano
2024-2025	Apertura	 Regular	102	Carla Monique Montes	Rayadas	1	94	94.00 min	Mexicano
2024-2025	Apertura	 Regular	103	Lourdes Sofía Martínez	Rayadas	1	121	121.00 min	Mexicano
2024-2025	Apertura	 Regular	104	Marcela Restrepo	Rayadas	1	421	421.00 min	Colombiano
2024-2025	Apertura	 Regular	105	Diana Laura Evangelista	Rayadas	1	617	617.00 min	Mexicano
2024-2025	Apertura	 Regular	106	Myra Alexandra Delgadillo	Rayadas	1	695	695.00 min	Mexicano
2024-2025	Apertura	 Regular	107	Karol Esthefany Bernal	Rayadas	1	783	783.00 min	Mexicano
2024-2025	Apertura	 Regular	108	María Fernanda Elizondo	Tigres	1	111	111.00 min	Mexicano
2024-2025	Apertura	 Regular	109	Natalia Judith Colín	Tigres	1	253	253.00 min	Mexicano
2024-2025	Apertura	 Regular	110	Lydia Nayeli Rangel	Tigres	1	399	399.00 min	Mexicano
2024-2025	Apertura	 Regular	111	Joseline Montoya	Tigres	1	443	443.00 min	Mexicano
2024-2025	Apertura	 Regular	112	Belén De Jesús Cruz	Tigres	1	694	694.00 min	Mexicano
2024-2025	Apertura	 Regular	113	Cristina Del Carmen Ferral	Tigres	1	890	890.00 min	Mexicano
2024-2025	Apertura	 Regular	114	Greta Alejandra Espinoza	Tigres	1	1119	1119.00 min	Mexicano
2024-2025	Apertura	 Regular	115	Rebekah Alysee Valdez	América	1	11	11.00 min	Mexicano
2024-2025	Apertura	 Regular	116	Alexa Soto	América	1	82	82.00 min	Mexicano
2024-2025	Apertura	 Regular	117	Nancy Guadalupe Antonio	América	1	1110	1110.00 min	Mexicano
2024-2025	Apertura	 Regular	118	Abril Anahí Fragoso	Pachuca	1	33	33.00 min	Mexicano
2024-2025	Apertura	 Regular	119	Shanice Janice Van De Sanden	Pachuca	1	550	550.00 min	Neerlandés
2024-2025	Apertura	 Regular	120	Amanda Araceli Pérez	Pachuca	1	721	721.00 min	Mexicano
2024-2025	Apertura	 Regular	121	Alice Fernanda Soto	Pachuca	1	818	818.00 min	Mexicano
2024-2025	Apertura	 Regular	122	Alexandra Guadalupe Godínez	Pachuca	1	956	956.00 min	Mexicano
2024-2025	Apertura	 Regular	123	Yirleidis Quejada	Pachuca	1	1153	1153.00 min	Colombiano
2024-2025	Apertura	 Regular	124	Daniela Frank Flores	Pachuca	1	1233	1233.00 min	Mexicano
2024-2025	Apertura	 Regular	125	Vaitiare Kenti Robles	Pachuca	1	1366	1366.00 min	Mexicano
2024-2025	Apertura	 Regular	126	Blanca María Solís	FC Juárez	1	148	148.00 min	Mexicano
2024-2025	Apertura	 Regular	127	Mónica Desiree Monsiváis	FC Juárez	1	173	173.00 min	Mexicano
2024-2025	Apertura	 Regular	128	Eva Beatriz González	FC Juárez	1	353	353.00 min	Mexicano
2024-2025	Apertura	 Regular	129	Amalia Phoebe López	Guadalajara	1	102	102.00 min	Mexicano
2024-2025	Apertura	 Regular	130	Kristal Rubi Soto	Guadalajara	1	232	232.00 min	Mexicano
2024-2025	Apertura	 Regular	131	Yamile Azenek Franco	Guadalajara	1	424	424.00 min	Mexicano
2024-2025	Apertura	 Regular	132	Angélica Araceli Torres	Guadalajara	1	1163	1163.00 min	Mexicano
2024-2025	Apertura	 Regular	133	Diana Jaqueline Rodríguez	Guadalajara	1	1318	1318.00 min	Mexicano
2024-2025	Apertura	 Regular	134	Camila Vite	Pumas	1	114	114.00 min	Mexicano
2024-2025	Apertura	 Regular	135	Dania Belén Padilla	Pumas	1	989	989.00 min	Mexicano
2024-2025	Apertura	 Regular	136	Karen Becerril	Pumas	1	1038	1038.00 min	Mexicano
2024-2025	Apertura	 Regular	137	Carina Felipe	Pumas	1	1332	1332.00 min	Uruguayo
2024-2025	Apertura	 Regular	138	Paola Chavero	Pumas	1	1350	1350.00 min	Mexicano
2024-2025	Apertura	 Regular	139	Celia Chainez Bensalem	Toluca	1	336	336.00 min	Francés
2024-2025	Apertura	 Regular	140	Liliana Rodríguez	Toluca	1	627	627.00 min	Mexicano
2024-2025	Apertura	 Regular	141	Diana Paola Monroy	Toluca	1	796	796.00 min	Mexicano
2024-2025	Apertura	 Regular	142	Brenda Vega	Toluca	1	1038	1038.00 min	Mexicano
2024-2025	Apertura	 Regular	143	Mitsy Nayelli Ramirez	Toluca	1	1228	1228.00 min	Mexicano
2024-2025	Apertura	 Regular	144	Claudia Fernanda Cid	Tijuana	1	127	127.00 min	Mexicano
2024-2025	Apertura	 Regular	145	Iraida Guadalupe Fernández	Tijuana	1	223	223.00 min	Mexicano
2024-2025	Apertura	 Regular	146	Nathaly Sofía Martínez	Tijuana	1	452	452.00 min	Mexicano
2024-2025	Apertura	 Regular	147	Fabiola Villalobos	Tijuana	1	467	467.00 min	Costarricense
2024-2025	Apertura	 Regular	148	Andrea González	Tijuana	1	548	548.00 min	Mexicano
2024-2025	Apertura	 Regular	149	Ammanda Mariee Marroquin	Tijuana	1	1100	1100.00 min	Mexicano
2024-2025	Apertura	 Regular	150	Bibiana Guadalupe Quintos	Tijuana	1	1153	1153.00 min	Mexicano
2024-2025	Apertura	 Regular	151	Daphne Melissa Herrera	Tijuana	1	1249	1249.00 min	Costarricense
2024-2025	Apertura	 Regular	152	Victoria Sarahí Ceceña	Querétaro	1	383	383.00 min	Mexicano
2024-2025	Apertura	 Regular	153	Alejandra Lomelí	Atlas	1	563	563.00 min	Mexicano
2024-2025	Apertura	 Regular	154	Jaquelín García	Atlas	1	1330	1330.00 min	Mexicano
2024-2025	Apertura	 Regular	155	Vivian Obianujuwan Ikechukwu	Cruz Azul	1	577	577.00 min	Nigeriano
2024-2025	Apertura	 Regular	156	Julissa Fernanda Dávila	Cruz Azul	1	760	760.00 min	Mexicano
2024-2025	Apertura	 Regular	157	Ivonne Gutiérrez	Cruz Azul	1	926	926.00 min	Mexicano
2024-2025	Apertura	 Regular	158	Itzell Alemán	León	1	370	370.00 min	Mexicano
2024-2025	Apertura	 Regular	159	Sanjuana De Jesús Muñoz	León	1	568	568.00 min	Mexicano
2024-2025	Apertura	 Regular	160	Vanessa Guadalupe López	León	1	862	862.00 min	Mexicano
2024-2025	Apertura	 Regular	161	Yanin Madrid	León	1	895	895.00 min	Mexicano
2024-2025	Apertura	 Regular	162	Joana Robles	Atlético de San Luis	1	834	834.00 min	Mexicano
2024-2025	Apertura	 Regular	163	Laura Montserrat Parra	Atlético de San Luis	1	1353	1353.00 min	Mexicano
2024-2025	Apertura	 Regular	164	Farlyn Fernanda Caicedo	Atlético de San Luis	1	1420	1420.00 min	Colombiano
2024-2025	Apertura	 Regular	165	Sinoxolo Cesane	Mazatlán FC	1	1098	1098.00 min	Sudafricano
2024-2025	Apertura	 Regular	166	Gabriela Rocío Álvarez	Mazatlán FC	1	1205	1205.00 min	Mexicano
2024-2025	Apertura	 Regular	167	Brenda Judith García	Mazatlán FC	1	1440	1440.00 min	Mexicano
2024-2025	Apertura	 Regular	168	Joselyn Solís	Puebla	1	94	94.00 min	Mexicano
2024-2025	Apertura	 Regular	169	Vania Itzel Moron	Puebla	1	135	135.00 min	Mexicano
2024-2025	Apertura	 Regular	170	Venicia Gabriela Juárez	Puebla	1	198	198.00 min	Mexicano
2024-2025	Apertura	 Regular	171	Dulce María Méndez	Puebla	1	208	208.00 min	Mexicano
2024-2025	Apertura	 Regular	172	Liliana Fernández	Puebla	1	222	222.00 min	Mexicano
2024-2025	Apertura	 Regular	173	Anna Jane Loftus	Puebla	1	662	662.00 min	Inglés
2024-2025	Apertura	 Regular	174	Luisa Fernanda De Alba	Puebla	1	796	796.00 min	Mexicano
2024-2025	Apertura	 Regular	175	Ahtziri Méndez	Puebla	1	833	833.00 min	Mexicano
2024-2025	Apertura	 Regular	176	Rubí Iridian Villegas	Puebla	1	1305	1305.00 min	Mexicano
2024-2025	Apertura	 Regular	177	María Magalí Del Verdún Cuadrado	Santos Laguna	1	422	422.00 min	Uruguayo
2024-2025	Apertura	 Regular	178	Frida Carolina Cussin	Santos Laguna	1	574	574.00 min	Mexicano
2024-2025	Apertura	 Regular	179	Lia Mariel Romero	Santos Laguna	1	588	588.00 min	Mexicano
2024-2025	Apertura	 Regular	180	Yessenia Esmeralda Novella	Santos Laguna	1	904	904.00 min	Mexicano
2024-2025	Apertura	 Regular	181	Michel Anahy Ruiz	Santos Laguna	1	1037	1037.00 min	Mexicano
2024-2025	Apertura	 Regular	182	Havi Larisa Ibarra	Santos Laguna	1	1409	1409.00 min	Mexicano
2024-2025	Apertura	 Regular	183	Quetzali Jahoumara Barranco	Necaxa	1	581	581.00 min	Mexicano
2024-2025	Apertura	 Regular	184	Athziri Guadalupe Alonso	Necaxa	1	817	817.00 min	Mexicano
2024-2025	Apertura	 FaseFinal	 1	 Lucía García	Rayadas	3	477	159.00 min	Español
2024-2025	Apertura	 FaseFinal	 1	 Maricarmen Reyes	Tigres	3	257	85.67 min	Mexicano
2024-2025	Apertura	 FaseFinal	 1	 Chrestinah Thembi Kgatlana	Tigres	3	505	168.33 min	Sudafricano
2024-2025	Apertura	 FaseFinal	 1	 Lizbeth Jacqueline Ovalle	Tigres	3	522	174.00 min	Mexicano
2024-2025	Apertura	 FaseFinal	 5	 Diana Laura García	Rayadas	2	507	253.50 min	Mexicano
2024-2025	Apertura	 FaseFinal	 6	 Rebeca Bernal	Rayadas	2	540	270.00 min	Mexicano
2024-2025	Apertura	 FaseFinal	 7	 Angelique Montserrat Saldivar	América	2	101	50.50 min	Mexicano
2024-2025	Apertura	 FaseFinal	 8	 Priscila Flor Da Silva	América	2	162	81.00 min	Brasileño
2024-2025	Apertura	 FaseFinal	 9	 Sarah Jacquelyn Luebbert	América	2	255	127.50 min	Estadounidense
2024-2025	Apertura	 FaseFinal	 10	 Verónica Charlyn Corral	Pachuca	2	360	180.00 min	Mexicano
2024-2025	Apertura	 FaseFinal	 11	 Christian Carolina Jaramillo	Guadalajara	2	135	67.50 min	Mexicano
2024-2025	Apertura	 FaseFinal	 12	 Tanna Sánchez	Rayadas	1	142	142.00 min	Mexicano
2024-2025	Apertura	 FaseFinal	 13	 Katty Martínez	Rayadas	1	176	176.00 min	Mexicano
2024-2025	Apertura	 FaseFinal	 14	 Jermaine Seoposenwe	Rayadas	1	299	299.00 min	Sudafricano
2024-2025	Apertura	 FaseFinal	 15	 Christina Marie Burkenroad	Rayadas	1	387	387.00 min	Mexicano
2024-2025	Apertura	 FaseFinal	 16	 Joseline Montoya	Tigres	1	39	39.00 min	Mexicano
2024-2025	Apertura	 FaseFinal	 17	 Sandra Stephany Mayor	Tigres	1	213	213.00 min	Mexicano
2024-2025	Apertura	 FaseFinal	 18	 Ana Inés Costa Mendes	Tigres	1	383	383.00 min	Portugués
2024-2025	Apertura	 FaseFinal	 19	 Greta Alejandra Espinoza	Tigres	1	540	540.00 min	Mexicano
2024-2025	Apertura	 FaseFinal	 20	 Karen Irasema Luna	América	1	250	250.00 min	Mexicano
2024-2025	Apertura	 FaseFinal	 21	 Scarlett Nefer Camberos	América	1	285	285.00 min	Mexicano
2024-2025	Apertura	 FaseFinal	 22	 Irene Guerrero	América	1	329	329.00 min	Español
2024-2025	Apertura	 FaseFinal	 23	 Chidinma Nkeruka Okeke	América	1	340	340.00 min	Nigeriano
2024-2025	Apertura	 FaseFinal	 24	 Andrea Pereira	Pachuca	1	315	315.00 min	Español
2024-2025	Apertura	 FaseFinal	 25	 Dayana Milan Martin	FC Juárez	1	24	24.00 min	Estadounidense
2024-2025	Apertura	 FaseFinal	 26	 Prisca Chilufya	FC Juárez	1	179	179.00 min	Zambiano
2024-2025	Apertura	 FaseFinal	 27	 Esbeydi Viridiana Salazar	Guadalajara	1	90	90.00 min	Mexicano
2024-2025	Apertura	 FaseFinal	 28	 Stephanie Mariana Ribeiro	Pumas	1	167	167.00 min	Estadounidense
2024-2025	Apertura	 FaseFinal	 29	 Cinthya Peraza	Toluca	1	179	179.00 min	Mexicano
\.


--
-- TOC entry 3684 (class 0 OID 16429)
-- Dependencies: 215
-- Data for Name: lbf_goleo_hist; Type: TABLE DATA; Schema: public; Owner: labasefemenil
--

COPY public.lbf_goleo_hist (temporada, torneo, pos, jugador, club, goles, mj) FROM stdin;
2017-2018	Clausura	1	Lucero Ximena Cuevas	América	15	993
2017-2018	Clausura	2	Mónica Desiree Monsiváis	Rayadas	10	834
2017-2018	Clausura	3	Betzy Casandra Cuevas	América	9	1104
2017-2018	Clausura	4	Esbeydi Viridiana Salazar	Pachuca	8	844
2017-2018	Clausura	5	Lizbeth Ángeles	Pachuca	8	1145
2017-2018	Clausura	6	Leticia Vázquez	León	8	1260
2017-2018	Clausura	7	Daniela Lizbeth Solís	Rayadas	7	716
2017-2018	Clausura	8	Norali Armenta	Rayadas	7	895
2017-2018	Clausura	9	Dayana Joselyn Cazares	América	7	739
2017-2018	Clausura	10	Belén De Jesús Cruz	Tigres	7	843
2017-2018	Clausura	11	María Natalia Mauleon	Toluca	7	934
2017-2018	Clausura	12	Zaira Carolina Miranda	Toluca	7	1055
2017-2018	Clausura	13	Rebeca Bernal	Rayadas	6	1260
2017-2018	Clausura	14	Mónica Ocampo	Pachuca	6	955
2017-2018	Clausura	15	Dinora Lizeth Garza	Rayadas	5	871
2017-2018	Clausura	16	Alison Hecnary González	Tigres	5	378
2017-2018	Clausura	17	Christian Carolina Jaramillo	Tigres	5	1201
2017-2018	Clausura	18	Brenda Noemí Viramontes	Guadalajara	5	826
2017-2018	Clausura	19	Kristal Rubi Soto	Guadalajara	5	1001
2017-2018	Clausura	20	Tania Paola Morales	Guadalajara	5	1072
2017-2018	Clausura	21	Ana Cristina Arvizu	Santos Laguna	5	728
2017-2018	Clausura	22	Melissa Leilani Arredondo	Querétaro	5	1260
2017-2018	Clausura	23	Michelle Alejandra Vargas	León	5	951
2017-2018	Clausura	24	Diana Laura Evangelista	Rayadas	4	1160
2017-2018	Clausura	25	Daniela Espinosa	América	4	419
2017-2018	Clausura	26	Katty Martínez	Tigres	4	449
2017-2018	Clausura	27	Arlett Tovar	Guadalajara	4	1170
2017-2018	Clausura	28	Ana Paola López	Pumas	4	1260
2017-2018	Clausura	29	Nadia Regina Noriega	Santos Laguna	4	897
2017-2018	Clausura	30	Sandy Paulina Cruzado	Querétaro	4	917
2017-2018	Clausura	31	Maritza Dardane Maldonado	Atlas	4	838
2017-2018	Clausura	32	Ana Rosa García	Atlas	4	1007
2017-2018	Clausura	33	Dorian Montserrat Hernández	América	3	593
2017-2018	Clausura	34	Estefanía Fuentes	América	3	705
2017-2018	Clausura	35	Lydia Nayeli Rangel	Tigres	3	585
2017-2018	Clausura	36	Lizbeth Jacqueline Ovalle	Tigres	3	672
2017-2018	Clausura	37	Liliana Mercado	Tigres	3	937
2017-2018	Clausura	38	Nancy Guadalupe Antonio	Tigres	3	985
2017-2018	Clausura	39	María Guadalupe Velázquez	Guadalajara	3	470
2017-2018	Clausura	40	Ana Karen López	Pumas	3	1170
2017-2018	Clausura	41	Ixzayana Viveros	Veracruz	3	1260
2017-2018	Clausura	42	Andrea Guadalupe Romero	Querétaro	3	469
2017-2018	Clausura	43	Rosa Iris Aguiar	Tijuana	3	1249
2017-2018	Clausura	44	Joselyn De La Rosa	León	3	1111
2017-2018	Clausura	45	Mayra Alejandra Santana	Atlas	3	1191
2017-2018	Clausura	46	Dalia Isabel Molina	M. Morelia	3	1087
2017-2018	Clausura	47	Selena Carolina Castillo	Rayadas	2	1203
2017-2018	Clausura	48	Marylin Viridiana Díaz	América	2	1170
2017-2018	Clausura	49	María Fernanda Elizondo	Tigres	2	447
2017-2018	Clausura	50	Daniela Carrandi	Guadalajara	2	350
2017-2018	Clausura	51	Priscila Guadalupe Padilla	Guadalajara	2	854
2017-2018	Clausura	52	Norma Luz Irene Duarte	Guadalajara	2	868
2017-2018	Clausura	53	Karla Guadalupe López	Toluca	2	505
2017-2018	Clausura	54	Kenya Téllez	Toluca	2	1039
2017-2018	Clausura	55	Liliana Rodríguez	Toluca	2	1080
2017-2018	Clausura	56	Berenice Muñoz	Pachuca	2	555
2017-2018	Clausura	57	Jaquelín García	Pachuca	2	855
2017-2018	Clausura	58	Karla Paola Nieto	Pachuca	2	990
2017-2018	Clausura	59	Karime Abud	Pumas	2	642
2017-2018	Clausura	60	Dania Belén Padilla	Pumas	2	715
2017-2018	Clausura	61	Daniela Itzaxaya García	Pumas	2	832
2017-2018	Clausura	62	Nataly Ávila	Pumas	2	993
2017-2018	Clausura	63	Daniela Delgado	Santos Laguna	2	547
2017-2018	Clausura	64	Joseline Andrea Hernández	Santos Laguna	2	608
2017-2018	Clausura	65	Yahaira Esmeralda Flores	Santos Laguna	2	898
2017-2018	Clausura	66	Melissa Aideé Sosa	Santos Laguna	2	1079
2017-2018	Clausura	67	Magaly Cortés	Veracruz	2	1074
2017-2018	Clausura	68	Luz María Ruíz	Querétaro	2	890
2017-2018	Clausura	69	Sharon Andrea Barba	Cruz Azul	2	887
2017-2018	Clausura	70	Inglis Yoana Hernández	Tijuana	2	336
2017-2018	Clausura	71	Samantha Arellano	Tijuana	2	1107
2017-2018	Clausura	72	Juana Trinidad Ovalle	Necaxa	2	702
2017-2018	Clausura	73	Ana Gabriela Huerta	Necaxa	2	822
2017-2018	Clausura	74	Cristina Montserrat Muro	Necaxa	2	1134
2017-2018	Clausura	75	Brenda Esmeralda Díaz	León	2	736
2017-2018	Clausura	76	Fanny Lizeth Grano	Atlas	2	1219
2017-2018	Clausura	77	Karla Yolanda Jiménez	M. Morelia	2	922
2017-2018	Clausura	78	Eleisa Santos	M. Morelia	2	1241
2017-2018	Clausura	79	Victoria López	Rayadas	1	277
2017-2018	Clausura	80	Valeria Valdez	Rayadas	1	1105
2017-2018	Clausura	81	Mariana Cadena	Rayadas	1	1260
2017-2018	Clausura	82	Edna Fabiola Santamaria	América	1	602
2017-2018	Clausura	83	Esmeralda Verdugo	América	1	754
2017-2018	Clausura	84	Diana Izbeth Fierro	América	1	783
2017-2018	Clausura	85	Ana Gabriela Lozada	América	1	1170
2017-2018	Clausura	86	Jazmín Enrigue	Tigres	1	450
2017-2018	Clausura	87	Blanca María Solís	Tigres	1	520
2017-2018	Clausura	88	Karen Irasema Luna	Tigres	1	1109
2017-2018	Clausura	89	Anette Natalia Vázquez	Guadalajara	1	348
2017-2018	Clausura	90	Susan Yanet Bejarano	Guadalajara	1	754
2017-2018	Clausura	91	Maritza Miranda	Toluca	1	880
2017-2018	Clausura	92	Andrea Hernández	Toluca	1	945
2017-2018	Clausura	93	Yamile Azenek Franco	Pachuca	1	270
2017-2018	Clausura	94	Diana Laura García	Pachuca	1	646
2017-2018	Clausura	95	Karen Alejandra Díaz	Pachuca	1	833
2017-2018	Clausura	96	Karen Itzayana Gómez	Pachuca	1	962
2017-2018	Clausura	97	Hireri Velázquez	Pumas	1	327
2017-2018	Clausura	98	Ricla Rajunov	Pumas	1	1260
2017-2018	Clausura	99	Grecia Stephanie Ruiz	Santos Laguna	1	180
2017-2018	Clausura	100	Brenda Alejandra Guevara	Santos Laguna	1	1026
2017-2018	Clausura	101	Karla Fernanda Estrada	Veracruz	1	570
2017-2018	Clausura	102	Dania Itzel Rivera	Veracruz	1	633
2017-2018	Clausura	103	Noemí Granados	Veracruz	1	1022
2017-2018	Clausura	104	Alejandra Soriano	Veracruz	1	1055
2017-2018	Clausura	105	Zaira Ibeth Fortis	Veracruz	1	1145
2017-2018	Clausura	106	Valeria Reza	Querétaro	1	105
2017-2018	Clausura	107	Daniela Auza	Querétaro	1	385
2017-2018	Clausura	108	María Isabella Moreno	Querétaro	1	744
2017-2018	Clausura	109	Ixchebel Tamara Romero	Querétaro	1	810
2017-2018	Clausura	110	Lucero Zavala	Querétaro	1	856
2017-2018	Clausura	111	Alejandra Zoe Tapia	Querétaro	1	1118
2017-2018	Clausura	112	Lorena Rangel	Querétaro	1	1232
2017-2018	Clausura	113	Karla Carolina Hernández	Cruz Azul	1	55
2017-2018	Clausura	114	Flor Rocío Rodríguez	Cruz Azul	1	242
2017-2018	Clausura	115	Daniela Michel Dávila	Cruz Azul	1	296
2017-2018	Clausura	116	Gabriela Aline Guevara	Cruz Azul	1	742
2017-2018	Clausura	117	Martha Natalia Enciso	Cruz Azul	1	751
2017-2018	Clausura	118	Silvia Yuzara López	Cruz Azul	1	1105
2017-2018	Clausura	119	Reyna Sabina Velázquez	Cruz Azul	1	1198
2017-2018	Clausura	120	Layzha Alejandra García	Tijuana	1	302
2017-2018	Clausura	121	María Cristina Juárez	Tijuana	1	313
2017-2018	Clausura	122	Arlina Karime Montes	Tijuana	1	410
2017-2018	Clausura	123	Sheila Odeth Pulido	Tijuana	1	920
2017-2018	Clausura	124	Claudia Magdalena Sánchez	Necaxa	1	494
2017-2018	Clausura	125	Analí Zarate	Necaxa	1	704
2017-2018	Clausura	126	Iran Michelle Medina	Necaxa	1	993
2017-2018	Clausura	127	Andrea Magdalena Villalobos	Necaxa	1	1260
2017-2018	Clausura	128	Jessica Noemí Cuellar	León	1	422
2017-2018	Clausura	129	Damaris Michel Godínez	León	1	1260
2017-2018	Clausura	130	Natalia María Duarte	Atlas	1	696
2017-2018	Clausura	131	Marcela Valera	Atlas	1	1170
2017-2018	Clausura	132	Mónica Villaseñor	M. Morelia	1	821
2018-2019	Apertura	1	Mónica Desiree Monsiváis	Rayadas	13	887
2018-2019	Apertura	2	Katty Martínez	Tigres	12	834
2018-2019	Apertura	3	Mariel Román	Toluca	11	1075
2018-2019	Apertura	4	Mariela Jiménez	Puebla	9	1315
2018-2019	Apertura	5	Mónica Ocampo	Pachuca	8	619
2018-2019	Apertura	6	Diana Laura Evangelista	Rayadas	8	1064
2018-2019	Apertura	7	Betzy Casandra Cuevas	América	7	1257
2018-2019	Apertura	8	Adriana Iturbide	Atlas	7	1131
2018-2019	Apertura	9	Sanjuana De Jesús Muñoz	León	7	1411
2018-2019	Apertura	10	Yahaira Esmeralda Flores	Santos Laguna	7	1305
2018-2019	Apertura	11	Alison Hecnary González	Tigres	6	515
2018-2019	Apertura	12	María Fernanda Elizondo	Tigres	6	573
2018-2019	Apertura	13	Lizbeth Ángeles	Pachuca	6	1394
2018-2019	Apertura	14	Norma Luz Irene Duarte	Guadalajara	6	1419
2018-2019	Apertura	15	Daniela Lizbeth Solís	Rayadas	6	967
2018-2019	Apertura	16	Belén De Jesús Cruz	Tigres	5	624
2018-2019	Apertura	17	Marylin Viridiana Díaz	América	5	1385
2018-2019	Apertura	18	Alicia Cervantes	Rayadas	5	1008
2018-2019	Apertura	19	María Natalia Mauleon	Toluca	5	855
2018-2019	Apertura	20	Abigail De Jesús	Lobos BUAP	5	1006
2018-2019	Apertura	21	Gloria Narváez	Lobos BUAP	5	1066
2018-2019	Apertura	22	Sharon Andrea Barba	Cruz Azul	5	1033
2018-2019	Apertura	23	Evelyn Teresa González	Tigres	4	739
2018-2019	Apertura	24	Liliana Mercado	Tigres	4	1138
2018-2019	Apertura	25	Esbeydi Viridiana Salazar	Pachuca	4	851
2018-2019	Apertura	26	Vannya Rebeca García	América	4	396
2018-2019	Apertura	27	Daniela Espinosa	América	4	924
2018-2019	Apertura	28	Kristal Rubi Soto	Guadalajara	4	927
2018-2019	Apertura	29	Arlett Tovar	Guadalajara	4	1206
2018-2019	Apertura	30	Liliana Rodríguez	Toluca	4	1054
2018-2019	Apertura	31	Kenya Téllez	Toluca	4	1162
2018-2019	Apertura	32	Ana Rosa García	Atlas	4	1050
2018-2019	Apertura	33	Claudia Fabiola Ibarra	Atlas	4	1286
2018-2019	Apertura	34	Joana Robles	Atlas	4	1337
2018-2019	Apertura	35	Mirelle Arciniega	Puebla	4	1120
2018-2019	Apertura	36	Jessica Liliana Tenorio	Puebla	4	1440
2018-2019	Apertura	37	Michelle González	León	4	1440
2018-2019	Apertura	38	Alejandra Zoe Tapia	Querétaro	4	1079
2018-2019	Apertura	39	Lizette Montserrat Rodríguez	M. Morelia	4	696
2018-2019	Apertura	40	Madeleine Pasco	M. Morelia	4	1236
2018-2019	Apertura	41	Inglis Yoana Hernández	Tijuana	4	1221
2018-2019	Apertura	42	Lizbeth Jacqueline Ovalle	Tigres	3	536
2018-2019	Apertura	43	Yanin Madrid	Pachuca	3	1253
2018-2019	Apertura	44	Lucero Ximena Cuevas	América	3	1080
2018-2019	Apertura	45	Dania Nicole Pérez	Guadalajara	3	665
2018-2019	Apertura	46	Brenda Noemí Viramontes	Guadalajara	3	1004
2018-2019	Apertura	47	Andrea Hernández	Toluca	3	999
2018-2019	Apertura	48	Karen Becerril	Toluca	3	1039
2018-2019	Apertura	49	Karime Abud	Pumas	3	505
2018-2019	Apertura	50	Diana Paula Gómez	Pumas	3	905
2018-2019	Apertura	51	Mayra Alejandra Santana	Atlas	3	260
2018-2019	Apertura	52	Ana Anayeli Rodríguez	Atlas	3	617
2018-2019	Apertura	53	Nayeli Denise Peréz	Puebla	3	363
2018-2019	Apertura	54	Perla Rocío Navarrete	León	3	928
2018-2019	Apertura	55	Diana Laura García	León	3	1293
2018-2019	Apertura	56	Rebeca Villuendas	Querétaro	3	1121
2018-2019	Apertura	57	Brenda León	Lobos BUAP	3	1385
2018-2019	Apertura	58	Nancy Ojeda	Veracruz	3	965
2018-2019	Apertura	59	Melissa Aideé Sosa	Santos Laguna	3	1431
2018-2019	Apertura	60	Lydia Nayeli Rangel	Tigres	2	359
2018-2019	Apertura	61	Nancy Guadalupe Antonio	Tigres	2	771
2018-2019	Apertura	62	Christian Carolina Jaramillo	Tigres	2	810
2018-2019	Apertura	63	Greta Alejandra Espinoza	Tigres	2	1143
2018-2019	Apertura	64	Estefany Elizabeth Hernández	Pachuca	2	183
2018-2019	Apertura	65	Fátima Monserrat Arellano	Pachuca	2	817
2018-2019	Apertura	66	Yaritzi Rodríguez	Pachuca	2	898
2018-2019	Apertura	67	Karla Paola Nieto	Pachuca	2	900
2018-2019	Apertura	68	Miriam Vanessa García	Guadalajara	2	1060
2018-2019	Apertura	69	Yamile Azenek Franco	Toluca	2	728
2018-2019	Apertura	70	Zaira Carolina Miranda	Toluca	2	901
2018-2019	Apertura	71	Karla Daniela Zempoalteca	Toluca	2	1153
2018-2019	Apertura	72	Edna Fabiola Santamaria	Pumas	2	990
2018-2019	Apertura	73	Patricia De María Jardón	Pumas	2	1081
2018-2019	Apertura	74	Ricla Rajunov	Pumas	2	1260
2018-2019	Apertura	75	Fátima Del Carmen Delgado	Atlas	2	1248
2018-2019	Apertura	76	Denisse Lizette Valdez	León	2	797
2018-2019	Apertura	77	Sandy Paulina Cruzado	Querétaro	2	601
2018-2019	Apertura	78	Sofia Alvarez	Querétaro	2	1288
2018-2019	Apertura	79	Melissa Leilani Arredondo	Querétaro	2	1410
2018-2019	Apertura	80	Claudia Fernanda Cid	Lobos BUAP	2	1383
2018-2019	Apertura	81	Dalia Isabel Molina	M. Morelia	2	541
2018-2019	Apertura	82	María Guadalupe Cruzaley	M. Morelia	2	1395
2018-2019	Apertura	83	Alejandra Soriano	Veracruz	2	766
2018-2019	Apertura	84	Daniela Alcantar	Veracruz	2	1141
2018-2019	Apertura	85	Rosa Iris Aguiar	Tijuana	2	1306
2018-2019	Apertura	86	Flor Rocío Rodríguez	Cruz Azul	2	428
2018-2019	Apertura	87	Cristina Del Carmen Ferral	Tigres	1	671
2018-2019	Apertura	88	Jazmín Enrigue	Tigres	1	887
2018-2019	Apertura	89	Cynthia Mariana Rodríguez	Pachuca	1	80
2018-2019	Apertura	90	Karen Itzayana Gómez	Pachuca	1	963
2018-2019	Apertura	91	Alejandra Guadalupe Curiel	América	1	279
2018-2019	Apertura	92	Julieta Peralta	América	1	433
2018-2019	Apertura	93	Diana Victoria González	América	1	670
2018-2019	Apertura	94	Estefanía Fuentes	América	1	855
2018-2019	Apertura	95	Anette Natalia Vázquez	Guadalajara	1	252
2018-2019	Apertura	96	Yazmin Araceli Álvarez	Guadalajara	1	354
2018-2019	Apertura	97	Ana Gabriela Huerta	Guadalajara	1	361
2018-2019	Apertura	98	Priscila Guadalupe Padilla	Guadalajara	1	728
2018-2019	Apertura	99	Tania Paola Morales	Guadalajara	1	1099
2018-2019	Apertura	100	María Andrea Sánchez	Guadalajara	1	1224
2018-2019	Apertura	101	Miriam Castillo	Guadalajara	1	1232
2018-2019	Apertura	102	Aylin Ariana Aviléz	Rayadas	1	265
2018-2019	Apertura	103	Norali Armenta	Rayadas	1	412
2018-2019	Apertura	104	Dinora Lizeth Garza	Rayadas	1	760
2018-2019	Apertura	105	Rebeca Bernal	Rayadas	1	971
2018-2019	Apertura	106	Valeria Valdez	Rayadas	1	1035
2018-2019	Apertura	107	Alejandra Zaragoza	Toluca	1	118
2018-2019	Apertura	108	Ana Paola López	Pumas	1	179
2018-2019	Apertura	109	Hireri Velázquez	Pumas	1	886
2018-2019	Apertura	110	Bibiana Guadalupe Quintos	Pumas	1	938
2018-2019	Apertura	111	Ana Karen López	Pumas	1	1170
2018-2019	Apertura	112	Dania Belén Padilla	Pumas	1	1348
2018-2019	Apertura	113	Zellyka Guadalupe Arce	Atlas	1	1431
2018-2019	Apertura	114	Alondra Jiménez	Puebla	1	357
2018-2019	Apertura	115	Carmen Lissette Taboada	Puebla	1	476
2018-2019	Apertura	116	Ivonne Najar	Puebla	1	690
2018-2019	Apertura	117	Mariam Nataly Castro	Puebla	1	1113
2018-2019	Apertura	118	María José López	Puebla	1	1384
2018-2019	Apertura	119	Leticia Vázquez	León	1	863
2018-2019	Apertura	120	Daniela Auza	Querétaro	1	537
2018-2019	Apertura	121	Luz María Ruíz	Querétaro	1	1046
2018-2019	Apertura	122	Ana Paola Pérez	Lobos BUAP	1	378
2018-2019	Apertura	123	Cheyli Yuset Almejo	Lobos BUAP	1	527
2018-2019	Apertura	124	Karen Mejía	Lobos BUAP	1	1206
2018-2019	Apertura	125	Nadia Enira Barriga	M. Morelia	1	639
2018-2019	Apertura	126	María Fernanda Sandoval	M. Morelia	1	771
2018-2019	Apertura	127	Eleisa Santos	M. Morelia	1	1326
2018-2019	Apertura	128	Roxana Torres	Veracruz	1	298
2018-2019	Apertura	129	Paloma Sugey Velázquez	Veracruz	1	755
2018-2019	Apertura	130	Diana Verónica Jiménez	Veracruz	1	1049
2018-2019	Apertura	131	Ixzayana Viveros	Veracruz	1	1080
2018-2019	Apertura	132	Lissete Aline Mata	Veracruz	1	1081
2018-2019	Apertura	133	Zaira Ibeth Fortis	Veracruz	1	1112
2018-2019	Apertura	134	Wendy Yamileth Morales	Veracruz	1	1350
2018-2019	Apertura	135	Mitzy Nataly Ortega	Tijuana	1	650
2018-2019	Apertura	136	Karen Miroslava Maprigat	Tijuana	1	731
2018-2019	Apertura	137	Samantha Arellano	Tijuana	1	1440
2018-2019	Apertura	138	Alondra Karime Camargo	Tijuana	1	1440
2018-2019	Apertura	139	Liliana Guadalupe Godoy	Cruz Azul	1	287
2018-2019	Apertura	140	Daniela Yunuet Fuentes	Cruz Azul	1	579
2018-2019	Apertura	141	Martha Natalia Enciso	Cruz Azul	1	717
2018-2019	Apertura	142	Itzel Cruz	Cruz Azul	1	1263
2018-2019	Apertura	143	Daniela Janet Monroy	Cruz Azul	1	1271
2018-2019	Apertura	144	Olga Anahí Trasviña	Santos Laguna	1	286
2018-2019	Apertura	145	Alexxandra Ramírez	Santos Laguna	1	804
2018-2019	Apertura	146	Daniela Delgado	Santos Laguna	1	865
2018-2019	Apertura	147	Brenda Alejandra Guevara	Santos Laguna	1	1316
2018-2019	Apertura	148	Iran Michelle Medina	Necaxa	1	746
2018-2019	Apertura	149	Andrea Sofía Castellanos	Necaxa	1	898
2018-2019	Apertura	150	Claudia Magdalena Sánchez	Necaxa	1	952
2018-2019	Apertura	151	Melissa Janeth Garcia	Necaxa	1	1076
2018-2019	Apertura	152	Andrea Magdalena Villalobos	Necaxa	1	1135
2018-2019	Clausura	1	Claudia Fabiola Ibarra	Atlas	7	1419
2018-2019	Clausura	1	Isela Guadalupe Ojeda	Santos Laguna	7	822
2018-2019	Clausura	3	Aylin Ariana Aviléz	Rayadas	6	615
2018-2019	Clausura	4	Mónica Desiree Monsiváis	Rayadas	6	690
2018-2019	Clausura	5	Katty Martínez	Tigres	6	830
2018-2019	Clausura	6	Sanjuana De Jesús Muñoz	Pachuca	6	1065
2018-2019	Clausura	7	Ana Paola López	Pachuca	6	1248
2018-2019	Clausura	8	Lizbeth Ángeles	Pachuca	6	1302
2018-2019	Clausura	9	Edna Fabiola Santamaria	Pumas	6	1384
2018-2019	Clausura	10	Daniela Lizbeth Solís	Rayadas	5	1051
2018-2019	Clausura	11	Daniela Espinosa	América	5	1033
2018-2019	Clausura	12	Lucero Ximena Cuevas	América	5	1147
2018-2019	Clausura	13	Lizbeth Jacqueline Ovalle	Tigres	5	925
2018-2019	Clausura	14	Belén De Jesús Cruz	Tigres	5	1268
2018-2019	Clausura	15	Mónica Ocampo	Pachuca	5	748
2018-2019	Clausura	16	Joana Robles	Atlas	5	999
2018-2019	Clausura	17	Alison Hecnary González	Atlas	5	1202
2018-2019	Clausura	18	Dania Nicole Pérez	Guadalajara	5	1220
2018-2019	Clausura	19	Gloria Narváez	Lobos BUAP	5	1054
2018-2019	Clausura	20	Cinthya Peraza	Santos Laguna	5	1249
2018-2019	Clausura	21	Dalia Isabel Molina	M. Morelia	5	1389
2018-2019	Clausura	22	Norma Priscila Gaitan	Cruz Azul	5	1286
2018-2019	Clausura	23	Alicia Cervantes	Rayadas	4	885
2018-2019	Clausura	24	Dinora Lizeth Garza	Rayadas	4	1030
2018-2019	Clausura	25	Diana Victoria González	América	4	526
2018-2019	Clausura	26	Esmeralda Verdugo	América	4	1037
2018-2019	Clausura	27	Liliana Mercado	Tigres	4	1193
2018-2019	Clausura	28	Mariela Jiménez	Puebla	4	1384
2018-2019	Clausura	29	Yamile Azenek Franco	León	4	1128
2018-2019	Clausura	30	Denisse Lizette Valdez	León	4	1238
2018-2019	Clausura	31	Daniela Itzaxaya García	Pumas	4	1215
2018-2019	Clausura	32	Abigail De Jesús	Lobos BUAP	4	1166
2018-2019	Clausura	33	Liliana Hernández	Veracruz	4	1185
2018-2019	Clausura	34	Andrea Hernández	Toluca	4	1170
2018-2019	Clausura	35	Rebeca Bernal	Rayadas	3	1170
2018-2019	Clausura	36	Liliana Rodríguez	Tigres	3	156
2018-2019	Clausura	37	Yanin Madrid	Pachuca	3	625
2018-2019	Clausura	38	Esbeydi Viridiana Salazar	Pachuca	3	708
2018-2019	Clausura	39	Ana Rosa García	Atlas	3	569
2018-2019	Clausura	40	Adriana Iturbide	Atlas	3	804
2018-2019	Clausura	41	Damaris Michel Godínez	Puebla	3	1368
2018-2019	Clausura	42	María José López	Puebla	3	1400
2018-2019	Clausura	43	Michelle Alejandra Vargas	León	3	514
2018-2019	Clausura	44	Selene Itzel Valera	León	3	1440
2018-2019	Clausura	45	Ana Gabriela Huerta	Guadalajara	3	518
2018-2019	Clausura	46	Kristal Rubi Soto	Guadalajara	3	931
2018-2019	Clausura	47	Estefany Elizabeth Hernández	Pumas	3	908
2018-2019	Clausura	48	Estela Gómez	M. Morelia	3	1020
2018-2019	Clausura	49	María Guadalupe Cruzaley	M. Morelia	3	1350
2018-2019	Clausura	50	Sharon Andrea Barba	Cruz Azul	3	1024
2018-2019	Clausura	51	Valeria Abigail Barajas	Tijuana	3	1175
2018-2019	Clausura	52	Alejandra Zoe Tapia	Querétaro	3	854
2018-2019	Clausura	53	Elisa Paola Espino	Querétaro	3	1044
2018-2019	Clausura	54	Diana Laura Evangelista	Rayadas	2	308
2018-2019	Clausura	55	Norali Armenta	Rayadas	2	582
2018-2019	Clausura	56	Mariana Cadena	Rayadas	2	1268
2018-2019	Clausura	57	Selena Carolina Castillo	Rayadas	2	1440
2018-2019	Clausura	58	Dorian Montserrat Hernández	América	2	389
2018-2019	Clausura	59	Dayana Joselyn Cazares	América	2	672
2018-2019	Clausura	60	Betzy Casandra Cuevas	América	2	1183
2018-2019	Clausura	61	Lydia Nayeli Rangel	Tigres	2	419
2018-2019	Clausura	62	Nancy Guadalupe Antonio	Tigres	2	740
2018-2019	Clausura	63	Evelyn Teresa González	Tigres	2	1184
2018-2019	Clausura	64	Diana Izbeth Fierro	Pachuca	2	1033
2018-2019	Clausura	65	Alejandra Franco	Atlas	2	1260
2018-2019	Clausura	66	María Fernanda Daniela Pérez	Atlas	2	1440
2018-2019	Clausura	67	Perla Rocío Navarrete	León	2	1070
2018-2019	Clausura	68	Miriam Castillo	Guadalajara	2	1440
2018-2019	Clausura	69	Flor Rocío Rodríguez	Lobos BUAP	2	282
2018-2019	Clausura	70	María Lourdes Ramírez	Lobos BUAP	2	1352
2018-2019	Clausura	71	Yahaira Esmeralda Flores	Santos Laguna	2	728
2018-2019	Clausura	72	Brenda Nayeli Carvajal	Toluca	2	806
2018-2019	Clausura	73	Mariel Román	Toluca	2	869
2018-2019	Clausura	74	Alejandra Calderón	M. Morelia	2	668
2018-2019	Clausura	75	María Guadalupe Ruíz	M. Morelia	2	1171
2018-2019	Clausura	76	Ximena Mendoza	Cruz Azul	2	879
2018-2019	Clausura	77	Reyna Sabina Velázquez	Cruz Azul	2	1029
2018-2019	Clausura	78	Daniela Janet Monroy	Cruz Azul	2	1347
2018-2019	Clausura	79	Inglis Yoana Hernández	Tijuana	2	1425
2018-2019	Clausura	80	Libeth Paulina Castro	Necaxa	2	754
2018-2019	Clausura	81	Liliana Sánchez	Necaxa	2	1440
2018-2019	Clausura	82	Sandy Paulina Cruzado	Querétaro	2	691
2018-2019	Clausura	83	Andrea Guadalupe Romero	Querétaro	2	876
2018-2019	Clausura	84	Melissa Leilani Arredondo	Querétaro	2	1070
2018-2019	Clausura	85	Pamela Andrea Verdirame	Rayadas	1	118
2018-2019	Clausura	86	Gabriela Rocío Álvarez	Rayadas	1	438
2018-2019	Clausura	87	Hilary Margarita García	Rayadas	1	695
2018-2019	Clausura	88	Valeria Valdez	Rayadas	1	1101
2018-2019	Clausura	89	Alejandra Guadalupe Curiel	América	1	77
2018-2019	Clausura	90	Alondra González	América	1	155
2018-2019	Clausura	91	Ximena Elizabeth Rios	América	1	880
2018-2019	Clausura	92	Estefanía Fuentes	América	1	979
2018-2019	Clausura	93	Vanessa González	Tigres	1	47
2018-2019	Clausura	94	Blanca María Solís	Tigres	1	221
2018-2019	Clausura	95	María Fernanda Elizondo	Tigres	1	563
2018-2019	Clausura	96	Jazmín Enrigue	Tigres	1	845
2018-2019	Clausura	97	Greta Alejandra Espinoza	Tigres	1	1305
2018-2019	Clausura	98	Karen Alejandra Díaz	Pachuca	1	759
2018-2019	Clausura	99	Karen Itzayana Gómez	Pachuca	1	1040
2018-2019	Clausura	100	Valeria Razo	Atlas	1	120
2018-2019	Clausura	101	Ana Anayeli Rodríguez	Atlas	1	663
2018-2019	Clausura	102	Zellyka Guadalupe Arce	Atlas	1	1361
2018-2019	Clausura	103	Mariam Nataly Castro	Puebla	1	977
2018-2019	Clausura	104	Guillermina Martínez	Puebla	1	1116
2018-2019	Clausura	105	Perla Cristina Morones	León	1	142
2018-2019	Clausura	106	Dariana Rubio	León	1	684
2018-2019	Clausura	107	Karla Daniela Zempoalteca	León	1	1241
2018-2019	Clausura	108	Priscila Guadalupe Padilla	Guadalajara	1	1260
2018-2019	Clausura	109	Arlett Tovar	Guadalajara	1	1273
2018-2019	Clausura	110	Tania Paola Morales	Guadalajara	1	1289
2018-2019	Clausura	111	Hireri Velázquez	Pumas	1	428
2018-2019	Clausura	112	Paola Chavero	Pumas	1	726
2018-2019	Clausura	113	Patricia De María Jardón	Pumas	1	854
2018-2019	Clausura	114	Lucia Rodríguez	Pumas	1	1134
2018-2019	Clausura	115	Dania Belén Padilla	Pumas	1	1188
2018-2019	Clausura	116	Ricla Rajunov	Pumas	1	1193
2018-2019	Clausura	117	Dayán Vianey Fuentes	Lobos BUAP	1	680
2018-2019	Clausura	118	Itzia Tenahua	Lobos BUAP	1	1236
2018-2019	Clausura	119	Dulce Eileen Martínez	Lobos BUAP	1	1421
2018-2019	Clausura	120	Claudia Fernanda Cid	Lobos BUAP	1	1440
2018-2019	Clausura	121	Linda Lizbeth Valdéz	Santos Laguna	1	661
2018-2019	Clausura	122	Karla Lorena Martínez	Santos Laguna	1	780
2018-2019	Clausura	123	Alexxandra Ramírez	Santos Laguna	1	900
2018-2019	Clausura	124	Nancy Lizbeth Quiñones	Santos Laguna	1	1440
2018-2019	Clausura	125	Zaira Ibeth Fortis	Veracruz	1	339
2018-2019	Clausura	126	Ixzayana Viveros	Veracruz	1	452
2018-2019	Clausura	127	Diana Sarahí Zacarías	Veracruz	1	494
2018-2019	Clausura	128	Martha Gendrón	Veracruz	1	806
2018-2019	Clausura	129	Wendy Yamileth Morales	Veracruz	1	1335
2018-2019	Clausura	130	Ingrid Hidalgo	Toluca	1	298
2018-2019	Clausura	131	Zaira Carolina Miranda	Toluca	1	932
2018-2019	Clausura	132	Karen Becerril	Toluca	1	934
2018-2019	Clausura	133	Dirce Delgado	Toluca	1	962
2018-2019	Clausura	134	María Natalia Mauleon	Toluca	1	1047
2018-2019	Clausura	135	Kenya Téllez	Toluca	1	1208
2018-2019	Clausura	136	Lizette Montserrat Rodríguez	M. Morelia	1	460
2018-2019	Clausura	137	Isamar Toledo	M. Morelia	1	488
2018-2019	Clausura	138	Nadia Enira Barriga	M. Morelia	1	516
2018-2019	Clausura	139	Diana Michelle Guatemala	M. Morelia	1	1154
2018-2019	Clausura	140	Karen Gutierrez	Cruz Azul	1	57
2018-2019	Clausura	141	Daniela Osorio	Cruz Azul	1	238
2018-2019	Clausura	142	Martha Natalia Enciso	Cruz Azul	1	1162
2018-2019	Clausura	143	Itzel Cruz	Cruz Azul	1	1411
2018-2019	Clausura	144	Patricia Ameyalli Gutiérrez	Tijuana	1	736
2018-2019	Clausura	145	Magdalena Carolina Zepeda	Tijuana	1	942
2018-2019	Clausura	146	Alondra Karime Camargo	Tijuana	1	1197
2018-2019	Clausura	147	Sheila Odeth Pulido	Tijuana	1	1262
2018-2019	Clausura	148	Karen Miroslava Maprigat	Tijuana	1	1376
2018-2019	Clausura	149	Vyaney Alejandra Zorrilla	Necaxa	1	302
2018-2019	Clausura	150	Claudia Magdalena Sánchez	Necaxa	1	653
2018-2019	Clausura	151	Brianda Escobedo	Necaxa	1	656
2018-2019	Clausura	152	Nohely Deneb Enriquez	Necaxa	1	757
2018-2019	Clausura	153	Alejandra Zaragoza	Necaxa	1	867
2018-2019	Clausura	154	Luz María Ruíz	Querétaro	1	422
2018-2019	Clausura	155	Fátima Servín	Querétaro	1	507
2018-2019	Clausura	156	Sofia Alvarez	Querétaro	1	746
2018-2019	Clausura	157	Rebeca Villuendas	Querétaro	1	957
2018-2019	Clausura	158	Karen Elizabeth Hernández	Querétaro	1	1027
2019-2020	Apertura	1	Mónica Desiree Monsiváis	Rayadas	17	1226
2019-2020	Apertura	1	Esbeydi Viridiana Salazar	Pachuca	17	1520
2019-2020	Apertura	3	Daniela Espinosa	América	13	1272
2019-2020	Apertura	4	Renae Nicole Cuéllar	Tijuana	12	1530
2019-2020	Apertura	5	Katty Martínez	Tigres	10	883
2019-2020	Apertura	6	Diana Laura Evangelista	Rayadas	9	1172
2019-2020	Apertura	7	Mariel Román	Toluca	9	1465
2019-2020	Apertura	8	Adriana Iturbide	Atlas	9	1442
2019-2020	Apertura	9	Lizbeth Jacqueline Ovalle	Tigres	8	1261
2019-2020	Apertura	10	Alison Hecnary González	Atlas	8	1501
2019-2020	Apertura	11	Dalia Isabel Molina	M. Morelia	8	1596
2019-2020	Apertura	12	Belén De Jesús Cruz	Tigres	6	1275
2019-2020	Apertura	13	Karla Yolanda Jiménez	M. Morelia	6	1510
2019-2020	Apertura	14	Sanjuana De Jesús Muñoz	León	6	1554
2019-2020	Apertura	15	Liliana Hernández	Veracruz	6	1518
2019-2020	Apertura	16	Aylin Ariana Aviléz	Rayadas	5	498
2019-2020	Apertura	17	Daniela Lizbeth Solís	Rayadas	5	820
2019-2020	Apertura	18	Dinora Lizeth Garza	Rayadas	5	1225
2019-2020	Apertura	19	Mónica Ocampo	Pachuca	5	1043
2019-2020	Apertura	20	Lucero Ximena Cuevas	América	5	581
2019-2020	Apertura	21	Kristal Rubi Soto	Guadalajara	5	1291
2019-2020	Apertura	22	Betzy Casandra Cuevas	Tijuana	5	1335
2019-2020	Apertura	23	Claudia Fabiola Ibarra	Atlas	5	1357
2019-2020	Apertura	24	Alejandra Calderón	M. Morelia	5	1260
2019-2020	Apertura	25	Paola González	Cruz Azul	5	843
2019-2020	Apertura	26	Martha Natalia Enciso	Cruz Azul	5	1386
2019-2020	Apertura	27	Alejandra Guadalupe Curiel	Cruz Azul	5	1396
2019-2020	Apertura	28	Brenda León	Cruz Azul	5	1477
2019-2020	Apertura	29	María José López	Puebla	5	1620
2019-2020	Apertura	30	Estela Gómez	Santos Laguna	5	731
2019-2020	Apertura	31	Ana Paola López	Pachuca	4	1294
2019-2020	Apertura	32	Diana Izbeth Fierro	Pachuca	4	1378
2019-2020	Apertura	33	Yashira Yuleth Barrientos	Guadalajara	4	1015
2019-2020	Apertura	34	Dania Nicole Pérez	Guadalajara	4	1607
2019-2020	Apertura	35	María Natalia Mauleon	Toluca	4	920
2019-2020	Apertura	36	María Guadalupe Cruzaley	M. Morelia	4	1574
2019-2020	Apertura	37	Daniela Calderón	León	4	1031
2019-2020	Apertura	38	Yamile Azenek Franco	León	4	1559
2019-2020	Apertura	39	Andrea Alejandra Ortega	Puebla	4	1044
2019-2020	Apertura	40	Cinthya Peraza	Santos Laguna	4	1620
2019-2020	Apertura	41	Natalia Inés Gómez Junco	Tigres	3	520
2019-2020	Apertura	42	Greta Alejandra Espinoza	Tigres	3	1620
2019-2020	Apertura	43	Dorian Montserrat Hernández	América	3	1530
2019-2020	Apertura	44	Tania Paola Morales	Guadalajara	3	1316
2019-2020	Apertura	45	Joseline Montoya	Guadalajara	3	1508
2019-2020	Apertura	46	Zellyka Guadalupe Arce	Atlas	3	1513
2019-2020	Apertura	47	Jocelyn Atzimba Flores	M. Morelia	3	344
2019-2020	Apertura	48	Mariam Nataly Castro	Puebla	3	739
2019-2020	Apertura	49	Alejandra Zoe Tapia	Querétaro	3	1346
2019-2020	Apertura	50	Edna Fabiola Santamaria	Pumas	3	1609
2019-2020	Apertura	51	Casandra Montero	Veracruz	3	1249
2019-2020	Apertura	52	Alexxandra Ramírez	Santos Laguna	3	1552
2019-2020	Apertura	53	Flor Rocío Rodríguez	FC Juárez	3	1114
2019-2020	Apertura	54	Jessica Arely Vázquez	FC Juárez	3	1302
2019-2020	Apertura	55	Jazmin Cristal Aguas	Rayadas	2	319
2019-2020	Apertura	56	Alicia Cervantes	Rayadas	2	737
2019-2020	Apertura	57	Rebeca Bernal	Rayadas	2	1260
2019-2020	Apertura	58	Andrea Hernández	Rayadas	2	1391
2019-2020	Apertura	59	María Fernanda Elizondo	Tigres	2	412
2019-2020	Apertura	60	Nancy Guadalupe Antonio	Tigres	2	1234
2019-2020	Apertura	61	Liliana Mercado	Tigres	2	1375
2019-2020	Apertura	62	Karen Itzayana Gómez	Pachuca	2	1131
2019-2020	Apertura	63	Lizbeth Ángeles	Pachuca	2	1443
2019-2020	Apertura	64	Karla Paola Nieto	Pachuca	2	1485
2019-2020	Apertura	65	Alexia Nayeli Villanueva	América	2	366
2019-2020	Apertura	66	Jennifer Justine Muñoz	América	2	1322
2019-2020	Apertura	67	Janelly Farias	Guadalajara	2	1394
2019-2020	Apertura	68	Diana Jaqueline Rodríguez	Guadalajara	2	1467
2019-2020	Apertura	69	Miriam Castillo	Guadalajara	2	1531
2019-2020	Apertura	70	Karime Abud	Toluca	2	1027
2019-2020	Apertura	71	Karen Becerril	Toluca	2	1573
2019-2020	Apertura	72	Isabel Cristina Fonseca	Tijuana	2	924
2019-2020	Apertura	73	Jocelyn Marie Orejel	Tijuana	2	1086
2019-2020	Apertura	74	Karen Miroslava Maprigat	Tijuana	2	1204
2019-2020	Apertura	75	Maritza Dardane Maldonado	Atlas	2	431
2019-2020	Apertura	76	María Fernanda Daniela Pérez	Atlas	2	1620
2019-2020	Apertura	77	Lizette Montserrat Rodríguez	M. Morelia	2	472
2019-2020	Apertura	78	Sahiry América Cruz	M. Morelia	2	1429
2019-2020	Apertura	79	Fátima Ximena Alonso	Cruz Azul	2	760
2019-2020	Apertura	80	Daniela Janet Monroy	Cruz Azul	2	818
2019-2020	Apertura	81	Itzel Cruz	Cruz Azul	2	1519
2019-2020	Apertura	82	Dulce Anay Piña	León	2	104
2019-2020	Apertura	83	Diana Laura García	León	2	1397
2019-2020	Apertura	84	Emily Misdiel González	Puebla	2	785
2019-2020	Apertura	85	Daniela Regina Vázquez	Querétaro	2	1045
2019-2020	Apertura	86	Daniela Vidal	Querétaro	2	1231
2019-2020	Apertura	87	Sofia Alvarez	Querétaro	2	1370
2019-2020	Apertura	88	Daniela Sánchez	Pumas	2	728
2019-2020	Apertura	89	Jaquelín García	Pumas	2	782
2019-2020	Apertura	90	Daniela Itzaxaya García	Pumas	2	1033
2019-2020	Apertura	91	Isela Guadalupe Ojeda	Santos Laguna	2	1122
2019-2020	Apertura	92	Ramona Guadalupe Paredes	Atlético de San Luis	2	637
2019-2020	Apertura	93	Daniela Carrandi	Atlético de San Luis	2	1556
2019-2020	Apertura	94	Karen Melina Vázquez	Atlético de San Luis	2	1620
2019-2020	Apertura	95	Brenda Marisol Pedroza	Necaxa	2	642
2019-2020	Apertura	96	Samantha Abigail Simental	Rayadas	1	30
2019-2020	Apertura	97	Annia Stephany Mejía	Rayadas	1	1055
2019-2020	Apertura	98	Miah Alexia Zuazua	Tigres	1	197
2019-2020	Apertura	99	Lydia Nayeli Rangel	Tigres	1	953
2019-2020	Apertura	100	Karen Irasema Luna	Tigres	1	1156
2019-2020	Apertura	101	Yaritzi Rodríguez	Pachuca	1	91
2019-2020	Apertura	102	Norma Priscila Gaitan	Pachuca	1	142
2019-2020	Apertura	103	Blanky Denisse Serrano	Pachuca	1	192
2019-2020	Apertura	104	Gloria Narváez	Pachuca	1	448
2019-2020	Apertura	105	Diana Paola Monroy	Pachuca	1	1425
2019-2020	Apertura	106	Ana Karen López	América	1	452
2019-2020	Apertura	107	Jana Alexandra Gutiérrez	América	1	1072
2019-2020	Apertura	108	Marcela Valera	América	1	1160
2019-2020	Apertura	109	María Guadalupe Velázquez	Guadalajara	1	96
2019-2020	Apertura	110	Ana Gabriela Huerta	Guadalajara	1	327
2019-2020	Apertura	111	Brenda Noemí Viramontes	Guadalajara	1	573
2019-2020	Apertura	112	María Andrea Sánchez	Guadalajara	1	827
2019-2020	Apertura	113	Kinberly Paloma Guzmán	Guadalajara	1	945
2019-2020	Apertura	114	Layla Lucila De La Luz García	Toluca	1	148
2019-2020	Apertura	115	Brenda Nayeli Carvajal	Toluca	1	377
2019-2020	Apertura	116	Yamanic Nahomi Martínez	Toluca	1	1350
2019-2020	Apertura	117	Silvia Yuzara López	Toluca	1	1424
2019-2020	Apertura	118	Karla Katia Saavedra	Toluca	1	1436
2019-2020	Apertura	119	Noemí Granados	Toluca	1	1530
2019-2020	Apertura	120	Laura Montserrat Parra	Toluca	1	1620
2019-2020	Apertura	121	María Fernanda Barajas	Tijuana	1	299
2019-2020	Apertura	122	Yadira Toraya	Tijuana	1	1301
2019-2020	Apertura	123	Inglis Yoana Hernández	Tijuana	1	1398
2019-2020	Apertura	124	Leyla Ali Zapata	Tijuana	1	1515
2019-2020	Apertura	125	Mayra Alejandra Santana	Atlas	1	53
2019-2020	Apertura	126	Ana Rosa García	Atlas	1	263
2019-2020	Apertura	127	María Areli Martínez	Atlas	1	426
2019-2020	Apertura	128	Joana Robles	Atlas	1	903
2019-2020	Apertura	129	Karen Andrea García	Atlas	1	1175
2019-2020	Apertura	130	Julissa Fernanda Dávila	Atlas	1	1332
2019-2020	Apertura	131	Sharon Andrea Barba	Cruz Azul	1	81
2019-2020	Apertura	132	Wendy Atziri Jiménez	Cruz Azul	1	1156
2019-2020	Apertura	133	Montserrat Martinez	León	1	573
2019-2020	Apertura	134	Paulina Gómez	León	1	661
2019-2020	Apertura	135	Paulina Adriana Pérez	León	1	700
2019-2020	Apertura	136	Liliana Sánchez	León	1	1169
2019-2020	Apertura	137	Ivonne Najar	Puebla	1	1505
2019-2020	Apertura	138	Mirelle Arciniega	Puebla	1	1607
2019-2020	Apertura	139	Lizette Adriana Calderón	Querétaro	1	306
2019-2020	Apertura	140	Elisa Paola Espino	Querétaro	1	570
2019-2020	Apertura	141	Karym Iturbe	Querétaro	1	688
2019-2020	Apertura	142	Luz María Ruíz	Querétaro	1	1000
2019-2020	Apertura	143	Melissa Leilani Arredondo	Querétaro	1	1292
2019-2020	Apertura	144	Karen Elizabeth Hernández	Querétaro	1	1598
2019-2020	Apertura	145	Estefany Elizabeth Hernández	Pumas	1	134
2019-2020	Apertura	146	Laura Herrera	Pumas	1	189
2019-2020	Apertura	147	Mariela Jiménez	Pumas	1	309
2019-2020	Apertura	148	Patricia De María Jardón	Pumas	1	390
2019-2020	Apertura	149	Hilary Margarita García	Pumas	1	537
2019-2020	Apertura	150	Dirce Delgado	Pumas	1	1282
2019-2020	Apertura	151	Gabriela Rocío Álvarez	Pumas	1	1508
2019-2020	Apertura	152	Daniela Osorio	Veracruz	1	62
2019-2020	Apertura	153	Magaly Cortés	Veracruz	1	530
2019-2020	Apertura	154	Brenda Abigail García	Veracruz	1	958
2019-2020	Apertura	155	Karla Vanessa Estala	Veracruz	1	1123
2019-2020	Apertura	156	Valeria Lagunes	Veracruz	1	1151
2019-2020	Apertura	157	Citlalli Amairany Valencia	Veracruz	1	1293
2019-2020	Apertura	158	Monique Burgess	Veracruz	1	1521
2019-2020	Apertura	159	Paloma Sugey Velázquez	Veracruz	1	1596
2019-2020	Apertura	160	Yahaira Esmeralda Flores	Santos Laguna	1	154
2019-2020	Apertura	161	Ashly Yoselin Martínez	Santos Laguna	1	506
2019-2020	Apertura	162	Arlett Tovar	Santos Laguna	1	1440
2019-2020	Apertura	163	Sharon Denisse Morales	Atlético de San Luis	1	332
2019-2020	Apertura	164	Aylin Hernández	Atlético de San Luis	1	689
2019-2020	Apertura	165	Ivonne Yaqueline Santillán	Atlético de San Luis	1	1057
2019-2020	Apertura	166	Belkis Karely Escalante	Atlético de San Luis	1	1298
2019-2020	Apertura	167	Estefania Izaguirre	Atlético de San Luis	1	1344
2019-2020	Apertura	168	Silvia Elicerio	FC Juárez	1	910
2019-2020	Apertura	169	Carmen Angelica González	FC Juárez	1	1262
2019-2020	Apertura	170	Olimpia Yanet Cuevas	Necaxa	1	364
2019-2020	Apertura	171	Libeth Paulina Castro	Necaxa	1	1495
2019-2020	Apertura	172	Dulce Maria Alvarado	Necaxa	1	1522
2019-2020	Apertura	173	Brianda Escobedo	Necaxa	1	1620
2019-2020	Clausura	1	Sandra Stephany Mayor	Tigres	6	270
2019-2020	Clausura	1	Claudia Fabiola Ibarra	Atlas	6	898
2019-2020	Clausura	1	Mónica Desiree Monsiváis	Rayadas	6	648
2019-2020	Clausura	1	Esbeydi Viridiana Salazar	Pachuca	6	688
2019-2020	Clausura	5	Katty Martínez	Tigres	5	551
2019-2020	Clausura	6	Yashira Yuleth Barrientos	Guadalajara	5	526
2019-2020	Clausura	7	Marlyn Margoth Campa	América	5	558
2019-2020	Clausura	8	Diana Laura García	León	5	717
2019-2020	Clausura	9	Renae Nicole Cuéllar	Tijuana	5	351
2019-2020	Clausura	10	Ana Paola López	Pachuca	4	732
2019-2020	Clausura	11	Claudia Fernanda Cid	León	4	720
2019-2020	Clausura	12	Lizette Montserrat Rodríguez	M. Morelia	4	250
2019-2020	Clausura	13	Dulce Maria Alvarado	Necaxa	4	810
2019-2020	Clausura	14	Daniela Carrandi	Atlético de San Luis	4	752
2019-2020	Clausura	15	Mariel Román	Toluca	4	405
2019-2020	Clausura	16	Atzimba Casas	FC Juárez	4	700
2019-2020	Clausura	17	Lizbeth Jacqueline Ovalle	Tigres	3	241
2019-2020	Clausura	18	Alison Hecnary González	Atlas	3	450
2019-2020	Clausura	19	Kristal Rubi Soto	Guadalajara	3	864
2019-2020	Clausura	20	Jana Alexandra Gutiérrez	América	3	312
2019-2020	Clausura	21	Blanky Denisse Serrano	Pachuca	3	326
2019-2020	Clausura	22	Sanjuana De Jesús Muñoz	León	3	795
2019-2020	Clausura	23	Susana Romero	Cruz Azul	3	779
2019-2020	Clausura	24	Daniela Itzaxaya García	Pumas	3	766
2019-2020	Clausura	25	Lucero Ximena Cuevas	Tijuana	3	630
2019-2020	Clausura	26	Liliana Hernández	M. Morelia	3	847
2019-2020	Clausura	27	Teresa Guadalupe Worbis	Puebla	3	797
2019-2020	Clausura	28	Cinthya Peraza	Santos Laguna	3	777
2019-2020	Clausura	29	Miah Alexia Zuazua	Tigres	2	236
2019-2020	Clausura	30	Belén De Jesús Cruz	Tigres	2	609
2019-2020	Clausura	31	Adriana Iturbide	Atlas	2	447
2019-2020	Clausura	32	Tania Paola Morales	Guadalajara	2	562
2019-2020	Clausura	33	Miriam Vanessa García	Guadalajara	2	720
2019-2020	Clausura	34	Evelyn Teresa González	Guadalajara	2	795
2019-2020	Clausura	35	Daniela Lizbeth Solís	Rayadas	2	558
2019-2020	Clausura	36	Destinney Rosalía Duron	América	2	325
2019-2020	Clausura	37	Estefanía Fuentes	América	2	604
2019-2020	Clausura	38	Yamile Azenek Franco	León	2	699
2019-2020	Clausura	39	Marylin Viridiana Díaz	Cruz Azul	2	900
2019-2020	Clausura	40	Liliana Rodríguez	Pumas	2	539
2019-2020	Clausura	41	Edna Fabiola Santamaria	Pumas	2	741
2019-2020	Clausura	42	Rosa Iris Aguiar	Tijuana	2	424
2019-2020	Clausura	43	Alondra Karime Camargo	Tijuana	2	489
2019-2020	Clausura	44	Alejandra Calderón	M. Morelia	2	760
2019-2020	Clausura	45	Karla Yolanda Jiménez	M. Morelia	2	771
2019-2020	Clausura	46	Andrea Alejandra Ortega	Puebla	2	477
2019-2020	Clausura	47	Mirelle Arciniega	Puebla	2	805
2019-2020	Clausura	48	Saira Cecilia López	Necaxa	2	711
2019-2020	Clausura	49	Estefania Izaguirre	Atlético de San Luis	2	625
2019-2020	Clausura	50	Jessica Arely Vázquez	FC Juárez	2	310
2019-2020	Clausura	51	Karym Iturbe	Querétaro	2	691
2019-2020	Clausura	52	Isela Guadalupe Ojeda	Santos Laguna	2	472
2019-2020	Clausura	53	Yenifer Britany García	Tigres	1	27
2019-2020	Clausura	54	Blanca María Solís	Tigres	1	154
2019-2020	Clausura	55	Lydia Nayeli Rangel	Tigres	1	523
2019-2020	Clausura	56	Greta Alejandra Espinoza	Tigres	1	720
2019-2020	Clausura	57	Joana Robles	Atlas	1	90
2019-2020	Clausura	58	Marcia Paola García	Atlas	1	192
2019-2020	Clausura	59	Ana Anayeli Rodríguez	Atlas	1	205
2019-2020	Clausura	60	Alexa Daniela Curiel	Atlas	1	263
2019-2020	Clausura	61	Mayra Alejandra Santana	Atlas	1	471
2019-2020	Clausura	62	Ana Rosa García	Atlas	1	495
2019-2020	Clausura	63	María Fernanda Daniela Pérez	Atlas	1	900
2019-2020	Clausura	64	María Guadalupe Velázquez	Guadalajara	1	191
2019-2020	Clausura	65	Janelly Farias	Guadalajara	1	270
2019-2020	Clausura	66	Aylin Ariana Aviléz	Rayadas	1	151
2019-2020	Clausura	67	Ariana Catrina Calderón	Rayadas	1	337
2019-2020	Clausura	68	Jazmin Cristal Aguas	Rayadas	1	362
2019-2020	Clausura	69	Andrea Hernández	Rayadas	1	484
2019-2020	Clausura	70	Valeria Valdez	Rayadas	1	719
2019-2020	Clausura	71	Annia Stephany Mejía	Rayadas	1	720
2019-2020	Clausura	72	Daniela Espinosa	América	1	172
2019-2020	Clausura	73	Alexia Nayeli Villanueva	América	1	247
2019-2020	Clausura	74	Dorian Montserrat Hernández	América	1	689
2019-2020	Clausura	75	Betzy Casandra Cuevas	América	1	900
2019-2020	Clausura	76	Gloria Narváez	Pachuca	1	191
2019-2020	Clausura	77	Karla Paola Nieto	Pachuca	1	450
2019-2020	Clausura	78	Diana Izbeth Fierro	Pachuca	1	695
2019-2020	Clausura	79	Paulina Gómez	León	1	76
2019-2020	Clausura	80	Daniela Calderón	León	1	327
2019-2020	Clausura	81	Liliana Sánchez	León	1	337
2019-2020	Clausura	82	Joselyn De La Rosa	León	1	720
2019-2020	Clausura	83	María Alejandra Tovar	Cruz Azul	1	186
2019-2020	Clausura	84	Abigail De Jesús	Cruz Azul	1	189
2019-2020	Clausura	85	Wendy Atziri Jiménez	Cruz Azul	1	308
2019-2020	Clausura	86	Rebeca Villuendas	Cruz Azul	1	508
2019-2020	Clausura	87	Alejandra Guadalupe Curiel	Cruz Azul	1	584
2019-2020	Clausura	88	Jessica Liliana Tenorio	Cruz Azul	1	826
2019-2020	Clausura	89	Jaquelín García	Pumas	1	222
2019-2020	Clausura	90	Laura Herrera	Pumas	1	408
2019-2020	Clausura	91	Dania Belén Padilla	Pumas	1	590
2019-2020	Clausura	92	Deneva Cagigas	Pumas	1	810
2019-2020	Clausura	93	Evelyn Monserrat Fernández	Tijuana	1	283
2019-2020	Clausura	94	Esmeralda Verdugo	Tijuana	1	664
2019-2020	Clausura	95	Inglis Yoana Hernández	Tijuana	1	778
2019-2020	Clausura	96	Dalia Isabel Molina	M. Morelia	1	745
2019-2020	Clausura	97	María Guadalupe Cruzaley	M. Morelia	1	762
2019-2020	Clausura	98	Michell Cecilia Guerrero	M. Morelia	1	900
2019-2020	Clausura	99	Diana Elizabeth Anguiano	Puebla	1	893
2019-2020	Clausura	100	Claudia Magdalena Sánchez	Necaxa	1	120
2019-2020	Clausura	101	Dariana Rubio	Necaxa	1	464
2019-2020	Clausura	102	Libeth Paulina Castro	Necaxa	1	692
2019-2020	Clausura	103	Fanny Lizeth Grano	Necaxa	1	810
2019-2020	Clausura	104	Nayeli Munguía	Atlético de San Luis	1	153
2019-2020	Clausura	105	Ramona Guadalupe Paredes	Atlético de San Luis	1	172
2019-2020	Clausura	106	Isabel Kasis	Atlético de San Luis	1	193
2019-2020	Clausura	107	Karime Abud	Toluca	1	452
2019-2020	Clausura	108	Karla Katia Saavedra	Toluca	1	743
2019-2020	Clausura	109	Yamanic Nahomi Martínez	Toluca	1	810
2019-2020	Clausura	110	Silvia Elicerio	FC Juárez	1	415
2019-2020	Clausura	111	Jazmín Montserrat López	Querétaro	1	720
2019-2020	Clausura	112	Karen Elizabeth Hernández	Querétaro	1	800
2019-2020	Clausura	113	Sofia Alvarez	Querétaro	1	874
2019-2020	Clausura	114	Joseline Andrea Hernández	Santos Laguna	1	508
2019-2020	Clausura	115	Esmeralda Guadalupe Zamarron	Santos Laguna	1	572
2019-2020	Clausura	116	Daniela Delgado	Santos Laguna	1	688
2020-2021	Apertura	1	Katty Martínez	Tigres	18	1299
2020-2021	Apertura	2	Alison Hecnary González	Atlas	17	1485
2020-2021	Apertura	3	Mónica Desiree Monsiváis	Rayadas	13	1155
2020-2021	Apertura	4	Alicia Cervantes	Guadalajara	12	1146
2020-2021	Apertura	5	Daniela Espinosa	América	12	1363
2020-2021	Apertura	6	Sandra Stephany Mayor	Tigres	10	1341
2020-2021	Apertura	7	Adriana Iturbide	Atlas	9	1310
2020-2021	Apertura	8	Christina Marie Burkenroad	Rayadas	9	1094
2020-2021	Apertura	9	Esbeydi Viridiana Salazar	Pachuca	8	954
2020-2021	Apertura	10	Betzy Casandra Cuevas	América	7	1428
2020-2021	Apertura	11	Renae Nicole Cuéllar	Tijuana	7	1260
2020-2021	Apertura	12	Dania Nicole Pérez	Guadalajara	6	1176
2020-2021	Apertura	13	Christian Carolina Jaramillo	Guadalajara	6	1342
2020-2021	Apertura	14	Edna Fabiola Santamaria	Pumas	6	1002
2020-2021	Apertura	15	Lizette Montserrat Rodríguez	Querétaro	6	877
2020-2021	Apertura	16	Belén De Jesús Cruz	Tigres	5	1134
2020-2021	Apertura	17	Joana Robles	Atlas	5	1436
2020-2021	Apertura	18	María Guadalupe Sánchez	Guadalajara	5	1413
2020-2021	Apertura	19	Isabel Kasis	Atlético de San Luis	5	1339
2020-2021	Apertura	20	Lucero Ximena Cuevas	León	5	1475
2020-2021	Apertura	21	Atzimba Casas	FC Juárez	5	1048
2020-2021	Apertura	22	María Fernanda Elizondo	Tigres	4	406
2020-2021	Apertura	23	Lizbeth Jacqueline Ovalle	Tigres	4	1228
2020-2021	Apertura	24	Daniela Lizbeth Solís	Rayadas	4	1210
2020-2021	Apertura	25	Rebeca Bernal	Rayadas	4	1462
2020-2021	Apertura	26	Norma Luz Irene Duarte	Guadalajara	4	751
2020-2021	Apertura	27	Liliana Rodríguez	Pumas	4	610
2020-2021	Apertura	28	Daniela Itzaxaya García	Pumas	4	1350
2020-2021	Apertura	29	Paola Estefanía Alemán	Atlético de San Luis	4	1126
2020-2021	Apertura	30	Daniela Calderón	León	4	710
2020-2021	Apertura	31	Estefany Elizabeth Hernández	Necaxa	4	1169
2020-2021	Apertura	32	Marcia Paola García	Atlas	3	542
2020-2021	Apertura	33	Claudia Fabiola Ibarra	Atlas	3	679
2020-2021	Apertura	34	Dinora Lizeth Garza	Rayadas	3	528
2020-2021	Apertura	35	Aylin Ariana Aviléz	Rayadas	3	553
2020-2021	Apertura	36	Jaquelín García	Pumas	3	754
2020-2021	Apertura	37	Anisa Raquel Guajardo	Pumas	3	909
2020-2021	Apertura	38	Karym Iturbe	Querétaro	3	736
2020-2021	Apertura	39	Leidy Lizeth Ramos	Querétaro	3	963
2020-2021	Apertura	40	Mayra Alejandra Santana	Querétaro	3	1335
2020-2021	Apertura	41	Blanky Denisse Serrano	Pachuca	3	924
2020-2021	Apertura	42	Lizbeth Ángeles	Pachuca	3	1126
2020-2021	Apertura	43	Olga Anahí Trasviña	Santos Laguna	3	947
2020-2021	Apertura	44	Alexia Nayeli Villanueva	Santos Laguna	3	1134
2020-2021	Apertura	45	Cinthya Peraza	Santos Laguna	3	1317
2020-2021	Apertura	46	Alexxandra Ramírez	Santos Laguna	3	1466
2020-2021	Apertura	47	Liliana Hernández	Mazatlán FC	3	991
2020-2021	Apertura	48	Estefania Izaguirre	Atlético de San Luis	3	1284
2020-2021	Apertura	49	Daniela Carrandi	Atlético de San Luis	3	1411
2020-2021	Apertura	50	María José López	Puebla	3	1118
2020-2021	Apertura	51	Karla Daniela Zempoalteca	Cruz Azul	3	861
2020-2021	Apertura	52	Karime Abud	Cruz Azul	3	1064
2020-2021	Apertura	53	Dulce Maria Alvarado	Necaxa	3	1337
2020-2021	Apertura	54	Natalia Inés Gómez Junco	Tigres	2	306
2020-2021	Apertura	55	Liliana Mercado	Tigres	2	1350
2020-2021	Apertura	56	Isabella Amyx	Atlas	2	170
2020-2021	Apertura	57	Norma Janeth Hernández	Atlas	2	1297
2020-2021	Apertura	58	Yamile Azenek Franco	Rayadas	2	664
2020-2021	Apertura	59	Diana Laura García	Rayadas	2	1275
2020-2021	Apertura	60	Joseline Montoya	Guadalajara	2	605
2020-2021	Apertura	61	Dalia Isabel Molina	América	2	591
2020-2021	Apertura	62	Dorian Montserrat Hernández	América	2	975
2020-2021	Apertura	63	Selene Itzel Valera	América	2	1154
2020-2021	Apertura	64	Marlyn Margoth Campa	América	2	1220
2020-2021	Apertura	65	Paola Chavero	Pumas	2	311
2020-2021	Apertura	66	Mayra Fernanda Ríos	Querétaro	2	805
2020-2021	Apertura	67	Karla Paola Nieto	Pachuca	2	1440
2020-2021	Apertura	68	Estela Gómez	Santos Laguna	2	777
2020-2021	Apertura	69	Fátima Guadalupe Bracamonte	Mazatlán FC	2	338
2020-2021	Apertura	70	Melisa Alejandra Ramos	Mazatlán FC	2	943
2020-2021	Apertura	71	Citlali Guadalupe Hernández	Atlético de San Luis	2	911
2020-2021	Apertura	72	Kenya García	Atlético de San Luis	2	1530
2020-2021	Apertura	73	Andrea Alejandra Ortega	Puebla	2	687
2020-2021	Apertura	74	Brenda Noemí Viramontes	León	2	774
2020-2021	Apertura	75	Sanjuana De Jesús Muñoz	León	2	1155
2020-2021	Apertura	76	Rebeca Villuendas	Cruz Azul	2	569
2020-2021	Apertura	77	Mariel Román	Toluca	2	710
2020-2021	Apertura	78	Zaira Carolina Miranda	Toluca	2	846
2020-2021	Apertura	79	Arlett Tovar	Toluca	2	1430
2020-2021	Apertura	80	María Natalia Mauleon	Toluca	2	1472
2020-2021	Apertura	81	Valeria Abigail Barajas	Tijuana	2	573
2020-2021	Apertura	82	Carmen Angelica González	FC Juárez	2	626
2020-2021	Apertura	83	Selena Carolina Castillo	FC Juárez	2	1223
2020-2021	Apertura	84	Cindy Guadalupe Caro	FC Juárez	2	1292
2020-2021	Apertura	85	María Akemi Yokoyama	Tigres	1	298
2020-2021	Apertura	86	Bianca Elissa Sierra	Tigres	1	987
2020-2021	Apertura	87	Nancy Guadalupe Antonio	Tigres	1	1062
2020-2021	Apertura	88	Natalia Villarreal	Tigres	1	1373
2020-2021	Apertura	89	Vanessa González	Atlas	1	723
2020-2021	Apertura	90	Zellyka Guadalupe Arce	Atlas	1	925
2020-2021	Apertura	91	María Fernanda Daniela Pérez	Atlas	1	1503
2020-2021	Apertura	92	Diana Laura Evangelista	Rayadas	1	1054
2020-2021	Apertura	93	Yashira Yuleth Barrientos	Guadalajara	1	230
2020-2021	Apertura	94	Anette Natalia Vázquez	Guadalajara	1	253
2020-2021	Apertura	95	Victoria Lizbeth Acevedo	Guadalajara	1	306
2020-2021	Apertura	96	María Andrea Sánchez	Guadalajara	1	992
2020-2021	Apertura	97	Michelle González	Guadalajara	1	1482
2020-2021	Apertura	98	Miriam Vanessa García	Guadalajara	1	1485
2020-2021	Apertura	99	Zaira Moreno	América	1	118
2020-2021	Apertura	100	Janae Chantell González	América	1	276
2020-2021	Apertura	101	Jennifer Justine Muñoz	América	1	392
2020-2021	Apertura	102	Verónica Raquel Pérez	América	1	697
2020-2021	Apertura	103	Eva Beatriz González	América	1	723
2020-2021	Apertura	104	Jana Alexandra Gutiérrez	América	1	959
2020-2021	Apertura	105	Ana Gabriela Lozada	América	1	1023
2020-2021	Apertura	106	Jocelyn Marie Orejel	América	1	1228
2020-2021	Apertura	107	Hireri Velázquez	Pumas	1	95
2020-2021	Apertura	108	Laura Herrera	Pumas	1	662
2020-2021	Apertura	109	Dirce Delgado	Pumas	1	757
2020-2021	Apertura	110	Maritza Dardane Maldonado	Querétaro	1	774
2020-2021	Apertura	111	Sofia Alvarez	Querétaro	1	795
2020-2021	Apertura	112	Jazmín Enrigue	Querétaro	1	906
2020-2021	Apertura	113	Valeria Aurora Miranda	Querétaro	1	1035
2020-2021	Apertura	114	Fátima Servín	Querétaro	1	1096
2020-2021	Apertura	115	Alondra Karime Camargo	Querétaro	1	1530
2020-2021	Apertura	116	Mónica Ocampo	Pachuca	1	76
2020-2021	Apertura	117	Berenice Muñoz	Pachuca	1	311
2020-2021	Apertura	118	Lourdes Sofía Martínez	Pachuca	1	384
2020-2021	Apertura	119	Yanin Madrid	Pachuca	1	472
2020-2021	Apertura	120	Karla Yolanda Jiménez	Pachuca	1	503
2020-2021	Apertura	121	Fátima Monserrat Arellano	Pachuca	1	964
2020-2021	Apertura	122	Mónica Rose Alvarado	Pachuca	1	1305
2020-2021	Apertura	123	Diana Paola Monroy	Pachuca	1	1386
2020-2021	Apertura	124	Esmeralda Guadalupe Zamarron	Santos Laguna	1	394
2020-2021	Apertura	125	Lucero Lara	Santos Laguna	1	1208
2020-2021	Apertura	126	Daniela Delgado	Santos Laguna	1	1476
2020-2021	Apertura	127	Valeria Lagunes	Mazatlán FC	1	288
2020-2021	Apertura	128	Yahaira Esmeralda Flores	Mazatlán FC	1	301
2020-2021	Apertura	129	Melissa Leilani Arredondo	Mazatlán FC	1	882
2020-2021	Apertura	130	Magaly Cortés	Mazatlán FC	1	930
2020-2021	Apertura	131	Michell Cecilia Guerrero	Mazatlán FC	1	1170
2020-2021	Apertura	132	Casandra Montero	Mazatlán FC	1	1484
2020-2021	Apertura	133	Paola Andrea Montoya	Atlético de San Luis	1	337
2020-2021	Apertura	134	Karen Melina Vázquez	Atlético de San Luis	1	1380
2020-2021	Apertura	135	Paola Elizabeth Urbieta	Atlético de San Luis	1	1530
2020-2021	Apertura	136	Alejandra Zoe Tapia	Puebla	1	412
2020-2021	Apertura	137	Emily Misdiel González	Puebla	1	443
2020-2021	Apertura	138	Lía Betsabé Morán	Puebla	1	1091
2020-2021	Apertura	139	Teresa Guadalupe Worbis	Puebla	1	1273
2020-2021	Apertura	140	Mariam Nataly Castro	Puebla	1	1407
2020-2021	Apertura	141	Diana Elizabeth Anguiano	Puebla	1	1522
2020-2021	Apertura	142	Brenda Esmeralda Díaz	León	1	158
2020-2021	Apertura	143	Dalia Nailea Vidrio	León	1	366
2020-2021	Apertura	144	Claudia Fernanda Cid	León	1	1024
2020-2021	Apertura	145	Joselyn De La Rosa	León	1	1056
2020-2021	Apertura	146	Esmeralda Verdugo	León	1	1334
2020-2021	Apertura	147	Sonia Vázquez	León	1	1434
2020-2021	Apertura	148	Martha Natalia Enciso	Cruz Azul	1	544
2020-2021	Apertura	149	Alejandra Guadalupe Curiel	Cruz Azul	1	624
2020-2021	Apertura	150	Elisa Paola Espino	Cruz Azul	1	807
2020-2021	Apertura	151	Brenda León	Cruz Azul	1	1165
2020-2021	Apertura	152	Paola González	Cruz Azul	1	1167
2020-2021	Apertura	153	Marylin Viridiana Díaz	Cruz Azul	1	1530
2020-2021	Apertura	154	Brenda Nayeli Carvajal	Toluca	1	342
2020-2021	Apertura	155	Karen Becerril	Toluca	1	533
2020-2021	Apertura	156	Destinney Rosalía Duron	Toluca	1	657
2020-2021	Apertura	157	Yamanic Nahomi Martínez	Toluca	1	796
2020-2021	Apertura	158	Karla Lorena Martínez	Toluca	1	1437
2020-2021	Apertura	159	Noemí Granados	Toluca	1	1530
2020-2021	Apertura	160	Isabel Cristina Fonseca	Tijuana	1	413
2020-2021	Apertura	161	Sheila Odeth Pulido	Tijuana	1	872
2020-2021	Apertura	162	Nancy Zaragoza	Tijuana	1	948
2020-2021	Apertura	163	Jazmin Cristal Aguas	Tijuana	1	961
2020-2021	Apertura	164	Samantha Arellano	Tijuana	1	1078
2020-2021	Apertura	165	Karen Elizabeth Hernández	Tijuana	1	1251
2020-2021	Apertura	166	Yadira Toraya	Tijuana	1	1402
2020-2021	Apertura	167	Celeste Alejandra Vidal	FC Juárez	1	880
2020-2021	Apertura	168	Melissa Aideé Sosa	FC Juárez	1	989
2020-2021	Apertura	169	Saira Cecilia López	Necaxa	1	1147
2020-2021	Apertura	170	Libeth Paulina Castro	Necaxa	1	1239
2020-2021	Apertura	171	Brianda Escobedo	Necaxa	1	1265
2020-2021	Clausura	1	Alison Hecnary González	Atlas	18	1411
2020-2021	Clausura	2	Alicia Cervantes	Guadalajara	17	1294
2020-2021	Clausura	3	Daniela Lizbeth Solís	Rayadas	11	1183
2020-2021	Clausura	4	Renae Nicole Cuéllar	Tijuana	11	1530
2020-2021	Clausura	5	Sandra Stephany Mayor	Tigres	10	1508
2020-2021	Clausura	6	Aylin Ariana Aviléz	Rayadas	9	608
2020-2021	Clausura	7	Joseline Montoya	Guadalajara	8	1484
2020-2021	Clausura	8	Alejandra Guadalupe Curiel	Cruz Azul	8	1302
2020-2021	Clausura	9	Cinthya Peraza	Santos Laguna	8	1488
2020-2021	Clausura	10	Katty Martínez	Tigres	7	740
2020-2021	Clausura	11	Christina Marie Burkenroad	Rayadas	7	869
2020-2021	Clausura	12	Esbeydi Viridiana Salazar	Pachuca	7	1138
2020-2021	Clausura	13	Alexxandra Ramírez	Santos Laguna	7	1420
2020-2021	Clausura	14	Belén De Jesús Cruz	Tigres	6	746
2020-2021	Clausura	15	Mónica Desiree Monsiváis	Rayadas	6	871
2020-2021	Clausura	16	Mónica Ocampo	Pachuca	6	1128
2020-2021	Clausura	17	Melisa Alejandra Ramos	Mazatlán FC	6	1365
2020-2021	Clausura	18	Teresa Guadalupe Worbis	Puebla	6	1186
2020-2021	Clausura	19	Christian Carolina Jaramillo	Guadalajara	5	1134
2020-2021	Clausura	20	Marlyn Margoth Campa	Pumas	5	847
2020-2021	Clausura	21	Daniela Espinosa	América	5	1285
2020-2021	Clausura	22	Maritza Dardane Maldonado	Querétaro	5	1004
2020-2021	Clausura	23	Lizette Montserrat Rodríguez	Querétaro	5	1299
2020-2021	Clausura	24	Isabella Gutiérrez	Guadalajara	4	714
2020-2021	Clausura	25	Ana Rosa García	Atlas	4	993
2020-2021	Clausura	26	Edna Fabiola Santamaria	Pumas	4	1262
2020-2021	Clausura	27	María Natalia Mauleon	Toluca	4	1094
2020-2021	Clausura	28	Arlett Tovar	Toluca	4	1530
2020-2021	Clausura	29	Daniela Calderón	León	4	1308
2020-2021	Clausura	30	Atzimba Casas	FC Juárez	4	1380
2020-2021	Clausura	31	Daniela Carrandi	Atlético de San Luis	4	1322
2020-2021	Clausura	32	Blanca María Solís	Tigres	3	265
2020-2021	Clausura	33	Lizbeth Jacqueline Ovalle	Tigres	3	532
2020-2021	Clausura	34	María Guadalupe Sánchez	Tigres	3	1417
2020-2021	Clausura	35	Anette Natalia Vázquez	Guadalajara	3	995
2020-2021	Clausura	36	Marcia Paola García	Atlas	3	821
2020-2021	Clausura	37	Dinora Lizeth Garza	Pumas	3	1111
2020-2021	Clausura	38	Daniela Itzaxaya García	Pumas	3	1250
2020-2021	Clausura	39	Mayra Alejandra Pelayo-bernal	América	3	763
2020-2021	Clausura	40	Dorian Montserrat Hernández	América	3	1242
2020-2021	Clausura	41	Eva Beatriz González	América	3	1347
2020-2021	Clausura	42	Janelly Farias	América	3	1350
2020-2021	Clausura	43	Alexia Nayeli Villanueva	Santos Laguna	3	943
2020-2021	Clausura	44	Rosa Iris Aguiar	Tijuana	3	811
2020-2021	Clausura	45	Magaly Cortés	Mazatlán FC	3	1368
2020-2021	Clausura	46	Casandra Montero	Mazatlán FC	3	1512
2020-2021	Clausura	47	Yazmin Araceli Álvarez	León	3	1361
2020-2021	Clausura	48	Sonia Vázquez	León	3	1475
2020-2021	Clausura	49	Estefany Elizabeth Hernández	Necaxa	3	654
2020-2021	Clausura	50	Stephanie Baz	Necaxa	3	1194
2020-2021	Clausura	51	Paola Estefanía Alemán	Atlético de San Luis	3	754
2020-2021	Clausura	52	Isabel Kasis	Atlético de San Luis	3	1214
2020-2021	Clausura	53	Estefania Izaguirre	Atlético de San Luis	3	1379
2020-2021	Clausura	54	Miriam Castillo	Guadalajara	2	1371
2020-2021	Clausura	55	Diana Laura Evangelista	Rayadas	2	1070
2020-2021	Clausura	56	Dania Nicole Pérez	Rayadas	2	1484
2020-2021	Clausura	57	Laura Herrera	Pumas	2	364
2020-2021	Clausura	58	Alice Fernanda Soto	Pachuca	2	244
2020-2021	Clausura	59	Andrea Balcazar	Pachuca	2	502
2020-2021	Clausura	60	Mónica Rose Alvarado	Pachuca	2	1038
2020-2021	Clausura	61	Karen Alejandra Díaz	Pachuca	2	1500
2020-2021	Clausura	62	Destinney Rosalía Duron	Toluca	2	909
2020-2021	Clausura	63	Zaira Carolina Miranda	Toluca	2	1136
2020-2021	Clausura	64	Yamanic Nahomi Martínez	Toluca	2	1530
2020-2021	Clausura	65	Daniela Frank Flores	América	2	824
2020-2021	Clausura	66	Karime Abud	Cruz Azul	2	885
2020-2021	Clausura	67	Susana Romero	Cruz Azul	2	1053
2020-2021	Clausura	68	Rebeca Villuendas	Cruz Azul	2	1432
2020-2021	Clausura	69	Paola González	Cruz Azul	2	1530
2020-2021	Clausura	70	Olga Anahí Trasviña	Santos Laguna	2	520
2020-2021	Clausura	71	Joseline Andrea Hernández	Santos Laguna	2	1133
2020-2021	Clausura	72	Brenda Noemí Viramontes	Querétaro	2	566
2020-2021	Clausura	73	Fátima Servín	Querétaro	2	914
2020-2021	Clausura	74	Liliana Hernández	Mazatlán FC	2	376
2020-2021	Clausura	75	Claudia Fernanda Cid	León	2	563
2020-2021	Clausura	76	Saira Cecilia López	Necaxa	2	731
2020-2021	Clausura	77	Ibeth López	Puebla	2	364
2020-2021	Clausura	78	Mariana Ramos	Puebla	2	773
2020-2021	Clausura	79	María José López	Puebla	2	1530
2020-2021	Clausura	80	Silvia Elicerio	FC Juárez	2	971
2020-2021	Clausura	81	Miah Alexia Zuazua	FC Juárez	2	1240
2020-2021	Clausura	82	Celeste Alejandra Vidal	FC Juárez	2	1404
2020-2021	Clausura	83	Gabriela Rocío Álvarez	FC Juárez	2	1485
2020-2021	Clausura	84	Kimberly Karina Reséndiz	Atlético de San Luis	2	915
2020-2021	Clausura	85	María Fernanda Elizondo	Tigres	1	261
2020-2021	Clausura	86	Nancy Guadalupe Antonio	Tigres	1	1270
2020-2021	Clausura	87	Greta Alejandra Espinoza	Tigres	1	1428
2020-2021	Clausura	88	Liliana Mercado	Tigres	1	1440
2020-2021	Clausura	89	Diana Jaqueline Rodríguez	Guadalajara	1	1411
2020-2021	Clausura	90	Damaris Michel Godínez	Guadalajara	1	1508
2020-2021	Clausura	91	Alexa Daniela Curiel	Atlas	1	182
2020-2021	Clausura	92	Valeria Razo	Atlas	1	439
2020-2021	Clausura	93	Karen Andrea García	Atlas	1	1338
2020-2021	Clausura	94	María Fernanda Daniela Pérez	Atlas	1	1355
2020-2021	Clausura	95	Vanessa González	Atlas	1	1369
2020-2021	Clausura	96	Yamile Azenek Franco	Rayadas	1	381
2020-2021	Clausura	97	Mónica Irina Flores	Rayadas	1	795
2020-2021	Clausura	98	Rebeca Bernal	Rayadas	1	1516
2020-2021	Clausura	99	Patricia De María Jardón	Pumas	1	132
2020-2021	Clausura	100	Jaquelín García	Pumas	1	348
2020-2021	Clausura	101	Paola Chavero	Pumas	1	584
2020-2021	Clausura	102	Marylin Viridiana Díaz	Pumas	1	646
2020-2021	Clausura	103	Liliana Rodríguez	Pumas	1	985
2020-2021	Clausura	104	Dania Belén Padilla	Pumas	1	1338
2020-2021	Clausura	105	Dirce Delgado	Pumas	1	1503
2020-2021	Clausura	106	Ana Paola López	Pachuca	1	788
2020-2021	Clausura	107	Lizbeth Ángeles	Pachuca	1	1443
2020-2021	Clausura	108	Diana Michelle Guatemala	Toluca	1	143
2020-2021	Clausura	109	Karen Becerril	Toluca	1	807
2020-2021	Clausura	110	Karla Lorena Martínez	Toluca	1	954
2020-2021	Clausura	111	María Fernanda Piña	América	1	232
2020-2021	Clausura	112	Jana Alexandra Gutiérrez	América	1	856
2020-2021	Clausura	113	Itzel Cruz	Cruz Azul	1	546
2020-2021	Clausura	114	Martha Natalia Enciso	Cruz Azul	1	832
2020-2021	Clausura	115	Ana Gabriela Huerta	Cruz Azul	1	908
2020-2021	Clausura	116	Daniela Janet Monroy	Cruz Azul	1	1295
2020-2021	Clausura	117	Esmeralda Guadalupe Zamarron	Santos Laguna	1	239
2020-2021	Clausura	118	Isela Guadalupe Ojeda	Santos Laguna	1	667
2020-2021	Clausura	119	Karym Iturbe	Querétaro	1	479
2020-2021	Clausura	120	Daniela Sánchez	Querétaro	1	864
2020-2021	Clausura	121	Mayra Alejandra Santana	Querétaro	1	1169
2020-2021	Clausura	122	Jazmín Enrigue	Querétaro	1	1395
2020-2021	Clausura	123	Alondra Karime Camargo	Querétaro	1	1530
2020-2021	Clausura	124	Nancy Zaragoza	Tijuana	1	383
2020-2021	Clausura	125	Dulce Maria Alvarado	Tijuana	1	1200
2020-2021	Clausura	126	Alma Verania López	Mazatlán FC	1	540
2020-2021	Clausura	127	Janae Chantell González	Mazatlán FC	1	1087
2020-2021	Clausura	128	Dalia Nailea Vidrio	León	1	622
2020-2021	Clausura	129	Lucero Ximena Cuevas	León	1	723
2020-2021	Clausura	130	Paulina Gómez	León	1	887
2020-2021	Clausura	131	Joselyn De La Rosa	León	1	1314
2020-2021	Clausura	132	Sanjuana De Jesús Muñoz	León	1	1412
2020-2021	Clausura	133	María José Acosta	Necaxa	1	376
2020-2021	Clausura	134	Iraida Guadalupe Fernández	Necaxa	1	407
2020-2021	Clausura	135	Reyna Sabina Velázquez	Necaxa	1	661
2020-2021	Clausura	136	Brianda Escobedo	Necaxa	1	1081
2020-2021	Clausura	137	Fanny Lizeth Grano	Necaxa	1	1260
2020-2021	Clausura	138	Dayana Joselyn Cazares	Puebla	1	246
2020-2021	Clausura	139	Jessica Arely Vázquez	FC Juárez	1	914
2020-2021	Clausura	140	Daniela Auza	FC Juárez	1	1047
2020-2021	Clausura	141	Karen Pamela Loya	FC Juárez	1	1312
2020-2021	Clausura	142	Paola Elizabeth Urbieta	Atlético de San Luis	1	1203
2020-2021	Clausura	143	Andrea América Ibarra	Atlético de San Luis	1	1206
2020-2021	Clausura	144	Citlali Guadalupe Hernández	Atlético de San Luis	1	1215
2020-2021	Clausura	145	Edith Deyanira Carmona	Atlético de San Luis	1	1414
2021-2022	Apertura	1	Alicia Cervantes	Guadalajara	17	1493
2021-2022	Apertura	2	Renae Nicole Cuéllar	Tijuana	15	1530
2021-2022	Apertura	3	Mónica Desiree Monsiváis	Rayadas	14	1315
2021-2022	Apertura	4	Sandra Stephany Mayor	Tigres	13	1257
2021-2022	Apertura	5	Alison Hecnary González	Atlas	13	1327
2021-2022	Apertura	6	Katty Martínez	Tigres	12	937
2021-2022	Apertura	7	Daniela Espinosa	América	11	1359
2021-2022	Apertura	8	Alexia Nayeli Villanueva	Santos Laguna	11	1446
2021-2022	Apertura	9	Diana Laura Evangelista	Rayadas	9	1423
2021-2022	Apertura	10	Esbeydi Viridiana Salazar	Pachuca	9	994
2021-2022	Apertura	11	Cinthya Peraza	Santos Laguna	8	1471
2021-2022	Apertura	12	Aylin Ariana Aviléz	Rayadas	7	1102
2021-2022	Apertura	13	María Guadalupe Sánchez	Tigres	6	1238
2021-2022	Apertura	14	Rebeca Bernal	Rayadas	6	1530
2021-2022	Apertura	15	Marcia Paola García	Atlas	6	1108
2021-2022	Apertura	16	Christian Carolina Jaramillo	Guadalajara	6	977
2021-2022	Apertura	17	Belén De Jesús Cruz	Tigres	5	921
2021-2022	Apertura	18	Alexxandra Ramírez	Santos Laguna	5	1200
2021-2022	Apertura	19	Paola Del Carmen Villamizar	Tijuana	5	686
2021-2022	Apertura	20	Fanny Lizeth Grano	Necaxa	5	1530
2021-2022	Apertura	21	Leidy Lizeth Ramos	Querétaro	5	866
2021-2022	Apertura	22	Lizbeth Jacqueline Ovalle	Tigres	4	1268
2021-2022	Apertura	23	Michelle González	Guadalajara	4	1199
2021-2022	Apertura	24	Joseline Montoya	Guadalajara	4	1468
2021-2022	Apertura	25	Verónica Charlyn Corral	Pachuca	4	878
2021-2022	Apertura	26	Natalia Inés Gómez Junco	Pachuca	4	940
2021-2022	Apertura	27	Verónica Martins	Puebla	4	461
2021-2022	Apertura	28	Samantha Kassandra Calvillo	Necaxa	4	1455
2021-2022	Apertura	29	Jaquelín García	Querétaro	4	1095
2021-2022	Apertura	30	Anisa Raquel Guajardo	León	4	890
2021-2022	Apertura	31	Daniela Calderón	León	4	1278
2021-2022	Apertura	32	Adriana Iturbide	Atlas	3	827
2021-2022	Apertura	33	Daniela Frank Flores	América	3	324
2021-2022	Apertura	34	Kiana Angélica Palacios	América	3	822
2021-2022	Apertura	35	Betzy Casandra Cuevas	América	3	1390
2021-2022	Apertura	36	Janelly Farias	América	3	1440
2021-2022	Apertura	37	Daniela Delgado	Santos Laguna	3	1326
2021-2022	Apertura	38	Angelina Nicole Hix	Tijuana	3	1157
2021-2022	Apertura	39	Michelle Francini Montero	Cruz Azul	3	345
2021-2022	Apertura	40	Karime Abud	Cruz Azul	3	1052
2021-2022	Apertura	41	Magaly Cortés	Cruz Azul	3	1428
2021-2022	Apertura	42	Lucero Ximena Cuevas	Pachuca	3	689
2021-2022	Apertura	43	Luz Aida Duarte	Pumas	3	451
2021-2022	Apertura	44	Natalia Macías Valadez	Pumas	3	597
2021-2022	Apertura	45	Marlyn Margoth Campa	Pumas	3	1050
2021-2022	Apertura	46	María Del Pilar Aceves	Puebla	3	567
2021-2022	Apertura	47	Estefany Elizabeth Hernández	Puebla	3	691
2021-2022	Apertura	48	Destinney Rosalía Duron	Toluca	3	347
2021-2022	Apertura	49	Diana Michelle Guatemala	Toluca	3	1196
2021-2022	Apertura	50	Emily Misdiel González	Atlético de San Luis	3	998
2021-2022	Apertura	51	Ana Karen López	Atlético de San Luis	3	1313
2021-2022	Apertura	52	Miah Alexia Zuazua	FC Juárez	3	1150
2021-2022	Apertura	53	Alejandra Guadalupe Curiel	FC Juárez	3	1262
2021-2022	Apertura	54	María Fernanda Elizondo	Tigres	2	142
2021-2022	Apertura	55	Jana Alexandra Gutiérrez	Tigres	2	890
2021-2022	Apertura	56	Lydia Nayeli Rangel	Tigres	2	993
2021-2022	Apertura	57	Greta Alejandra Espinoza	Tigres	2	1530
2021-2022	Apertura	58	Christina Marie Burkenroad	Rayadas	2	620
2021-2022	Apertura	59	Diana Laura García	Rayadas	2	1415
2021-2022	Apertura	60	Claudia Fabiola Ibarra	Atlas	2	511
2021-2022	Apertura	61	Verónica Raquel Pérez	Atlas	2	1281
2021-2022	Apertura	62	Mayra Alejandra Pelayo-bernal	América	2	419
2021-2022	Apertura	63	Dorian Montserrat Hernández	América	2	1015
2021-2022	Apertura	64	Mariela Jiménez	Santos Laguna	2	305
2021-2022	Apertura	65	Nancy Lizbeth Quiñones	Santos Laguna	2	755
2021-2022	Apertura	66	Estela Gómez	Santos Laguna	2	1270
2021-2022	Apertura	67	Dulce Maria Alvarado	Tijuana	2	925
2021-2022	Apertura	68	Brenda León	Cruz Azul	2	614
2021-2022	Apertura	69	Dalia Isabel Molina	Cruz Azul	2	1182
2021-2022	Apertura	70	Lizbeth Ángeles	Pachuca	2	885
2021-2022	Apertura	71	Laura Herrera	Pumas	2	985
2021-2022	Apertura	72	Marylin Viridiana Díaz	Pumas	2	1149
2021-2022	Apertura	73	Mariana Ramos	Puebla	2	897
2021-2022	Apertura	74	Ivonne Najar	Puebla	2	1191
2021-2022	Apertura	75	Jessica Liliana Tenorio	Puebla	2	1386
2021-2022	Apertura	76	Flor Rocío Rodríguez	Necaxa	2	888
2021-2022	Apertura	77	Reyna Sabina Velázquez	Necaxa	2	1384
2021-2022	Apertura	78	Fátima Servín	Querétaro	2	1265
2021-2022	Apertura	79	Marta Alexandra Cox Villarreal	León	2	908
2021-2022	Apertura	80	Paulina Gómez	León	2	1126
2021-2022	Apertura	81	Rebeca Villuendas	Atlético de San Luis	2	1513
2021-2022	Apertura	82	Perla Rocío Navarrete	FC Juárez	2	965
2021-2022	Apertura	83	Nancy Guadalupe Antonio	Tigres	1	874
2021-2022	Apertura	84	Liliana Mercado	Tigres	1	1252
2021-2022	Apertura	85	Daniela Lizbeth Solís	Rayadas	1	298
2021-2022	Apertura	86	Yamile Azenek Franco	Rayadas	1	671
2021-2022	Apertura	87	Mariana Cadena	Rayadas	1	1202
2021-2022	Apertura	88	Valeria Razo	Atlas	1	241
2021-2022	Apertura	89	Karen Andrea García	Atlas	1	994
2021-2022	Apertura	90	María Fernanda Daniela Pérez	Atlas	1	1048
2021-2022	Apertura	91	Atzimba Casas	Guadalajara	1	176
2021-2022	Apertura	92	Gabriela Valenzuela	Guadalajara	1	700
2021-2022	Apertura	93	Miriam Castillo	Guadalajara	1	989
2021-2022	Apertura	94	Sarah Jacquelyn Luebbert	América	1	262
2021-2022	Apertura	95	Stephanie Mariana Ribeiro	América	1	472
2021-2022	Apertura	96	María Natalia Mauleon	América	1	662
2021-2022	Apertura	97	Angelique Montserrat Saldivar	América	1	676
2021-2022	Apertura	98	Karen Irasema Luna	América	1	1383
2021-2022	Apertura	99	Olga Anahí Trasviña	Santos Laguna	1	310
2021-2022	Apertura	100	Lucero Lara	Santos Laguna	1	757
2021-2022	Apertura	101	Brenda Vanessa López	Santos Laguna	1	1263
2021-2022	Apertura	102	Esmeralda Verdugo	Tijuana	1	1098
2021-2022	Apertura	103	Joselyn De La Rosa	Tijuana	1	1182
2021-2022	Apertura	104	Sanjuana De Jesús Muñoz	Tijuana	1	1370
2021-2022	Apertura	105	Ana Gabriela Huerta	Cruz Azul	1	323
2021-2022	Apertura	106	Claudia Fernanda Cid	Cruz Azul	1	1305
2021-2022	Apertura	107	Lourdes Sofía Martínez	Pachuca	1	75
2021-2022	Apertura	108	Ana Paola López	Pachuca	1	294
2021-2022	Apertura	109	Linda Ruth Bravo	Pachuca	1	346
2021-2022	Apertura	110	Alice Fernanda Soto	Pachuca	1	472
2021-2022	Apertura	111	Karen Alejandra Díaz	Pachuca	1	973
2021-2022	Apertura	112	Mónica Ocampo	Pachuca	1	1336
2021-2022	Apertura	113	Liliana Rodríguez	Pumas	1	373
2021-2022	Apertura	114	Edna Fabiola Santamaria	Pumas	1	722
2021-2022	Apertura	115	María Akemi Yokoyama	Pumas	1	810
2021-2022	Apertura	116	Daniela Itzaxaya García	Pumas	1	829
2021-2022	Apertura	117	Deneva Cagigas	Pumas	1	1188
2021-2022	Apertura	118	Dinora Lizeth Garza	Pumas	1	1322
2021-2022	Apertura	119	Mariam Nataly Castro	Puebla	1	1076
2021-2022	Apertura	120	Mirelle Arciniega	Puebla	1	1391
2021-2022	Apertura	121	Brenda Vega	Toluca	1	317
2021-2022	Apertura	122	Mariel Román	Toluca	1	697
2021-2022	Apertura	123	Yamanic Nahomi Martínez	Toluca	1	900
2021-2022	Apertura	124	Arlett Tovar	Toluca	1	1112
2021-2022	Apertura	125	Patricia De María Jardón	Toluca	1	1199
2021-2022	Apertura	126	Karen Becerril	Toluca	1	1373
2021-2022	Apertura	127	Alejandra Guerrero	Necaxa	1	602
2021-2022	Apertura	128	Luciana Nicolé García	Necaxa	1	659
2021-2022	Apertura	129	Andrea Monserrat Martínez	Necaxa	1	1298
2021-2022	Apertura	130	María Lourdes Ramírez	Querétaro	1	385
2021-2022	Apertura	131	Mayra Alejandra Santana	Querétaro	1	386
2021-2022	Apertura	132	Daniela Sánchez	Querétaro	1	971
2021-2022	Apertura	133	Sofia Alvarez	Querétaro	1	1313
2021-2022	Apertura	134	Alondra Karime Camargo	Querétaro	1	1375
2021-2022	Apertura	135	Jazmín Enrigue	Querétaro	1	1388
2021-2022	Apertura	136	Sandra Paola Camacho	León	1	273
2021-2022	Apertura	137	Sonia Vázquez	León	1	955
2021-2022	Apertura	138	Sabrina Figueroa	León	1	1065
2021-2022	Apertura	139	Liliana Sánchez	León	1	1485
2021-2022	Apertura	140	Sharon Andrea Barba	Atlético de San Luis	1	230
2021-2022	Apertura	141	Karen Melina Vázquez	Atlético de San Luis	1	474
2021-2022	Apertura	142	Beatriz Parra	Atlético de San Luis	1	848
2021-2022	Apertura	143	Isabel Kasis	Atlético de San Luis	1	1091
2021-2022	Apertura	144	Citlali Guadalupe Hernández	Atlético de San Luis	1	1310
2021-2022	Apertura	145	Alejandra Escobedo	Mazatlán FC	1	291
2021-2022	Apertura	146	Yahaira Esmeralda Flores	Mazatlán FC	1	444
2021-2022	Apertura	147	Montserrat Peña	Mazatlán FC	1	868
2021-2022	Apertura	148	Norma Priscila Gaitan	Mazatlán FC	1	1047
2021-2022	Apertura	149	Alma Verania López	Mazatlán FC	1	1053
2021-2022	Apertura	150	Belkis Karely Escalante	Mazatlán FC	1	1176
2021-2022	Apertura	151	Kimberli Estefania Goytia	FC Juárez	1	600
2021-2022	Apertura	152	Brenda Paola Alvarado	FC Juárez	1	676
2021-2022	Apertura	153	Silvia Elicerio	FC Juárez	1	752
2021-2022	Clausura	1	Alicia Cervantes	Guadalajara	14	1090
2021-2022	Clausura	2	Verónica Charlyn Corral	Pachuca	13	1444
2021-2022	Clausura	3	Sandra Stephany Mayor	Tigres	11	1368
2021-2022	Clausura	4	Scarlett Nefer Camberos	América	11	1214
2021-2022	Clausura	5	Uchenna Grace Kanu	Tigres	10	1135
2021-2022	Clausura	6	Mónica Desiree Monsiváis	Rayadas	9	958
2021-2022	Clausura	7	Katty Martínez	América	9	1245
2021-2022	Clausura	8	Adriana Iturbide	Atlas	9	1255
2021-2022	Clausura	9	Destinney Rosalía Duron	Toluca	9	1322
2021-2022	Clausura	10	Daniela Calderón	León	9	1454
2021-2022	Clausura	11	Mia Renee Fishel	Tigres	8	958
2021-2022	Clausura	12	Beatriz Parra	Atlético de San Luis	8	1223
2021-2022	Clausura	13	Luciana Nicolé García	Necaxa	8	1419
2021-2022	Clausura	14	Christina Marie Burkenroad	Rayadas	7	1184
2021-2022	Clausura	15	Rebeca Bernal	Rayadas	7	1253
2021-2022	Clausura	16	Renae Nicole Cuéllar	Tijuana	7	1340
2021-2022	Clausura	17	Daniela Lizbeth Solís	Rayadas	6	1323
2021-2022	Clausura	18	Diana Laura García	Rayadas	6	1348
2021-2022	Clausura	19	Sarah Jacquelyn Luebbert	América	6	1206
2021-2022	Clausura	20	Sanjuana De Jesús Muñoz	Tijuana	6	1292
2021-2022	Clausura	21	Cinthya Peraza	Santos Laguna	6	1381
2021-2022	Clausura	22	Aylin Ariana Aviléz	Rayadas	5	719
2021-2022	Clausura	23	María Fernanda Elizondo	Tigres	5	236
2021-2022	Clausura	24	Stephanie Mariana Ribeiro	Pumas	5	923
2021-2022	Clausura	25	Magaly Cortés	Cruz Azul	5	851
2021-2022	Clausura	26	Karen Becerril	Toluca	5	1421
2021-2022	Clausura	27	Alexia Nayeli Villanueva	Santos Laguna	5	1158
2021-2022	Clausura	28	Dania Nicole Pérez	Rayadas	4	1030
2021-2022	Clausura	29	Christian Carolina Jaramillo	Guadalajara	4	1140
2021-2022	Clausura	30	Lizbeth Jacqueline Ovalle	Tigres	4	1410
2021-2022	Clausura	31	Mónica Ocampo	Pachuca	4	662
2021-2022	Clausura	32	Esbeydi Viridiana Salazar	Pachuca	4	1079
2021-2022	Clausura	33	Claudia Fabiola Ibarra	Atlas	4	993
2021-2022	Clausura	34	Dalia Isabel Molina	Cruz Azul	4	911
2021-2022	Clausura	35	Daniela Sánchez	Querétaro	4	1128
2021-2022	Clausura	36	Sonia Vázquez	Querétaro	4	1502
2021-2022	Clausura	37	Lydia Nayeli Rangel	Tigres	3	670
2021-2022	Clausura	38	María Natalia Mauleon	América	3	371
2021-2022	Clausura	39	Daniela Espinosa	América	3	868
2021-2022	Clausura	40	Verónica Raquel Pérez	Atlas	3	1419
2021-2022	Clausura	41	Angelina Nicole Hix	Tijuana	3	1032
2021-2022	Clausura	42	Mariel Román	Toluca	3	987
2021-2022	Clausura	43	Diana Michelle Guatemala	Toluca	3	1295
2021-2022	Clausura	44	Jordana Pérez	Atlético de San Luis	3	130
2021-2022	Clausura	45	Emily Misdiel González	Atlético de San Luis	3	548
2021-2022	Clausura	46	Fanny Lizeth Grano	Necaxa	3	1385
2021-2022	Clausura	47	Connie Elizabeth Caliz	Mazatlán FC	3	1261
2021-2022	Clausura	48	Verónica Martins	Puebla	3	362
2021-2022	Clausura	49	Celeste Alejandra Vidal	FC Juárez	3	610
2021-2022	Clausura	50	Jasmine Alexis Casarez	FC Juárez	3	1133
2021-2022	Clausura	51	Diana Laura Evangelista	Rayadas	2	623
2021-2022	Clausura	52	Michelle González	Guadalajara	2	1256
2021-2022	Clausura	53	Casandra Montero	Guadalajara	2	1308
2021-2022	Clausura	54	Joseline Montoya	Guadalajara	2	1385
2021-2022	Clausura	55	Kristal Rubi Soto	Guadalajara	2	1390
2021-2022	Clausura	56	Nicolette Andrea Hernández	América	2	427
2021-2022	Clausura	57	Betzy Casandra Cuevas	América	2	1370
2021-2022	Clausura	58	Janelly Farias	América	2	1460
2021-2022	Clausura	59	Natalia Inés Gómez Junco	Pachuca	2	624
2021-2022	Clausura	60	Lizbeth Ángeles	Pachuca	2	1149
2021-2022	Clausura	61	Zellyka Guadalupe Arce	Atlas	2	1141
2021-2022	Clausura	62	Aerial Lynndonna Chavarin	Pumas	2	487
2021-2022	Clausura	63	Marylin Viridiana Díaz	Pumas	2	1421
2021-2022	Clausura	64	Claudia Fernanda Cid	Cruz Azul	2	765
2021-2022	Clausura	65	Diana Laura García	Cruz Azul	2	1338
2021-2022	Clausura	66	Ana Gabriela Lozada	Cruz Azul	2	1530
2021-2022	Clausura	67	Zaira Carolina Miranda	Toluca	2	506
2021-2022	Clausura	68	Stephanie Baz	Toluca	2	581
2021-2022	Clausura	69	Natalia Judith Colín	Toluca	2	595
2021-2022	Clausura	70	Mariana Díaz Leal	Querétaro	2	963
2021-2022	Clausura	71	Jaquelín García	Querétaro	2	1166
2021-2022	Clausura	72	Mariela Jiménez	Santos Laguna	2	748
2021-2022	Clausura	73	Marcela Valera	Santos Laguna	2	1186
2021-2022	Clausura	74	Flor Rocío Rodríguez	Necaxa	2	561
2021-2022	Clausura	75	Montserrat Peña	Mazatlán FC	2	1178
2021-2022	Clausura	76	Fátima Guadalupe Bracamonte	León	2	664
2021-2022	Clausura	77	María Elena Sainz	Puebla	2	1313
2021-2022	Clausura	78	Dulce Eileen Martínez	Puebla	2	1340
2021-2022	Clausura	79	Alejandra Guadalupe Curiel	FC Juárez	2	643
2021-2022	Clausura	80	Perla Rocío Navarrete	FC Juárez	2	644
2021-2022	Clausura	81	Barbara Klarissa Olivieri	Rayadas	1	111
2021-2022	Clausura	82	Mónica Irina Flores	Rayadas	1	806
2021-2022	Clausura	83	Valeria Del Campo	Rayadas	1	824
2021-2022	Clausura	84	Yamile Azenek Franco	Rayadas	1	1174
2021-2022	Clausura	85	Victoria Lizbeth Acevedo	Guadalajara	1	344
2021-2022	Clausura	86	Karen Irasema Luna	América	1	1025
2021-2022	Clausura	87	Andrea Balcazar	Pachuca	1	340
2021-2022	Clausura	88	Selene Deyanira Cortés	Pachuca	1	511
2021-2022	Clausura	89	Sulma Yaderia Plancarte	Atlas	1	249
2021-2022	Clausura	90	Alejandra Lomelí	Atlas	1	277
2021-2022	Clausura	91	Joana Robles	Atlas	1	771
2021-2022	Clausura	92	Julissa Fernanda Dávila	Atlas	1	876
2021-2022	Clausura	93	Ana Rosa García	Atlas	1	986
2021-2022	Clausura	94	María Fernanda Daniela Pérez	Atlas	1	999
2021-2022	Clausura	95	Karen Andrea García	Atlas	1	1130
2021-2022	Clausura	96	Norma Janeth Hernández	Atlas	1	1250
2021-2022	Clausura	97	Catherine Kyara Rodríguez	Pumas	1	124
2021-2022	Clausura	98	Natalia Macías Valadez	Pumas	1	417
2021-2022	Clausura	99	Edna Fabiola Santamaria	Pumas	1	450
2021-2022	Clausura	100	Paola Chavero	Pumas	1	804
2021-2022	Clausura	101	Deneva Cagigas	Pumas	1	816
2021-2022	Clausura	102	Dinora Lizeth Garza	Pumas	1	921
2021-2022	Clausura	103	Dania Belén Padilla	Pumas	1	1321
2021-2022	Clausura	104	Bibiana Guadalupe Quintos	Pumas	1	1358
2021-2022	Clausura	105	Rosa Iris Aguiar	Tijuana	1	158
2021-2022	Clausura	106	Inglis Yoana Hernández	Tijuana	1	885
2021-2022	Clausura	107	Paola Del Carmen Villamizar	Tijuana	1	898
2021-2022	Clausura	108	Esmeralda Verdugo	Tijuana	1	927
2021-2022	Clausura	109	Dulce Maria Alvarado	Tijuana	1	977
2021-2022	Clausura	110	Annia Stephany Mejía	Tijuana	1	1334
2021-2022	Clausura	111	Joselyn De La Rosa	Tijuana	1	1357
2021-2022	Clausura	112	Karime Abud	Cruz Azul	1	140
2021-2022	Clausura	113	Ana Gabriela Huerta	Cruz Azul	1	506
2021-2022	Clausura	114	Michelle Francini Montero	Cruz Azul	1	553
2021-2022	Clausura	115	Martha Natalia Enciso	Cruz Azul	1	808
2021-2022	Clausura	116	Gabriela Rocío Álvarez	Cruz Azul	1	985
2021-2022	Clausura	117	Tania Paola Morales	Cruz Azul	1	994
2021-2022	Clausura	118	Nancy Zaragoza	Cruz Azul	1	1352
2021-2022	Clausura	119	Karla Lorena Martínez	Toluca	1	1057
2021-2022	Clausura	120	Patricia De María Jardón	Toluca	1	1274
2021-2022	Clausura	121	Itzia Tenahua	Atlético de San Luis	1	416
2021-2022	Clausura	122	Magdalena Carolina Zepeda	Atlético de San Luis	1	680
2021-2022	Clausura	123	Rubí Sarahí Ruvalcaba	Atlético de San Luis	1	698
2021-2022	Clausura	124	Daniela Carrandi	Atlético de San Luis	1	754
2021-2022	Clausura	125	Ana Karen López	Atlético de San Luis	1	765
2021-2022	Clausura	126	Estefania Izaguirre	Atlético de San Luis	1	855
2021-2022	Clausura	127	Isabel Kasis	Atlético de San Luis	1	1182
2021-2022	Clausura	128	Rebeca Villuendas	Atlético de San Luis	1	1292
2021-2022	Clausura	129	Leidy Lizeth Ramos	Querétaro	1	327
2021-2022	Clausura	130	Alondra Karime Camargo	Querétaro	1	898
2021-2022	Clausura	131	Alejandra Montserrat Medina	Querétaro	1	906
2021-2022	Clausura	132	Jazmín Enrigue	Querétaro	1	984
2021-2022	Clausura	133	Estela Gómez	Santos Laguna	1	776
2021-2022	Clausura	134	Joseline Andrea Hernández	Santos Laguna	1	965
2021-2022	Clausura	135	Andrea Alejandra Balderas	Necaxa	1	473
2021-2022	Clausura	136	Saira Cecilia López	Necaxa	1	508
2021-2022	Clausura	137	Brenda León	Necaxa	1	988
2021-2022	Clausura	138	Andrea Monserrat Martínez	Necaxa	1	1082
2021-2022	Clausura	139	Norma Priscila Gaitan	Mazatlán FC	1	486
2021-2022	Clausura	140	María Magalí Del Verdún Cuadrado	Mazatlán FC	1	587
2021-2022	Clausura	141	Michell Cecilia Guerrero	Mazatlán FC	1	728
2021-2022	Clausura	142	Ixchebel Tamara Romero	Mazatlán FC	1	1381
2021-2022	Clausura	143	Alexandra De La Caridad Hernández Ynurreta	León	1	176
2021-2022	Clausura	144	Sandra Paola Camacho	León	1	216
2021-2022	Clausura	145	Dalia Nailea Vidrio	León	1	431
2021-2022	Clausura	146	Marta Alexandra Cox Villarreal	León	1	546
2021-2022	Clausura	147	Yazmin Araceli Álvarez	León	1	1002
2021-2022	Clausura	148	Selena Carolina Castillo	León	1	1209
2021-2022	Clausura	149	Paulina Gómez	León	1	1409
2021-2022	Clausura	150	María Del Pilar Aceves	Puebla	1	402
2021-2022	Clausura	151	Jessica Liliana Tenorio	Puebla	1	598
2021-2022	Clausura	152	Estefany Elizabeth Hernández	Puebla	1	1012
2021-2022	Clausura	153	Yenifer Britany García	FC Juárez	1	129
2021-2022	Clausura	154	Karen Yozaleth González	FC Juárez	1	227
2021-2022	Clausura	155	Susana Romero	FC Juárez	1	405
2021-2022	Clausura	156	Silvia Elicerio	FC Juárez	1	771
2021-2022	Clausura	157	Rubí Iridian Villegas	FC Juárez	1	1075
2021-2022	Clausura	158	Paola González	FC Juárez	1	1086
2021-2022	Clausura	159	Miah Alexia Zuazua	FC Juárez	1	1231
2021-2022	Clausura	160	Andrea Hernández	FC Juárez	1	1277
2022-2023	Apertura	1	Mia Renee Fishel	Tigres	17	1388
2022-2023	Apertura	2	Christina Marie Burkenroad	Rayadas	16	1464
2022-2023	Apertura	3	Kiana Angélica Palacios	América	13	1113
2022-2023	Apertura	4	Verónica Charlyn Corral	Pachuca	12	1485
2022-2023	Apertura	5	Aylin Ariana Aviléz	Rayadas	11	1070
2022-2023	Apertura	6	Angelina Nicole Hix	Tijuana	11	1244
2022-2023	Apertura	7	Renae Nicole Cuéllar	Tijuana	11	1366
2022-2023	Apertura	8	Beatriz Parra	Atlético de San Luis	10	1163
2022-2023	Apertura	9	Sandra Stephany Mayor	Tigres	9	1004
2022-2023	Apertura	10	Alison Hecnary González	América	9	951
2022-2023	Apertura	11	Mariel Román	Toluca	8	1434
2022-2023	Apertura	12	Alicia Cervantes	Guadalajara	7	879
2022-2023	Apertura	13	Lizbeth Jacqueline Ovalle	Tigres	7	1180
2022-2023	Apertura	14	Brenda Woch Da Graca	Toluca	7	1121
2022-2023	Apertura	15	Kristal Rubi Soto	Guadalajara	6	1222
2022-2023	Apertura	16	Christian Carolina Jaramillo	Guadalajara	6	1301
2022-2023	Apertura	17	Uchenna Grace Kanu	Tigres	6	817
2022-2023	Apertura	18	Stephanie Mariana Ribeiro	Pumas	6	767
2022-2023	Apertura	19	Edna Fabiola Santamaria	Querétaro	6	1425
2022-2023	Apertura	20	Mariana Ramos	Necaxa	6	1073
2022-2023	Apertura	21	Diana Laura Evangelista	Rayadas	5	1324
2022-2023	Apertura	22	Lizbeth Ángeles	Pachuca	5	1378
2022-2023	Apertura	23	Aerial Lynndonna Chavarin	Pumas	5	570
2022-2023	Apertura	24	Venicia Gabriela Juárez	Pumas	5	772
2022-2023	Apertura	25	Blanca María Solís	FC Juárez	5	923
2022-2023	Apertura	26	Mariana Valeria Larroquette	León	5	997
2022-2023	Apertura	27	Daniela Calderón	León	5	1486
2022-2023	Apertura	28	Gabriela Valenzuela	Guadalajara	4	1096
2022-2023	Apertura	29	Adriana Iturbide	Guadalajara	4	1181
2022-2023	Apertura	30	Katty Martínez	América	4	701
2022-2023	Apertura	31	Mónica Ocampo	Pachuca	4	1203
2022-2023	Apertura	32	Karla Paola Nieto	Pachuca	4	1346
2022-2023	Apertura	33	Marylin Viridiana Díaz	Pumas	4	1492
2022-2023	Apertura	34	Carolina Paola Venegas	Atlas	4	451
2022-2023	Apertura	35	Claudia Fabiola Ibarra	Atlas	4	740
2022-2023	Apertura	36	Jermaine Seoposenwe	FC Juárez	4	771
2022-2023	Apertura	37	Paola González	FC Juárez	4	1365
2022-2023	Apertura	38	Alexia Nayeli Villanueva	Santos Laguna	4	725
2022-2023	Apertura	39	Desarae Nicolé Félix	Santos Laguna	4	1428
2022-2023	Apertura	40	Carolina Solís	Puebla	4	968
2022-2023	Apertura	41	Magaly Cortés	Mazatlán FC	4	1057
2022-2023	Apertura	42	Diana Laura García	Rayadas	3	1118
2022-2023	Apertura	43	Summer Alora Mason	Tijuana	3	1187
2022-2023	Apertura	44	Daniela Espinosa	Tijuana	3	1488
2022-2023	Apertura	45	Mónica Rose Alvarado	Pachuca	3	955
2022-2023	Apertura	46	Jasmine Alexis Casarez	FC Juárez	3	1437
2022-2023	Apertura	47	Joana Robles	Atlético de San Luis	3	1337
2022-2023	Apertura	48	Julissa Fernanda Dávila	Atlético de San Luis	3	1485
2022-2023	Apertura	49	Lia Mariel Romero	Santos Laguna	3	476
2022-2023	Apertura	50	Alexxandra Ramírez	Santos Laguna	3	838
2022-2023	Apertura	51	Brenda León	Santos Laguna	3	1205
2022-2023	Apertura	52	Leidy Lizeth Ramos	Querétaro	3	895
2022-2023	Apertura	53	Rebeca Villuendas	Puebla	3	757
2022-2023	Apertura	54	Fátima Guadalupe Bracamonte	Puebla	3	1019
2022-2023	Apertura	55	María Elena Sainz	Puebla	3	1530
2022-2023	Apertura	56	Damaris Michel Godínez	Guadalajara	2	1202
2022-2023	Apertura	57	Barbara Klarissa Olivieri	Rayadas	2	628
2022-2023	Apertura	58	Daniela Lizbeth Solís	Rayadas	2	734
2022-2023	Apertura	59	Rebeca Bernal	Rayadas	2	1196
2022-2023	Apertura	60	Anika Elia Rodríguez	Tigres	2	470
2022-2023	Apertura	61	Greta Alejandra Espinoza	Tigres	2	1080
2022-2023	Apertura	62	Scarlett Nefer Camberos	América	2	779
2022-2023	Apertura	63	Aurelie Anne Sophie Kaci	América	2	953
2022-2023	Apertura	64	Nicolette Andrea Hernández	América	2	1173
2022-2023	Apertura	65	Verónica Raquel Pérez	Tijuana	2	1135
2022-2023	Apertura	66	Patricia De María Jardón	Toluca	2	1423
2022-2023	Apertura	67	Marta Alexandra Cox Villarreal	Pachuca	2	1016
2022-2023	Apertura	68	María Andrea Sánchez	Cruz Azul	2	1076
2022-2023	Apertura	69	Claudia Fernanda Cid	Cruz Azul	2	1190
2022-2023	Apertura	70	Ana Gabriela Lozada	Cruz Azul	2	1395
2022-2023	Apertura	71	Rebeca Zavaleta	Pumas	2	1365
2022-2023	Apertura	72	María Magalí Del Verdún Cuadrado	Atlas	2	219
2022-2023	Apertura	73	Tania Paola Morales	Atlas	2	693
2022-2023	Apertura	74	María Fernanda Daniela Pérez	Atlas	2	1262
2022-2023	Apertura	75	Norma Luz Irene Duarte	Atlas	2	1334
2022-2023	Apertura	76	Miah Alexia Zuazua	FC Juárez	2	972
2022-2023	Apertura	77	Miriam Castillo	FC Juárez	2	1259
2022-2023	Apertura	78	Andrea Hernández	FC Juárez	2	1530
2022-2023	Apertura	79	Yashira Yuleth Barrientos	León	2	430
2022-2023	Apertura	80	Lucero Ximena Cuevas	León	2	704
2022-2023	Apertura	81	Liliana Sánchez	León	2	1350
2022-2023	Apertura	82	Denisse Alejandra Rivera	Atlético de San Luis	2	835
2022-2023	Apertura	83	Daniela Carrandi	Atlético de San Luis	2	1112
2022-2023	Apertura	84	Sofía Varela	Santos Laguna	2	375
2022-2023	Apertura	85	Cinthya Peraza	Santos Laguna	2	1056
2022-2023	Apertura	86	Alejandra Guadalupe Curiel	Santos Laguna	2	1107
2022-2023	Apertura	87	Maritza Dardane Maldonado	Querétaro	2	674
2022-2023	Apertura	88	Ximena Elizabeth Rios	Querétaro	2	1400
2022-2023	Apertura	89	Rubí Sarahí Ruvalcaba	Puebla	2	759
2022-2023	Apertura	90	Bianca Esther Mora	Puebla	2	1440
2022-2023	Apertura	91	Valeria Itzel Ríos	Mazatlán FC	2	608
2022-2023	Apertura	92	Melisa Alejandra Ramos	Mazatlán FC	2	957
2022-2023	Apertura	93	Olga Anahí Trasviña	Mazatlán FC	2	1378
2022-2023	Apertura	94	Isabel Kasis	Guadalajara	1	232
2022-2023	Apertura	95	Anette Natalia Vázquez	Guadalajara	1	233
2022-2023	Apertura	96	Victoria Lizbeth Acevedo	Guadalajara	1	332
2022-2023	Apertura	97	Joseline Montoya	Guadalajara	1	915
2022-2023	Apertura	98	Michelle González	Guadalajara	1	973
2022-2023	Apertura	99	Angélica Araceli Torres	Guadalajara	1	1412
2022-2023	Apertura	100	Alejandra Guadalupe Martínez	Rayadas	1	119
2022-2023	Apertura	101	Valeria Valdez	Rayadas	1	757
2022-2023	Apertura	102	Bianca Elissa Sierra	Tigres	1	1266
2022-2023	Apertura	103	Andrea Sanchez	América	1	344
2022-2023	Apertura	104	Andrea Pereira	América	1	630
2022-2023	Apertura	105	Janelly Farias	América	1	757
2022-2023	Apertura	106	Amanda Araceli Pérez	América	1	842
2022-2023	Apertura	107	Inglis Yoana Hernández	Tijuana	1	357
2022-2023	Apertura	108	Paola Del Carmen Villamizar	Tijuana	1	965
2022-2023	Apertura	109	Zaira Carolina Miranda	Toluca	1	132
2022-2023	Apertura	110	Destinney Rosalía Duron	Toluca	1	635
2022-2023	Apertura	111	María Fernanda Sánchez	Toluca	1	664
2022-2023	Apertura	112	Liliana Rodríguez	Toluca	1	725
2022-2023	Apertura	113	Natalia Judith Colín	Toluca	1	781
2022-2023	Apertura	114	Diana Michelle Guatemala	Toluca	1	813
2022-2023	Apertura	115	Karla Lorena Martínez	Toluca	1	1064
2022-2023	Apertura	116	Noemí Granados	Toluca	1	1396
2022-2023	Apertura	117	Jennifer Hermoso	Pachuca	1	471
2022-2023	Apertura	118	Esbeydi Viridiana Salazar	Pachuca	1	485
2022-2023	Apertura	119	Marlyn Margoth Campa	Pachuca	1	561
2022-2023	Apertura	120	Blanky Denisse Serrano	Pachuca	1	672
2022-2023	Apertura	121	Daniela Alexandra Arias	Pachuca	1	776
2022-2023	Apertura	122	Hireri Velázquez	Cruz Azul	1	377
2022-2023	Apertura	123	Renata Fernanda Huerta	Cruz Azul	1	653
2022-2023	Apertura	124	Diana Laura García	Cruz Azul	1	823
2022-2023	Apertura	125	Daniela Frank Flores	Cruz Azul	1	862
2022-2023	Apertura	126	María Alejandra Peraza	Cruz Azul	1	870
2022-2023	Apertura	127	Daniela Janet Monroy	Cruz Azul	1	976
2022-2023	Apertura	128	Mirelle Arciniega	Cruz Azul	1	1028
2022-2023	Apertura	129	Dalia Isabel Molina	Cruz Azul	1	1163
2022-2023	Apertura	130	Ana Rosa García	Cruz Azul	1	1388
2022-2023	Apertura	131	Grecia Valeria Pineda	Pumas	1	242
2022-2023	Apertura	132	Samantha López	Pumas	1	286
2022-2023	Apertura	133	Daniela Itzaxaya García	Pumas	1	583
2022-2023	Apertura	134	Lucia Rodríguez	Pumas	1	712
2022-2023	Apertura	135	Natalia Macías Valadez	Pumas	1	762
2022-2023	Apertura	136	Paola Chavero	Pumas	1	870
2022-2023	Apertura	137	Dinora Lizeth Garza	Pumas	1	1167
2022-2023	Apertura	138	Marcia Paola García	Atlas	1	64
2022-2023	Apertura	139	Sulma Yaderia Plancarte	Atlas	1	541
2022-2023	Apertura	140	Alejandra Franco	Atlas	1	585
2022-2023	Apertura	141	Sabrina Figueroa	Atlas	1	635
2022-2023	Apertura	142	Alejandra Lomelí	Atlas	1	876
2022-2023	Apertura	143	Zellyka Guadalupe Arce	Atlas	1	1098
2022-2023	Apertura	144	Karen Andrea García	Atlas	1	1244
2022-2023	Apertura	145	Valeria Razo	Atlas	1	1434
2022-2023	Apertura	146	Karla Daniela Zempoalteca	FC Juárez	1	511
2022-2023	Apertura	147	Natalia Guadalupe Penagos	León	1	87
2022-2023	Apertura	148	Karen Itzayana Gómez	León	1	117
2022-2023	Apertura	149	Romina Stefania Núñez	León	1	813
2022-2023	Apertura	150	Madeleine Pasco	León	1	1196
2022-2023	Apertura	151	Brenda Esmeralda Díaz	León	1	1323
2022-2023	Apertura	152	Silvana González	Atlético de San Luis	1	434
2022-2023	Apertura	153	Estefania Izaguirre	Atlético de San Luis	1	1035
2022-2023	Apertura	154	Natalia Inés Gómez Junco	Atlético de San Luis	1	1457
2022-2023	Apertura	155	Brenda Vanessa López	Santos Laguna	1	692
2022-2023	Apertura	156	Barbrha Alejandra Figueroa	Querétaro	1	275
2022-2023	Apertura	157	Sonia Vázquez	Querétaro	1	425
2022-2023	Apertura	158	Lía Betsabé Morán	Querétaro	1	1386
2022-2023	Apertura	159	Jaqueline González	Puebla	1	674
2022-2023	Apertura	160	Fátima Rosales	Puebla	1	1351
2022-2023	Apertura	161	Ivonne Najar	Puebla	1	1530
2022-2023	Apertura	162	Jazmín Piza	Mazatlán FC	1	138
2022-2023	Apertura	163	Yuliana Marlene Mora	Mazatlán FC	1	515
2022-2023	Apertura	164	Karla Katia Saavedra	Mazatlán FC	1	907
2022-2023	Apertura	165	Yaritza Yanely Arista	Mazatlán FC	1	1136
2022-2023	Apertura	166	Iraida Guadalupe Fernández	Necaxa	1	494
2022-2023	Apertura	167	Alejandra Guerrero	Necaxa	1	680
2022-2023	Apertura	168	Reyna Sabina Velázquez	Necaxa	1	944
2022-2023	Apertura	169	Fanny Lizeth Grano	Necaxa	1	1234
2022-2023	Apertura	170	Samantha Kassandra Calvillo	Necaxa	1	1341
2022-2023	Apertura	171	Dayán Vianey Fuentes	Necaxa	1	1489
2022-2023	Clausura	1	Verónica Charlyn Corral	Pachuca	20	1520
2022-2023	Clausura	2	Jennifer Hermoso	Pachuca	18	1479
2022-2023	Clausura	3	Christina Marie Burkenroad	Rayadas	15	1283
2022-2023	Clausura	4	Mia Renee Fishel	Tigres	13	1341
2022-2023	Clausura	5	Kiana Angélica Palacios	América	13	993
2022-2023	Clausura	6	Alicia Cervantes	Guadalajara	10	522
2022-2023	Clausura	7	Lizbeth Jacqueline Ovalle	Tigres	9	1365
2022-2023	Clausura	8	María Natalia Mauleon	América	9	1061
2022-2023	Clausura	9	Renae Nicole Cuéllar	Tijuana	8	1008
2022-2023	Clausura	10	Sandra Stephany Mayor	Tigres	7	990
2022-2023	Clausura	11	Christian Carolina Jaramillo	Guadalajara	7	1530
2022-2023	Clausura	12	Jasmine Alexis Casarez	FC Juárez	7	1455
2022-2023	Clausura	13	Daniela Espinosa	Tijuana	7	1169
2022-2023	Clausura	14	Kimberli Anahí Gómez	Pumas	7	799
2022-2023	Clausura	15	Alexia Nayeli Villanueva	Santos Laguna	7	1500
2022-2023	Clausura	16	Chinwendu Verónica Ihezuo	Rayadas	6	799
2022-2023	Clausura	17	Maricarmen Reyes	Tigres	6	898
2022-2023	Clausura	18	Katty Martínez	América	6	941
2022-2023	Clausura	19	Miah Alexia Zuazua	FC Juárez	6	1039
2022-2023	Clausura	20	Carolina Paola Venegas	Atlas	6	863
2022-2023	Clausura	21	Destinney Rosalía Duron	Toluca	6	915
2022-2023	Clausura	22	Sofía Varela	Santos Laguna	6	1143
2022-2023	Clausura	23	Adriana Iturbide	Guadalajara	5	996
2022-2023	Clausura	24	Gabriela Valenzuela	Guadalajara	5	1158
2022-2023	Clausura	25	Blanca María Solís	FC Juárez	5	887
2022-2023	Clausura	26	Myra Alexandra Delgadillo	FC Juárez	5	1221
2022-2023	Clausura	27	Mariel Román	Toluca	5	1151
2022-2023	Clausura	28	Brenda Woch Da Graca	Toluca	5	1400
2022-2023	Clausura	29	Daniela Carrandi	Atlético de San Luis	5	1422
2022-2023	Clausura	30	Aylin Ariana Aviléz	Rayadas	4	635
2022-2023	Clausura	31	Rebeca Bernal	Rayadas	4	1369
2022-2023	Clausura	32	Uchenna Grace Kanu	Tigres	4	135
2022-2023	Clausura	33	Andrea Pereira	América	4	1350
2022-2023	Clausura	34	Joseline Montoya	Guadalajara	4	1312
2022-2023	Clausura	35	Luz Aida Duarte	Pumas	4	360
2022-2023	Clausura	36	Yashira Yuleth Barrientos	León	4	604
2022-2023	Clausura	37	Mariana Valeria Larroquette	León	4	1093
2022-2023	Clausura	38	Daniela Calderón	León	4	1356
2022-2023	Clausura	39	Daniela Lizbeth Solís	Rayadas	3	500
2022-2023	Clausura	40	Diana Laura Evangelista	Rayadas	3	1250
2022-2023	Clausura	41	Belén De Jesús Cruz	Tigres	3	620
2022-2023	Clausura	42	Alison Hecnary González	América	3	472
2022-2023	Clausura	43	Scarlett Nefer Camberos	América	3	519
2022-2023	Clausura	44	Sarah Jacquelyn Luebbert	América	3	591
2022-2023	Clausura	45	Aurelie Anne Sophie Kaci	América	3	1204
2022-2023	Clausura	46	Damaris Michel Godínez	Guadalajara	3	1463
2022-2023	Clausura	47	Alice Fernanda Soto	Pachuca	3	977
2022-2023	Clausura	48	Jermaine Seoposenwe	FC Juárez	3	987
2022-2023	Clausura	49	María Fernanda Daniela Pérez	Atlas	3	783
2022-2023	Clausura	50	Brenda Damaris Ceren	Atlas	3	981
2022-2023	Clausura	51	Claudia Fabiola Ibarra	Atlas	3	1193
2022-2023	Clausura	52	Valeria Razo	Atlas	3	1254
2022-2023	Clausura	53	Paola Del Carmen Villamizar	Tijuana	3	1418
2022-2023	Clausura	54	Stephanie Mariana Ribeiro	Pumas	3	414
2022-2023	Clausura	55	Venicia Gabriela Juárez	Pumas	3	686
2022-2023	Clausura	56	Marylin Viridiana Díaz	Pumas	3	1505
2022-2023	Clausura	57	Mayalu Ann Rausch	León	3	865
2022-2023	Clausura	58	Leidy Lizeth Ramos	Querétaro	3	921
2022-2023	Clausura	59	Itzia Tenahua	Atlético de San Luis	3	437
2022-2023	Clausura	60	Beatriz Parra	Atlético de San Luis	3	902
2022-2023	Clausura	61	Cinthya Peraza	Santos Laguna	3	1110
2022-2023	Clausura	62	Brenda Judith García	Puebla	3	825
2022-2023	Clausura	63	Diana Elizabeth Anguiano	Necaxa	3	1322
2022-2023	Clausura	64	Carlee Rose Giammona	Rayadas	2	680
2022-2023	Clausura	65	Yamile Azenek Franco	Rayadas	2	998
2022-2023	Clausura	66	Deiry Loreli Ramírez	Tigres	2	119
2022-2023	Clausura	67	Riley Grace Mattingly	Tigres	2	219
2022-2023	Clausura	68	Nancy Guadalupe Antonio	Tigres	2	663
2022-2023	Clausura	69	Kinberly Paloma Guzmán	Guadalajara	2	476
2022-2023	Clausura	70	Lizbeth Ángeles	Pachuca	2	694
2022-2023	Clausura	71	Marta Alexandra Cox Villarreal	Pachuca	2	877
2022-2023	Clausura	72	Janelly Farias	Pachuca	2	1062
2022-2023	Clausura	73	Karen Andrea García	Atlas	2	666
2022-2023	Clausura	74	Alejandra Franco	Atlas	2	705
2022-2023	Clausura	75	Marcia Paola García	Atlas	2	767
2022-2023	Clausura	76	Alejandra Lomelí	Atlas	2	882
2022-2023	Clausura	77	Paola Chavero	Pumas	2	1031
2022-2023	Clausura	78	María Fernanda Sánchez	Toluca	2	519
2022-2023	Clausura	79	Vanessa Maria Penuna	Toluca	2	795
2022-2023	Clausura	80	Liliana Rodríguez	Toluca	2	1242
2022-2023	Clausura	81	Briana Elizabeth Woodall	León	2	839
2022-2023	Clausura	82	Deisy Estefania Ojeda	Querétaro	2	1259
2022-2023	Clausura	83	Jazmín Enrigue	Querétaro	2	1530
2022-2023	Clausura	84	Estefania Izaguirre	Atlético de San Luis	2	487
2022-2023	Clausura	85	Joana Robles	Atlético de San Luis	2	1476
2022-2023	Clausura	86	Julissa Fernanda Dávila	Atlético de San Luis	2	1530
2022-2023	Clausura	87	Daniela Janet Monroy	Cruz Azul	2	1114
2022-2023	Clausura	88	Daniela Frank Flores	Cruz Azul	2	1152
2022-2023	Clausura	89	Dalia Isabel Molina	Cruz Azul	2	1336
2022-2023	Clausura	90	Rebeca Villuendas	Puebla	2	568
2022-2023	Clausura	91	María Elena Sainz	Puebla	2	1525
2022-2023	Clausura	92	Saira Cecilia López	Necaxa	2	1024
2022-2023	Clausura	93	Samantha Kassandra Calvillo	Necaxa	2	1393
2022-2023	Clausura	94	Olga Anahí Trasviña	Mazatlán FC	2	1009
2022-2023	Clausura	95	Mónica Desiree Monsiváis	Rayadas	1	137
2022-2023	Clausura	96	Fátima Servín	Rayadas	1	352
2022-2023	Clausura	97	Mónica Irina Flores	Rayadas	1	435
2022-2023	Clausura	98	Valeria Valdez	Rayadas	1	500
2022-2023	Clausura	99	Karol Esthefany Bernal	Rayadas	1	1052
2022-2023	Clausura	100	Betzy Casandra Cuevas	América	1	610
2022-2023	Clausura	101	Eva Beatriz González	América	1	882
2022-2023	Clausura	102	Sabrina Marie Enciso	América	1	956
2022-2023	Clausura	103	Karen Irasema Luna	América	1	1036
2022-2023	Clausura	104	Casandra Montero	Guadalajara	1	1521
2022-2023	Clausura	105	Mariana Munguía	Pachuca	1	12
2022-2023	Clausura	106	Julia Yareli Valadez	Pachuca	1	128
2022-2023	Clausura	107	Vanessa Beatriz Millsaps	Pachuca	1	249
2022-2023	Clausura	108	Jillian June Khaterine Jennings	Pachuca	1	554
2022-2023	Clausura	109	Karen Alejandra Díaz	Pachuca	1	750
2022-2023	Clausura	110	Mónica Ocampo	Pachuca	1	1092
2022-2023	Clausura	111	Karla Paola Nieto	Pachuca	1	1504
2022-2023	Clausura	112	Sumiko Gutiérrez	FC Juárez	1	947
2022-2023	Clausura	113	María Andrea Sánchez	FC Juárez	1	1102
2022-2023	Clausura	114	Andrea Hernández	FC Juárez	1	1530
2022-2023	Clausura	115	Zellyka Guadalupe Arce	Atlas	1	1129
2022-2023	Clausura	116	Connie Elizabeth Caliz	Tijuana	1	273
2022-2023	Clausura	117	Dulce Maria Alvarado	Tijuana	1	640
2022-2023	Clausura	118	Verónica Raquel Pérez	Tijuana	1	983
2022-2023	Clausura	119	Mónica Rose Alvarado	Tijuana	1	1168
2022-2023	Clausura	120	Chandra Marie Eigenberger	Pumas	1	121
2022-2023	Clausura	121	Lucia Rodríguez	Pumas	1	148
2022-2023	Clausura	122	Daniela Itzaxaya García	Pumas	1	211
2022-2023	Clausura	123	Samantha López	Pumas	1	465
2022-2023	Clausura	124	Dirce Delgado	Pumas	1	1530
2022-2023	Clausura	125	Lucero Ximena Cuevas	León	1	295
2022-2023	Clausura	126	Linda Ruth Bravo	León	1	901
2022-2023	Clausura	127	Madeleine Pasco	León	1	973
2022-2023	Clausura	128	Alondra Karime Camargo	Querétaro	1	537
2022-2023	Clausura	129	Daniela Sánchez	Querétaro	1	829
2022-2023	Clausura	130	Fátima Del Carmen Delgado	Querétaro	1	918
2022-2023	Clausura	131	Edna Fabiola Santamaria	Querétaro	1	1369
2022-2023	Clausura	132	Denisse Alejandra Rivera	Atlético de San Luis	1	352
2022-2023	Clausura	133	Mariela García	Atlético de San Luis	1	765
2022-2023	Clausura	134	Karen Lizbeth Cano	Atlético de San Luis	1	900
2022-2023	Clausura	135	Desarae Nicolé Félix	Santos Laguna	1	625
2022-2023	Clausura	136	Sheila Odeth Pulido	Santos Laguna	1	1344
2022-2023	Clausura	137	Alexxandra Ramírez	Santos Laguna	1	1505
2022-2023	Clausura	138	Ana Gabriela Huerta	Cruz Azul	1	497
2022-2023	Clausura	139	Cori Michelle Sullivan	Cruz Azul	1	658
2022-2023	Clausura	140	Claudia Fernanda Cid	Cruz Azul	1	834
2022-2023	Clausura	141	Renata Fernanda Huerta	Cruz Azul	1	856
2022-2023	Clausura	142	Alexia Fernanda Delgado	Cruz Azul	1	985
2022-2023	Clausura	143	Ana Gabriela Lozada	Cruz Azul	1	997
2022-2023	Clausura	144	Karime Abud	Cruz Azul	1	1114
2022-2023	Clausura	145	María Alejandra Peraza	Cruz Azul	1	1503
2022-2023	Clausura	146	Marisol Luna	Puebla	1	254
2022-2023	Clausura	147	Fátima Guadalupe Bracamonte	Puebla	1	333
2022-2023	Clausura	148	Daniela Auza	Puebla	1	969
2022-2023	Clausura	149	Camila Fonseca	Puebla	1	1185
2022-2023	Clausura	150	Samantha Marlen Martínez	Puebla	1	1203
2022-2023	Clausura	151	Fátima Rosales	Puebla	1	1260
2022-2023	Clausura	152	Viridiana López	Puebla	1	1392
2022-2023	Clausura	153	Fanny Lizeth Grano	Necaxa	1	558
2022-2023	Clausura	154	Lucia Muñoz	Necaxa	1	1015
2022-2023	Clausura	155	Yuliana Marlene Mora	Mazatlán FC	1	778
2022-2023	Clausura	156	Cristina María Torres	Mazatlán FC	1	994
2022-2023	Clausura	157	Magaly Cortés	Mazatlán FC	1	1156
2022-2023	Clausura	158	Yaritza Yanely Arista	Mazatlán FC	1	1395
2023-2024	Apertura	1	Maricarmen Reyes	Tigres	15	1189
2023-2024	Apertura	1	Alicia Cervantes	Guadalajara	15	1398
2023-2024	Apertura	3	Verónica Charlyn Corral	Pachuca	13	1440
2023-2024	Apertura	4	Lizbeth Jacqueline Ovalle	Tigres	11	1186
2023-2024	Apertura	5	Kiana Angélica Palacios	América	11	858
2023-2024	Apertura	6	Katty Martínez	América	10	1082
2023-2024	Apertura	7	Andrea Pereira	América	10	1098
2023-2024	Apertura	8	Christina Marie Burkenroad	Rayadas	10	982
2023-2024	Apertura	9	Mónica Desiree Monsiváis	Pumas	9	931
2023-2024	Apertura	10	Adriana Iturbide	Guadalajara	8	1207
2023-2024	Apertura	11	Jasmine Alexis Casarez	FC Juárez	8	1025
2023-2024	Apertura	12	Yashira Yuleth Barrientos	León	8	1277
2023-2024	Apertura	13	Erica Gomes Da Silva Santos	Cruz Azul	8	1020
2023-2024	Apertura	14	Aisha Keshy Solórzano	Puebla	8	927
2023-2024	Apertura	15	Alison Hecnary González	América	7	1003
2023-2024	Apertura	16	Mariel Román	Toluca	7	1257
2023-2024	Apertura	17	Aerial Lynndonna Chavarin	Pumas	7	1080
2023-2024	Apertura	18	Sayuri Yuki Watari	FC Juárez	7	1088
2023-2024	Apertura	19	Myra Alexandra Delgadillo	Rayadas	6	959
2023-2024	Apertura	20	Mayra Alejandra Pelayo-bernal	Tijuana	6	1322
2023-2024	Apertura	21	Sanjuana De Jesús Muñoz	Tijuana	6	1449
2023-2024	Apertura	22	Daniela Espinosa	Tijuana	6	1502
2023-2024	Apertura	23	Edna Fabiola Santamaria	Querétaro	6	1425
2023-2024	Apertura	24	Lydia Nayeli Rangel	Tigres	5	788
2023-2024	Apertura	25	Belén De Jesús Cruz	Tigres	5	885
2023-2024	Apertura	26	Sarah Jacquelyn Luebbert	América	5	657
2023-2024	Apertura	27	Carlee Rose Giammona	Rayadas	5	971
2023-2024	Apertura	28	Marta Alexandra Cox Villarreal	Pachuca	5	915
2023-2024	Apertura	29	Alice Fernanda Soto	Pachuca	5	1020
2023-2024	Apertura	30	Stephanie Mariana Ribeiro	Pumas	5	452
2023-2024	Apertura	31	Claudia Fabiola Ibarra	Atlas	5	1496
2023-2024	Apertura	32	Savianna Gomez	Puebla	5	763
2023-2024	Apertura	33	Sandra Stephany Mayor	Tigres	4	1042
2023-2024	Apertura	34	Greta Alejandra Espinoza	Tigres	4	1318
2023-2024	Apertura	35	Betzy Casandra Cuevas	América	4	485
2023-2024	Apertura	36	Gabriela Valenzuela	Guadalajara	4	889
2023-2024	Apertura	37	Christian Carolina Jaramillo	Guadalajara	4	1481
2023-2024	Apertura	38	Chinwendu Verónica Ihezuo	Rayadas	4	724
2023-2024	Apertura	39	Angelina Nicole Hix	Tijuana	4	786
2023-2024	Apertura	40	Brenda Woch Da Graca	Toluca	4	1053
2023-2024	Apertura	41	Cinthya Peraza	Toluca	4	1350
2023-2024	Apertura	42	Priscila Chinchilla	Pachuca	4	676
2023-2024	Apertura	43	Esbeydi Viridiana Salazar	Pachuca	4	915
2023-2024	Apertura	44	Marylin Viridiana Díaz	Pumas	4	1020
2023-2024	Apertura	45	Prisca Chilufya	FC Juárez	4	1086
2023-2024	Apertura	46	Daniela Calderón	León	4	811
2023-2024	Apertura	47	Maria Aparecida Souza	León	4	883
2023-2024	Apertura	48	Magaly Cortés	Querétaro	4	625
2023-2024	Apertura	49	Brenda Damaris Ceren	Atlas	4	1304
2023-2024	Apertura	50	Aylin Ariana Aviléz	América	3	622
2023-2024	Apertura	51	María Natalia Mauleon	América	3	952
2023-2024	Apertura	52	Karen Irasema Luna	América	3	988
2023-2024	Apertura	53	Jocelyn Marie Orejel	América	3	1041
2023-2024	Apertura	54	Kristal Rubi Soto	Guadalajara	3	957
2023-2024	Apertura	55	Diana Laura García	Rayadas	3	718
2023-2024	Apertura	56	Jermaine Seoposenwe	Rayadas	3	723
2023-2024	Apertura	57	Rebeca Bernal	Rayadas	3	1035
2023-2024	Apertura	58	Daphne Melissa Herrera	Tijuana	3	567
2023-2024	Apertura	59	Mónica Rose Alvarado	Tijuana	3	1048
2023-2024	Apertura	60	Bianca Esther Mora	Tijuana	3	1275
2023-2024	Apertura	61	Jennifer Hermoso	Pachuca	3	463
2023-2024	Apertura	62	Vanessa Beatriz Millsaps	Pachuca	3	1161
2023-2024	Apertura	63	Catalina Estrada	Cruz Azul	3	445
2023-2024	Apertura	64	Norma Luz Irene Duarte	Cruz Azul	3	1041
2023-2024	Apertura	65	María Paula Salas	Atlas	3	564
2023-2024	Apertura	66	Karla Patricia Morales	Puebla	3	1382
2023-2024	Apertura	67	Julissa Fernanda Dávila	Atlético de San Luis	3	1432
2023-2024	Apertura	68	Joseline Andrea Hernández	Necaxa	3	1237
2023-2024	Apertura	69	Michel Anahy Ruiz	Santos Laguna	3	1195
2023-2024	Apertura	70	Alexxandra Ramírez	Santos Laguna	3	1508
2023-2024	Apertura	71	Cristina María Torres	Mazatlán FC	3	957
2023-2024	Apertura	72	Cristina Del Carmen Ferral	Tigres	2	1485
2023-2024	Apertura	73	Kimberly Vanessa Rodríguez	América	2	1239
2023-2024	Apertura	74	Casandra Montero	Guadalajara	2	1530
2023-2024	Apertura	75	Dania Nicole Pérez	Rayadas	2	1097
2023-2024	Apertura	76	Samantha Kassandra Calvillo	Toluca	2	382
2023-2024	Apertura	77	Natalia Macías Valadez	Toluca	2	609
2023-2024	Apertura	78	Natalia Judith Colín	Toluca	2	1326
2023-2024	Apertura	79	Natalia Inés Gómez Junco	Toluca	2	1385
2023-2024	Apertura	80	Laura Herrera	Pumas	2	209
2023-2024	Apertura	81	Kimberli Anahí Gómez	Pumas	2	722
2023-2024	Apertura	82	Paola Chavero	Pumas	2	1260
2023-2024	Apertura	83	Dania Belén Padilla	Pumas	2	1460
2023-2024	Apertura	84	Dirce Delgado	Pumas	2	1475
2023-2024	Apertura	85	Grace Asantewaa	FC Juárez	2	976
2023-2024	Apertura	86	Ana Gabriela Lozada	FC Juárez	2	1524
2023-2024	Apertura	87	Meghan Lee Cavanaugh	Cruz Azul	2	982
2023-2024	Apertura	88	Jennie Marshall Lakip	Querétaro	2	247
2023-2024	Apertura	89	Tania Paola Morales	Querétaro	2	474
2023-2024	Apertura	90	Fátima Del Carmen Delgado	Querétaro	2	811
2023-2024	Apertura	91	Jazmín Enrigue	Querétaro	2	1508
2023-2024	Apertura	92	Marcia Paola García	Atlas	2	510
2023-2024	Apertura	93	María Fernanda Daniela Pérez	Atlas	2	1519
2023-2024	Apertura	94	Luz Aida Duarte	Atlético de San Luis	2	428
2023-2024	Apertura	95	Trudi Sudan Carter	Atlético de San Luis	2	696
2023-2024	Apertura	96	Silvana González	Atlético de San Luis	2	919
2023-2024	Apertura	97	Jaquelín García	Atlético de San Luis	2	1449
2023-2024	Apertura	98	Dayán Vianey Fuentes	Necaxa	2	1404
2023-2024	Apertura	99	Juelle Ciani Love	Santos Laguna	2	579
2023-2024	Apertura	100	Lia Mariel Romero	Santos Laguna	2	1240
2023-2024	Apertura	101	Alejandra Guadalupe Curiel	Mazatlán FC	2	471
2023-2024	Apertura	102	Samantha López	Mazatlán FC	2	1066
2023-2024	Apertura	103	Konya Tajae Plummer	Tigres	1	158
2023-2024	Apertura	104	Liliana Mercado	Tigres	1	375
2023-2024	Apertura	105	Nancy Guadalupe Antonio	Tigres	1	1089
2023-2024	Apertura	106	Anika Elia Rodríguez	Tigres	1	1168
2023-2024	Apertura	107	Noemí Granados	América	1	184
2023-2024	Apertura	108	Miah Alexia Zuazua	América	1	275
2023-2024	Apertura	109	Angelique Montserrat Saldivar	América	1	389
2023-2024	Apertura	110	Karina Anais Rodríguez	América	1	999
2023-2024	Apertura	111	María Fernanda López	Guadalajara	1	12
2023-2024	Apertura	112	Cynthia Vanessa González	Guadalajara	1	36
2023-2024	Apertura	113	Dorian Montserrat Hernández	Guadalajara	1	416
2023-2024	Apertura	114	Damaris Michel Godínez	Guadalajara	1	1238
2023-2024	Apertura	115	Karla Lorena Martínez	Guadalajara	1	1299
2023-2024	Apertura	116	Karol Esthefany Bernal	Rayadas	1	358
2023-2024	Apertura	117	Yamile Azenek Franco	Rayadas	1	711
2023-2024	Apertura	118	Yadira Toraya	Tijuana	1	162
2023-2024	Apertura	119	Paola Del Carmen Villamizar	Tijuana	1	596
2023-2024	Apertura	120	Joselyn De La Rosa	Tijuana	1	1348
2023-2024	Apertura	121	Destinney Rosalía Duron	Toluca	1	286
2023-2024	Apertura	122	Vanessa Maria Penuna	Toluca	1	823
2023-2024	Apertura	123	Patricia De María Jardón	Toluca	1	1265
2023-2024	Apertura	124	Giselle Espinoza	Pachuca	1	172
2023-2024	Apertura	125	Karla Paola Nieto	Pachuca	1	1346
2023-2024	Apertura	126	Karen Alejandra Díaz	Pachuca	1	1484
2023-2024	Apertura	127	Dinora Lizeth Garza	Pumas	1	860
2023-2024	Apertura	128	Ana Mendoza	Pumas	1	1368
2023-2024	Apertura	129	Fátima Monserrat Arellano	FC Juárez	1	98
2023-2024	Apertura	130	Yenifer Britany García	FC Juárez	1	260
2023-2024	Apertura	131	Julitha Aminiel Tamuwai Singano	FC Juárez	1	567
2023-2024	Apertura	132	Blanca María Solís	FC Juárez	1	587
2023-2024	Apertura	133	Miriam Castillo	FC Juárez	1	1370
2023-2024	Apertura	134	Sophia Wais Braun	León	1	842
2023-2024	Apertura	135	Lizbeth Ángeles	León	1	1376
2023-2024	Apertura	136	Isabela Esquivias	León	1	1422
2023-2024	Apertura	137	Linda Ruth Bravo	León	1	1432
2023-2024	Apertura	138	Leslie Stephanie Ramírez	Cruz Azul	1	29
2023-2024	Apertura	139	Martha Natalia Enciso	Cruz Azul	1	55
2023-2024	Apertura	140	Ximena Elizabeth Rios	Cruz Azul	1	431
2023-2024	Apertura	141	Renata Fernanda Huerta	Cruz Azul	1	742
2023-2024	Apertura	142	Ana Rosa García	Cruz Azul	1	832
2023-2024	Apertura	143	Daniela Frank Flores	Cruz Azul	1	882
2023-2024	Apertura	144	Edith Deyanira Carmona	Cruz Azul	1	1193
2023-2024	Apertura	145	María Alejandra Peraza	Cruz Azul	1	1302
2023-2024	Apertura	146	Daniela Janet Monroy	Cruz Azul	1	1453
2023-2024	Apertura	147	Stephanie Marie Zuniga	Querétaro	1	124
2023-2024	Apertura	148	Dulce Maria Alvarado	Querétaro	1	396
2023-2024	Apertura	149	Leidy Lizeth Ramos	Querétaro	1	1266
2023-2024	Apertura	150	Claudia Gabriela Anguiano	Querétaro	1	1298
2023-2024	Apertura	151	Lía Betsabé Morán	Querétaro	1	1468
2023-2024	Apertura	152	Alejandra Lomelí	Atlas	1	1310
2023-2024	Apertura	153	Maritza Dardane Maldonado	Atlas	1	1418
2023-2024	Apertura	154	Karla Daniela Zempoalteca	Atlas	1	1437
2023-2024	Apertura	155	Itzia Tenahua	Puebla	1	198
2023-2024	Apertura	156	Norma Priscila Gaitan	Puebla	1	361
2023-2024	Apertura	157	Camila Fonseca	Puebla	1	681
2023-2024	Apertura	158	Isabel Kasis	Atlético de San Luis	1	142
2023-2024	Apertura	159	Cristel Sabrina Sandi	Atlético de San Luis	1	176
2023-2024	Apertura	160	Mayra Alejandra Santana	Atlético de San Luis	1	758
2023-2024	Apertura	161	Laura Montserrat Parra	Atlético de San Luis	1	1339
2023-2024	Apertura	162	Daniela Carrandi	Atlético de San Luis	1	1346
2023-2024	Apertura	163	Zellyka Guadalupe Arce	Atlético de San Luis	1	1409
2023-2024	Apertura	164	Izabelle Astrid Hernandez	Necaxa	1	354
2023-2024	Apertura	165	Danielle Marie Fuentes	Necaxa	1	1085
2023-2024	Apertura	166	Karen Jissel Reyes	Necaxa	1	1232
2023-2024	Apertura	167	Karen Lucía De León	Necaxa	1	1313
2023-2024	Apertura	168	Lucia Muñoz	Necaxa	1	1481
2023-2024	Apertura	169	Daniela Itzaxaya García	Santos Laguna	1	615
2023-2024	Apertura	170	Luisa Fernanda De Alba	Santos Laguna	1	842
2023-2024	Apertura	171	María Cristina Montaño	Mazatlán FC	1	516
2023-2024	Apertura	172	Yuliana Marlene Mora	Mazatlán FC	1	600
2023-2024	Apertura	173	María Magalí Del Verdún Cuadrado	Mazatlán FC	1	620
2023-2024	Apertura	174	Venicia Gabriela Juárez	Mazatlán FC	1	908
2023-2024	Clausura	1	Verónica Charlyn Corral	Pachuca	19	1350
2023-2024	Clausura	2	Katty Martínez	América	15	1175
2023-2024	Clausura	3	Stephanie Mariana Ribeiro	Pumas	14	1320
2023-2024	Clausura	4	Chinwendu Verónica Ihezuo	Pachuca	13	1262
2023-2024	Clausura	5	Sandra Stephany Mayor	Tigres	12	1202
2023-2024	Clausura	6	Alicia Cervantes	Guadalajara	11	946
2023-2024	Clausura	7	Aerial Lynndonna Chavarin	Pumas	9	1248
2023-2024	Clausura	8	Yashira Yuleth Barrientos	León	9	1124
2023-2024	Clausura	9	Jasmine Alexis Casarez	FC Juárez	9	1351
2023-2024	Clausura	10	Brenda Woch Da Graca	Toluca	9	1378
2023-2024	Clausura	11	Daniela Espinosa	Tijuana	9	1404
2023-2024	Clausura	12	Jermaine Seoposenwe	Rayadas	8	1027
2023-2024	Clausura	13	Jennifer Hermoso	Tigres	7	997
2023-2024	Clausura	14	Myra Alexandra Delgadillo	Rayadas	7	1312
2023-2024	Clausura	15	Deneisha Selena Blackwood	Pumas	7	1201
2023-2024	Clausura	16	Chrestinah Thembi Kgatlana	Tigres	6	906
2023-2024	Clausura	17	Merel Didi Van Dongen	Rayadas	6	727
2023-2024	Clausura	18	Dania Nicole Pérez	Rayadas	6	1454
2023-2024	Clausura	19	Sarah Jacquelyn Luebbert	América	6	1188
2023-2024	Clausura	20	Adriana Iturbide	Guadalajara	6	1386
2023-2024	Clausura	21	Daniela Calderón	León	6	1365
2023-2024	Clausura	22	Aisha Keshy Solórzano	Puebla	6	1316
2023-2024	Clausura	23	Danielle Marie Fuentes	Necaxa	6	1244
2023-2024	Clausura	24	Ximena Elizabeth Rios	Cruz Azul	6	1059
2023-2024	Clausura	25	Maricarmen Reyes	Tigres	5	969
2023-2024	Clausura	26	Lizbeth Jacqueline Ovalle	Tigres	5	1140
2023-2024	Clausura	27	Ana Lucia Martínez	Rayadas	5	1205
2023-2024	Clausura	28	Christian Carolina Jaramillo	Guadalajara	5	1318
2023-2024	Clausura	29	Alejandra Guerrero	Pumas	5	1203
2023-2024	Clausura	30	Lizbeth Ángeles	León	5	1314
2023-2024	Clausura	31	Prisca Chilufya	FC Juárez	5	1190
2023-2024	Clausura	32	Mariel Román	Toluca	5	1026
2023-2024	Clausura	33	Jennie Marshall Lakip	Querétaro	5	488
2023-2024	Clausura	34	Marcia Paola García	Atlas	5	1181
2023-2024	Clausura	35	Savianna Gomez	Puebla	5	1294
2023-2024	Clausura	36	Sinoxolo Cesane	Mazatlán FC	5	675
2023-2024	Clausura	37	Trudi Sudan Carter	Atlético de San Luis	5	1385
2023-2024	Clausura	38	Alison Hecnary González	Tigres	4	822
2023-2024	Clausura	39	Rebeca Bernal	Rayadas	4	1205
2023-2024	Clausura	40	Dana Gabrielle Sandoval	Guadalajara	4	710
2023-2024	Clausura	41	Janelly Farias	FC Juárez	4	1375
2023-2024	Clausura	42	Natalia Macías Valadez	Toluca	4	1180
2023-2024	Clausura	43	Cinthya Peraza	Toluca	4	1488
2023-2024	Clausura	44	Lía Betsabé Morán	Querétaro	4	1205
2023-2024	Clausura	45	María Paula Salas	Atlas	4	735
2023-2024	Clausura	46	Hildah Tholakele Magaia	Mazatlán FC	4	1158
2023-2024	Clausura	47	Soumaya Lyna Bouak	Mazatlán FC	4	1445
2023-2024	Clausura	48	Erica Gomes Da Silva Santos	Cruz Azul	4	849
2023-2024	Clausura	49	Annelise Marie Henderson	Santos Laguna	4	840
2023-2024	Clausura	50	Daniela Itzaxaya García	Santos Laguna	4	1442
2023-2024	Clausura	51	Lydia Nayeli Rangel	Tigres	3	318
2023-2024	Clausura	52	Belén De Jesús Cruz	Tigres	3	620
2023-2024	Clausura	53	Alice Fernanda Soto	Pachuca	3	875
2023-2024	Clausura	54	Daniela Frank Flores	Pachuca	3	1440
2023-2024	Clausura	55	Miah Alexia Zuazua	América	3	710
2023-2024	Clausura	56	Kiana Angélica Palacios	América	3	1030
2023-2024	Clausura	57	Aurelie Anne Sophie Kaci	América	3	1086
2023-2024	Clausura	58	Mayalu Ann Rausch	León	3	1423
2023-2024	Clausura	59	Alondra Blanco	FC Juárez	3	241
2023-2024	Clausura	60	Samantha Kassandra Calvillo	Toluca	3	465
2023-2024	Clausura	61	Michaela Batya Bisi Abam	Toluca	3	831
2023-2024	Clausura	62	Jazmín Enrigue	Querétaro	3	1394
2023-2024	Clausura	63	Sanjuana De Jesús Muñoz	Tijuana	3	618
2023-2024	Clausura	64	Marta Alexandra Cox Villarreal	Tijuana	3	902
2023-2024	Clausura	65	Mayra Alejandra Pelayo-bernal	Tijuana	3	924
2023-2024	Clausura	66	Mónica Rose Alvarado	Tijuana	3	1088
2023-2024	Clausura	67	Brenda Damaris Ceren	Atlas	3	1374
2023-2024	Clausura	68	Liliana Fernández	Puebla	3	1085
2023-2024	Clausura	69	Mariana Ramos	Necaxa	3	532
2023-2024	Clausura	70	Ana Rosa García	Cruz Azul	3	1027
2023-2024	Clausura	71	Lia Mariel Romero	Santos Laguna	3	1075
2023-2024	Clausura	72	María Fernanda Elizondo	Tigres	2	59
2023-2024	Clausura	73	Destinee Noel Manzo	Pachuca	2	591
2023-2024	Clausura	74	Mónica Ocampo	Pachuca	2	802
2023-2024	Clausura	75	Claudia Fabiola Ibarra	Pachuca	2	844
2023-2024	Clausura	76	Yanin Madrid	Pachuca	2	1113
2023-2024	Clausura	77	Christina Marie Burkenroad	Rayadas	2	386
2023-2024	Clausura	78	Yamile Azenek Franco	Rayadas	2	482
2023-2024	Clausura	79	Aylin Ariana Aviléz	América	2	378
2023-2024	Clausura	80	María Natalia Mauleon	América	2	723
2023-2024	Clausura	81	Karen Irasema Luna	América	2	977
2023-2024	Clausura	82	Andrea Pereira	América	2	1297
2023-2024	Clausura	83	Esbeydi Viridiana Salazar	Guadalajara	2	810
2023-2024	Clausura	84	Gabriela Valenzuela	Guadalajara	2	920
2023-2024	Clausura	85	Mónica Desiree Monsiváis	Pumas	2	578
2023-2024	Clausura	86	Dinora Lizeth Garza	León	2	266
2023-2024	Clausura	87	Ysaura Candelaria Viso	León	2	380
2023-2024	Clausura	88	Norma Luz Irene Duarte	FC Juárez	2	274
2023-2024	Clausura	89	Andrea Hernández	FC Juárez	2	796
2023-2024	Clausura	90	Annia Stephany Mejía	FC Juárez	2	1151
2023-2024	Clausura	91	Michelle González	Toluca	2	1530
2023-2024	Clausura	92	Edna Fabiola Santamaria	Querétaro	2	1040
2023-2024	Clausura	93	Inglis Yoana Hernández	Tijuana	2	1003
2023-2024	Clausura	94	Daphne Melissa Herrera	Tijuana	2	1063
2023-2024	Clausura	95	Maritza Dardane Maldonado	Atlas	2	962
2023-2024	Clausura	96	Fátima Rosales	Puebla	2	677
2023-2024	Clausura	97	Dulce Eileen Martínez	Puebla	2	1530
2023-2024	Clausura	98	Alejandra Guadalupe Curiel	Mazatlán FC	2	553
2023-2024	Clausura	99	Karen Jissel Reyes	Necaxa	2	670
2023-2024	Clausura	100	Iraida Guadalupe Fernández	Necaxa	2	1436
2023-2024	Clausura	101	Meghan Lee Cavanaugh	Cruz Azul	2	663
2023-2024	Clausura	102	Isabel Kasis	Atlético de San Luis	2	906
2023-2024	Clausura	103	Farlyn Fernanda Caicedo	Atlético de San Luis	2	1195
2023-2024	Clausura	104	Nancy Guadalupe Antonio	Tigres	1	394
2023-2024	Clausura	105	Konya Tajae Plummer	Tigres	1	494
2023-2024	Clausura	106	Alexia Fernanda Delgado	Tigres	1	670
2023-2024	Clausura	107	Jana Alexandra Gutiérrez	Tigres	1	1201
2023-2024	Clausura	108	Ella Ryan Sanchez	Pachuca	1	31
2023-2024	Clausura	109	Maria Catalina Usme	Pachuca	1	815
2023-2024	Clausura	110	Valeria Valdez	Rayadas	1	393
2023-2024	Clausura	111	Tanna Sánchez	Rayadas	1	428
2023-2024	Clausura	112	Diana Laura Evangelista	Rayadas	1	481
2023-2024	Clausura	113	Fátima Servín	Rayadas	1	852
2023-2024	Clausura	114	Angelique Montserrat Saldivar	América	1	563
2023-2024	Clausura	115	Jocelyn Marie Orejel	América	1	634
2023-2024	Clausura	116	Kimberly Vanessa Rodríguez	América	1	699
2023-2024	Clausura	117	Betzy Casandra Cuevas	América	1	798
2023-2024	Clausura	118	Nicolette Andrea Hernández	América	1	800
2023-2024	Clausura	119	Kristal Rubi Soto	Guadalajara	1	455
2023-2024	Clausura	120	Diana Jaqueline Rodríguez	Guadalajara	1	1142
2023-2024	Clausura	121	Casandra Montero	Guadalajara	1	1352
2023-2024	Clausura	122	Sindia Anahi Arteaga	Pumas	1	16
2023-2024	Clausura	123	Kimberli Anahí Gómez	Pumas	1	141
2023-2024	Clausura	124	Irma Liceth Pinzon	Pumas	1	257
2023-2024	Clausura	125	Laura Herrera	Pumas	1	448
2023-2024	Clausura	126	Dirce Delgado	Pumas	1	1523
2023-2024	Clausura	127	Fernanda Paz Pinilla	León	1	1113
2023-2024	Clausura	128	Linda Ruth Bravo	León	1	1408
2023-2024	Clausura	129	Isabela Esquivias	León	1	1465
2023-2024	Clausura	130	Sayuri Yuki Watari	FC Juárez	1	411
2023-2024	Clausura	131	Destinney Rosalía Duron	FC Juárez	1	470
2023-2024	Clausura	132	Karime Abud	FC Juárez	1	844
2023-2024	Clausura	133	Sumiko Gutiérrez	FC Juárez	1	987
2023-2024	Clausura	134	Grace Asantewaa	FC Juárez	1	1093
2023-2024	Clausura	135	Ivanna Guadalupe Estrada	Toluca	1	49
2023-2024	Clausura	136	Liliana Rodríguez	Toluca	1	374
2023-2024	Clausura	137	Celia Chainez Bensalem	Toluca	1	459
2023-2024	Clausura	138	Natalia Inés Gómez Junco	Toluca	1	899
2023-2024	Clausura	139	Dulce Maria Alvarado	Querétaro	1	315
2023-2024	Clausura	140	Claudia Fernanda Cid	Querétaro	1	467
2023-2024	Clausura	141	Deisy Estefania Ojeda	Querétaro	1	822
2023-2024	Clausura	142	Barbrha Alejandra Figueroa	Querétaro	1	981
2023-2024	Clausura	143	Solange Lemos	Querétaro	1	1002
2023-2024	Clausura	144	Leidy Lizeth Ramos	Querétaro	1	1211
2023-2024	Clausura	145	Magaly Cortés	Querétaro	1	1245
2023-2024	Clausura	146	Victoria López	Tijuana	1	57
2023-2024	Clausura	147	Luciana Nicolé García	Tijuana	1	58
2023-2024	Clausura	148	Paola Del Carmen Villamizar	Tijuana	1	379
2023-2024	Clausura	149	Mariana Munguía	Tijuana	1	510
2023-2024	Clausura	150	Bianca Esther Mora	Tijuana	1	940
2023-2024	Clausura	151	Joselyn De La Rosa	Tijuana	1	1291
2023-2024	Clausura	152	Alexa Daniela Curiel	Atlas	1	146
2023-2024	Clausura	153	Alejandra Lomelí	Atlas	1	1388
2023-2024	Clausura	154	Ivonne Najar	Puebla	1	724
2023-2024	Clausura	155	Viridiana López	Puebla	1	885
2023-2024	Clausura	156	Andrea González	Puebla	1	1161
2023-2024	Clausura	157	Samantha López	Mazatlán FC	1	1163
2023-2024	Clausura	158	Zulma Yared Hernández	Mazatlán FC	1	1330
2023-2024	Clausura	159	Olga Anahí Trasviña	Mazatlán FC	1	1342
2023-2024	Clausura	160	Brenda Judith García	Mazatlán FC	1	1455
2023-2024	Clausura	161	Saira Cecilia López	Necaxa	1	179
2023-2024	Clausura	162	María Del Pilar Aceves	Necaxa	1	313
2023-2024	Clausura	163	María José Acosta	Necaxa	1	1222
2023-2024	Clausura	164	Itzia Tenahua	Cruz Azul	1	332
2023-2024	Clausura	165	Alejandra Guadalupe Martínez	Cruz Azul	1	1332
2023-2024	Clausura	166	Dalia Isabel Molina	Cruz Azul	1	1443
2023-2024	Clausura	167	Mallory Ann Olsson	Santos Laguna	1	604
2023-2024	Clausura	168	Celeste Guevara	Santos Laguna	1	637
2023-2024	Clausura	169	Alexia Nayeli Villanueva	Santos Laguna	1	1285
2023-2024	Clausura	170	Michel Anahy Ruiz	Santos Laguna	1	1361
2023-2024	Clausura	171	Joana Robles	Atlético de San Luis	1	414
2023-2024	Clausura	172	Mariela García	Atlético de San Luis	1	553
2023-2024	Clausura	173	Mayra Alejandra Santana	Atlético de San Luis	1	624
2023-2024	Clausura	174	Vanessa González	Atlético de San Luis	1	775
2023-2024	Clausura	175	María Fernanda Sánchez	Atlético de San Luis	1	1335
2023-2024	Clausura	176	Zellyka Guadalupe Arce	Atlético de San Luis	1	1355
2023-2024	Clausura	177	Karen Lizbeth Cano	Atlético de San Luis	1	1530
2024-2025	Apertura	1	Verónica Charlyn Corral	Pachuca	18	1530
2024-2025	Apertura	2	Aisha Keshy Solórzano	Tijuana	16	1385
2024-2025	Apertura	3	Lizbeth Jacqueline Ovalle	Tigres	15	1251
2024-2025	Apertura	4	Kiana Angélica Palacios	América	13	1141
2024-2025	Apertura	5	Alicia Cervantes	Guadalajara	11	1490
2024-2025	Apertura	6	Stephanie Mariana Ribeiro	Pumas	11	1033
2024-2025	Apertura	7	Sarah Jacquelyn Luebbert	América	10	1113
2024-2025	Apertura	8	Christina Marie Burkenroad	Rayadas	9	801
2024-2025	Apertura	9	Chinwendu Verónica Ihezuo	Pachuca	9	1073
2024-2025	Apertura	10	María Paula Salas	Atlas	9	1211
2024-2025	Apertura	11	Mariel Román	Toluca	8	1278
2024-2025	Apertura	12	Jasmine Alexis Casarez	FC Juárez	7	1077
2024-2025	Apertura	13	Dania Nicole Pérez	Rayadas	6	959
2024-2025	Apertura	14	Michaela Batya Bisi Abam	Toluca	6	1084
2024-2025	Apertura	15	Cinthya Peraza	Toluca	6	1417
2024-2025	Apertura	16	Enekia Kasonga Lunyamila	Mazatlán FC	6	1067
2024-2025	Apertura	17	Lucía García	Rayadas	5	732
2024-2025	Apertura	18	Scarlett Nefer Camberos	América	5	758
2024-2025	Apertura	19	Irene Guerrero	América	5	1209
2024-2025	Apertura	20	Aerial Lynndonna Chavarin	Pumas	5	1158
2024-2025	Apertura	21	Edna Fabiola Santamaria	Querétaro	5	1258
2024-2025	Apertura	22	Marcia Paola García	Atlas	5	774
2024-2025	Apertura	23	Ana Lucia Martínez	Rayadas	4	662
2024-2025	Apertura	24	Chrestinah Thembi Kgatlana	Tigres	4	1010
2024-2025	Apertura	25	Dayana Milan Martin	FC Juárez	4	370
2024-2025	Apertura	26	Janelly Farias	FC Juárez	4	1209
2024-2025	Apertura	27	Adriana Iturbide	Guadalajara	4	459
2024-2025	Apertura	28	Gabriela Valenzuela	Guadalajara	4	1191
2024-2025	Apertura	29	Deneisha Selena Blackwood	Pumas	4	1354
2024-2025	Apertura	30	Wendis Jhoana Cabrera	Querétaro	4	610
2024-2025	Apertura	31	Dalia Isabel Molina	Cruz Azul	4	1261
2024-2025	Apertura	32	María Fernanda Sánchez	Atlético de San Luis	4	1310
2024-2025	Apertura	33	Allison Rose Veloz	Necaxa	4	1182
2024-2025	Apertura	34	Jermaine Seoposenwe	Rayadas	3	683
2024-2025	Apertura	35	Ana Inés Costa Mendes	Tigres	3	543
2024-2025	Apertura	36	Alison Hecnary González	Tigres	3	669
2024-2025	Apertura	37	Jennifer Hermoso	Tigres	3	712
2024-2025	Apertura	38	Priscila Flor Da Silva	América	3	315
2024-2025	Apertura	39	María Natalia Mauleon	América	3	438
2024-2025	Apertura	40	Angelique Montserrat Saldivar	América	3	508
2024-2025	Apertura	41	Aylin Ariana Aviléz	América	3	524
2024-2025	Apertura	42	Karen Irasema Luna	América	3	1222
2024-2025	Apertura	43	Grace Asantewaa	FC Juárez	3	1207
2024-2025	Apertura	44	Annia Stephany Mejía	FC Juárez	3	1347
2024-2025	Apertura	45	Christian Carolina Jaramillo	Guadalajara	3	907
2024-2025	Apertura	46	Dorian Montserrat Hernández	Guadalajara	3	1015
2024-2025	Apertura	47	Sindia Anahi Arteaga	Pumas	3	675
2024-2025	Apertura	48	Amandine Henry	Toluca	3	634
2024-2025	Apertura	49	Brenda Woch Da Graca	Toluca	3	1296
2024-2025	Apertura	50	Daniela Espinosa	Tijuana	3	820
2024-2025	Apertura	51	Mayra Alejandra Pelayo-bernal	Tijuana	3	1088
2024-2025	Apertura	52	Dulce Maria Alvarado	Querétaro	3	402
2024-2025	Apertura	53	Solange Lemos	Querétaro	3	1468
2024-2025	Apertura	54	Ximena Elizabeth Rios	Cruz Azul	3	909
2024-2025	Apertura	55	Danielle Marie Fuentes	Cruz Azul	3	1163
2024-2025	Apertura	56	Lizbeth Ángeles	León	3	940
2024-2025	Apertura	57	María Cristina Montaño	Mazatlán FC	3	1382
2024-2025	Apertura	58	Sandra Nabweteme	Santos Laguna	3	296
2024-2025	Apertura	59	Katty Martínez	Rayadas	2	614
2024-2025	Apertura	60	Diana Laura García	Rayadas	2	1031
2024-2025	Apertura	61	Rebeca Bernal	Rayadas	2	1210
2024-2025	Apertura	62	Tanna Sánchez	Rayadas	2	1247
2024-2025	Apertura	63	Maricarmen Reyes	Tigres	2	840
2024-2025	Apertura	64	Sandra Stephany Mayor	Tigres	2	1087
2024-2025	Apertura	65	Nicolette Andrea Hernández	América	2	841
2024-2025	Apertura	66	Kimberly Vanessa Rodríguez	América	2	849
2024-2025	Apertura	67	Nina Dominique Nicosia	Pachuca	2	475
2024-2025	Apertura	68	Mónica Ocampo	Pachuca	2	734
2024-2025	Apertura	69	Ohale Osinachi	Pachuca	2	1253
2024-2025	Apertura	70	Prisca Chilufya	FC Juárez	2	1003
2024-2025	Apertura	71	Liliana Mercado	FC Juárez	2	1134
2024-2025	Apertura	72	Karime Abud	FC Juárez	2	1448
2024-2025	Apertura	73	Esbeydi Viridiana Salazar	Guadalajara	2	1112
2024-2025	Apertura	74	Kinberly Paloma Guzmán	Guadalajara	2	1321
2024-2025	Apertura	75	Laura Herrera	Pumas	2	530
2024-2025	Apertura	76	Alejandra Guerrero	Pumas	2	1091
2024-2025	Apertura	77	Paola Del Carmen Villamizar	Tijuana	2	733
2024-2025	Apertura	78	Mónica Rose Alvarado	Tijuana	2	1064
2024-2025	Apertura	79	Bianca Esther Mora	Tijuana	2	1153
2024-2025	Apertura	80	Emily Loriana Flores	Querétaro	2	1268
2024-2025	Apertura	81	Alondra Karime Camargo	Querétaro	2	1530
2024-2025	Apertura	82	Kayla Laurynn Fernandez	Atlas	2	369
2024-2025	Apertura	83	Brenda Damaris Ceren	Atlas	2	1401
2024-2025	Apertura	84	María Fernanda Daniela Pérez	Atlas	2	1530
2024-2025	Apertura	85	Sarah Anne Mary Huchet	Cruz Azul	2	607
2024-2025	Apertura	86	Ana Rosa García	Cruz Azul	2	780
2024-2025	Apertura	87	Renata Fernanda Huerta	Cruz Azul	2	873
2024-2025	Apertura	88	Danya Jasmin Gutiérrrez	Cruz Azul	2	902
2024-2025	Apertura	89	Edith Deyanira Carmona	Cruz Azul	2	1417
2024-2025	Apertura	90	Valeria Valdez	Cruz Azul	2	1529
2024-2025	Apertura	91	Elliana Rose Ramirez	León	2	288
2024-2025	Apertura	92	Yashira Yuleth Barrientos	León	2	625
2024-2025	Apertura	93	Daniela Calderón	León	2	751
2024-2025	Apertura	94	Michelle Guadalupe Gutiérrez	Atlético de San Luis	2	120
2024-2025	Apertura	95	Denisse Alejandra Rivera	Atlético de San Luis	2	846
2024-2025	Apertura	96	Isidora Victoria Olave	Atlético de San Luis	2	1422
2024-2025	Apertura	97	Olga Massombo	Mazatlán FC	2	713
2024-2025	Apertura	98	Sebelle Elysse Rojas	Puebla	2	1222
2024-2025	Apertura	99	Johana Esperanza Rosas	Puebla	2	1269
2024-2025	Apertura	100	Kimberli Anahí Gómez	Santos Laguna	2	1177
2024-2025	Apertura	101	Ana Gabriela Huerta	Necaxa	2	915
2024-2025	Apertura	102	Carla Monique Montes	Rayadas	1	94
2024-2025	Apertura	103	Lourdes Sofía Martínez	Rayadas	1	121
2024-2025	Apertura	104	Marcela Restrepo	Rayadas	1	421
2024-2025	Apertura	105	Diana Laura Evangelista	Rayadas	1	617
2024-2025	Apertura	106	Myra Alexandra Delgadillo	Rayadas	1	695
2024-2025	Apertura	107	Karol Esthefany Bernal	Rayadas	1	783
2024-2025	Apertura	108	María Fernanda Elizondo	Tigres	1	111
2024-2025	Apertura	109	Natalia Judith Colín	Tigres	1	253
2024-2025	Apertura	110	Lydia Nayeli Rangel	Tigres	1	399
2024-2025	Apertura	111	Joseline Montoya	Tigres	1	443
2024-2025	Apertura	112	Belén De Jesús Cruz	Tigres	1	694
2024-2025	Apertura	113	Cristina Del Carmen Ferral	Tigres	1	890
2024-2025	Apertura	114	Greta Alejandra Espinoza	Tigres	1	1119
2024-2025	Apertura	115	Rebekah Alysee Valdez	América	1	11
2024-2025	Apertura	116	Alexa Soto	América	1	82
2024-2025	Apertura	117	Nancy Guadalupe Antonio	América	1	1110
2024-2025	Apertura	118	Abril Anahí Fragoso	Pachuca	1	33
2024-2025	Apertura	119	Shanice Janice Van De Sanden	Pachuca	1	550
2024-2025	Apertura	120	Amanda Araceli Pérez	Pachuca	1	721
2024-2025	Apertura	121	Alice Fernanda Soto	Pachuca	1	818
2024-2025	Apertura	122	Alexandra Guadalupe Godínez	Pachuca	1	956
2024-2025	Apertura	123	Yirleidis Quejada	Pachuca	1	1153
2024-2025	Apertura	124	Daniela Frank Flores	Pachuca	1	1233
2024-2025	Apertura	125	Vaitiare Kenti Robles	Pachuca	1	1366
2024-2025	Apertura	126	Blanca María Solís	FC Juárez	1	148
2024-2025	Apertura	127	Mónica Desiree Monsiváis	FC Juárez	1	173
2024-2025	Apertura	128	Eva Beatriz González	FC Juárez	1	353
2024-2025	Apertura	129	Amalia Phoebe López	Guadalajara	1	102
2024-2025	Apertura	130	Kristal Rubi Soto	Guadalajara	1	232
2024-2025	Apertura	131	Yamile Azenek Franco	Guadalajara	1	424
2024-2025	Apertura	132	Angélica Araceli Torres	Guadalajara	1	1163
2024-2025	Apertura	133	Diana Jaqueline Rodríguez	Guadalajara	1	1318
2024-2025	Apertura	134	Camila Vite	Pumas	1	114
2024-2025	Apertura	135	Dania Belén Padilla	Pumas	1	989
2024-2025	Apertura	136	Karen Becerril	Pumas	1	1038
2024-2025	Apertura	137	Carina Felipe	Pumas	1	1332
2024-2025	Apertura	138	Paola Chavero	Pumas	1	1350
2024-2025	Apertura	139	Celia Chainez Bensalem	Toluca	1	336
2024-2025	Apertura	140	Liliana Rodríguez	Toluca	1	627
2024-2025	Apertura	141	Diana Paola Monroy	Toluca	1	796
2024-2025	Apertura	142	Brenda Vega	Toluca	1	1038
2024-2025	Apertura	143	Mitsy Nayelli Ramirez	Toluca	1	1228
2024-2025	Apertura	144	Claudia Fernanda Cid	Tijuana	1	127
2024-2025	Apertura	145	Iraida Guadalupe Fernández	Tijuana	1	223
2024-2025	Apertura	146	Nathaly Sofía Martínez	Tijuana	1	452
2024-2025	Apertura	147	Fabiola Villalobos	Tijuana	1	467
2024-2025	Apertura	148	Andrea González	Tijuana	1	548
2024-2025	Apertura	149	Ammanda Mariee Marroquin	Tijuana	1	1100
2024-2025	Apertura	150	Bibiana Guadalupe Quintos	Tijuana	1	1153
2024-2025	Apertura	151	Daphne Melissa Herrera	Tijuana	1	1249
2024-2025	Apertura	152	Victoria Sarahí Ceceña	Querétaro	1	383
2024-2025	Apertura	153	Alejandra Lomelí	Atlas	1	563
2024-2025	Apertura	154	Jaquelín García	Atlas	1	1330
2024-2025	Apertura	155	Vivian Obianujuwan Ikechukwu	Cruz Azul	1	577
2024-2025	Apertura	156	Julissa Fernanda Dávila	Cruz Azul	1	760
2024-2025	Apertura	157	Ivonne Gutiérrez	Cruz Azul	1	926
2024-2025	Apertura	158	Itzell Alemán	León	1	370
2024-2025	Apertura	159	Sanjuana De Jesús Muñoz	León	1	568
2024-2025	Apertura	160	Vanessa Guadalupe López	León	1	862
2024-2025	Apertura	161	Yanin Madrid	León	1	895
2024-2025	Apertura	162	Joana Robles	Atlético de San Luis	1	834
2024-2025	Apertura	163	Laura Montserrat Parra	Atlético de San Luis	1	1353
2024-2025	Apertura	164	Farlyn Fernanda Caicedo	Atlético de San Luis	1	1420
2024-2025	Apertura	165	Sinoxolo Cesane	Mazatlán FC	1	1098
2024-2025	Apertura	166	Gabriela Rocío Álvarez	Mazatlán FC	1	1205
2024-2025	Apertura	167	Brenda Judith García	Mazatlán FC	1	1440
2024-2025	Apertura	168	Joselyn Solís	Puebla	1	94
2024-2025	Apertura	169	Vania Itzel Moron	Puebla	1	135
2024-2025	Apertura	170	Venicia Gabriela Juárez	Puebla	1	198
2024-2025	Apertura	171	Dulce María Méndez	Puebla	1	208
2024-2025	Apertura	172	Liliana Fernández	Puebla	1	222
2024-2025	Apertura	173	Anna Jane Loftus	Puebla	1	662
2024-2025	Apertura	174	Luisa Fernanda De Alba	Puebla	1	796
2024-2025	Apertura	175	Ahtziri Méndez	Puebla	1	833
2024-2025	Apertura	176	Rubí Iridian Villegas	Puebla	1	1305
2024-2025	Apertura	177	María Magalí Del Verdún Cuadrado	Santos Laguna	1	422
2024-2025	Apertura	178	Frida Carolina Cussin	Santos Laguna	1	574
2024-2025	Apertura	179	Lia Mariel Romero	Santos Laguna	1	588
2024-2025	Apertura	180	Yessenia Esmeralda Novella	Santos Laguna	1	904
2024-2025	Apertura	181	Michel Anahy Ruiz	Santos Laguna	1	1037
2024-2025	Apertura	182	Havi Larisa Ibarra	Santos Laguna	1	1409
2024-2025	Apertura	183	Quetzali Jahoumara Barranco	Necaxa	1	581
2024-2025	Apertura	184	Athziri Guadalupe Alonso	Necaxa	1	817
\.


--
-- TOC entry 3681 (class 0 OID 16416)
-- Dependencies: 212
-- Data for Name: lbf_historical_stats; Type: TABLE DATA; Schema: public; Owner: labasefemenil
--

COPY public.lbf_historical_stats (temporada, torneo, posicion, club, jj, jg, je, jp, gf, gc, dif, pts, jj2, jg2, je2, jp2, gf2, gc2, dif2, pts2, jj3, jg3, je3, jp3, gf3, gc3, dif3, pts3) FROM stdin;
2017-2018	Clausura	1	Rayadas	14	11	1	2	45	13	32	34	7	5	1	1	25	6	19	16	7	6	0	1	20	7	13	18
2017-2018	Clausura	2	América	14	10	3	1	47	11	36	33	7	6	0	1	24	5	19	18	7	4	3	0	23	6	17	15
2017-2018	Clausura	3	Tigres	14	10	1	3	38	16	22	31	7	5	0	2	23	9	14	15	7	5	1	1	15	7	8	16
2017-2018	Clausura	4	Guadalajara	14	9	2	3	30	13	17	29	7	4	0	3	11	6	5	12	7	5	2	0	19	7	12	17
2017-2018	Clausura	5	Toluca	14	9	2	3	22	13	9	29	7	3	2	2	10	6	4	11	7	6	0	1	12	7	5	18
2017-2018	Clausura	6	Pachuca	14	9	1	4	32	13	19	28	7	4	1	2	14	7	7	13	7	5	0	2	18	6	12	15
2017-2018	Clausura	7	Pumas	14	7	3	4	18	7	11	24	7	4	1	2	12	5	7	13	7	3	2	2	6	2	4	11
2017-2018	Clausura	8	Santos Laguna	14	8	0	6	21	19	2	24	7	4	0	3	12	10	2	12	7	4	0	3	9	9	0	12
2017-2018	Clausura	9	Veracruz	14	5	3	6	10	19	-9	18	7	3	1	3	6	10	-4	10	7	2	2	3	4	9	-5	8
2017-2018	Clausura	10	Querétaro	14	5	3	6	21	32	-11	18	7	4	1	2	15	15	0	13	7	1	2	4	6	17	-11	5
2017-2018	Clausura	11	Cruz Azul	14	3	3	8	9	26	-17	12	7	3	0	4	5	8	-3	9	7	0	3	4	4	18	-14	3
2017-2018	Clausura	12	Tijuana	14	2	4	8	11	21	-10	10	7	0	4	3	6	10	-4	4	7	2	0	5	5	11	-6	6
2017-2018	Clausura	13	Necaxa	14	3	1	10	10	34	-24	10	7	1	1	5	5	11	-6	4	7	2	0	5	5	23	-18	6
2017-2018	Clausura	14	León	14	2	3	9	20	39	-19	9	7	1	2	4	11	15	-4	5	7	1	1	5	9	24	-15	4
2017-2018	Clausura	15	Atlas	14	2	1	11	15	34	-19	7	7	2	1	4	12	14	-2	7	7	0	0	7	3	20	-17	0
2017-2018	Clausura	16	M. Morelia	14	0	3	11	8	47	-39	3	7	0	2	5	4	25	-21	2	7	0	1	6	4	22	-18	1
2018-2019	Apertura	1	Tigres	16	12	4	0	51	19	32	40	8	5	3	0	25	8	17	18	8	7	1	0	26	11	15	22
2018-2019	Apertura	2	Pachuca	16	12	2	2	31	14	17	38	8	7	0	1	15	5	10	21	8	5	2	1	16	9	7	17
2018-2019	Apertura	3	América	16	11	2	3	28	12	16	35	8	6	0	2	13	6	7	18	8	5	2	1	15	6	9	17
2018-2019	Apertura	4	Guadalajara	16	9	4	3	30	16	14	31	8	4	2	2	11	9	2	14	8	5	2	1	19	7	12	17
2018-2019	Apertura	5	Rayadas	16	8	6	2	38	15	23	30	8	4	2	2	24	7	17	14	8	4	4	0	14	8	6	16
2018-2019	Apertura	6	Toluca	16	9	3	4	37	17	20	30	8	4	1	3	21	8	13	13	8	5	2	1	16	9	7	17
2018-2019	Apertura	7	Pumas	16	9	3	4	20	10	10	30	8	4	2	2	10	6	4	14	8	5	1	2	10	4	6	16
2018-2019	Apertura	8	Atlas	16	8	5	3	28	13	15	29	8	5	2	1	17	5	12	17	8	3	3	2	11	8	3	12
2018-2019	Apertura	9	Puebla	16	6	7	3	25	12	13	25	8	3	4	1	16	7	9	13	8	3	3	2	9	5	4	12
2018-2019	Apertura	10	León	16	6	4	6	20	21	-1	22	8	3	2	3	12	12	0	11	8	3	2	3	8	9	-1	11
2018-2019	Apertura	11	Querétaro	16	4	5	7	16	32	-16	17	8	2	2	4	7	10	-3	8	8	2	3	3	9	22	-13	9
2018-2019	Apertura	12	Lobos BUAP	16	4	2	10	18	28	-10	14	8	2	1	5	11	16	-5	7	8	2	1	5	7	12	-5	7
2018-2019	Apertura	13	M. Morelia	16	3	4	9	15	34	-19	13	8	2	1	5	10	20	-10	7	8	1	3	4	5	14	-9	6
2018-2019	Apertura	14	Veracruz	16	3	4	9	14	35	-21	13	8	2	3	3	10	15	-5	9	8	1	1	6	4	20	-16	4
2018-2019	Apertura	15	Tijuana	16	2	3	11	10	28	-18	9	8	2	2	4	4	9	-5	8	8	0	1	7	6	19	-13	1
2018-2019	Apertura	16	Cruz Azul	16	2	2	12	12	39	-27	8	8	2	1	5	8	15	-7	7	8	0	1	7	4	24	-20	1
2018-2019	Apertura	17	Santos Laguna	16	1	4	11	14	34	-20	7	8	0	4	4	9	16	-7	4	8	1	0	7	5	18	-13	3
2018-2019	Apertura	18	Necaxa	16	1	4	11	5	33	-28	7	8	0	2	6	1	14	-13	2	8	1	2	5	4	19	-15	5
2018-2019	Clausura	1	Rayadas	16	13	2	1	43	13	30	41	8	7	0	1	26	7	19	21	8	6	2	0	17	6	11	20
2018-2019	Clausura	2	América	16	12	2	2	29	10	19	38	8	7	0	1	18	4	14	21	8	5	2	1	11	6	5	17
2018-2019	Clausura	3	Tigres	16	11	3	2	36	12	24	36	8	6	2	0	21	5	16	20	8	5	1	2	15	7	8	16
2018-2019	Clausura	4	Pachuca	16	11	3	2	33	13	20	36	8	6	2	0	16	1	15	20	8	5	1	2	17	12	5	16
2018-2019	Clausura	5	Atlas	16	11	1	4	32	18	14	34	8	5	1	2	18	11	7	16	8	6	0	2	14	7	7	18
2018-2019	Clausura	6	Puebla	16	8	4	4	13	10	3	28	8	4	2	2	8	6	2	14	8	4	2	2	5	4	1	14
2018-2019	Clausura	7	León	16	7	3	6	21	23	-2	24	8	3	2	3	10	10	0	11	8	4	1	3	11	13	-2	13
2018-2019	Clausura	8	Guadalajara	16	7	2	7	17	17	0	23	8	3	2	3	8	6	2	11	8	4	0	4	9	11	-2	12
2018-2019	Clausura	9	Pumas	16	7	1	8	19	16	3	22	8	4	0	4	10	6	4	12	8	3	1	4	9	10	-1	10
2018-2019	Clausura	10	Lobos BUAP	16	6	3	7	20	17	3	21	8	4	1	3	15	10	5	13	8	2	2	4	5	7	-2	8
2018-2019	Clausura	11	Santos Laguna	16	5	3	8	19	25	-6	18	8	3	1	4	10	10	0	10	8	2	2	4	9	15	-6	8
2018-2019	Clausura	12	Veracruz	16	5	2	9	10	24	-14	17	8	3	1	4	5	10	-5	10	8	2	1	5	5	14	-9	7
2018-2019	Clausura	13	Toluca	16	4	3	9	14	23	-9	15	8	2	3	3	10	11	-1	9	8	2	0	6	4	12	-8	6
2018-2019	Clausura	14	M. Morelia	16	3	5	8	20	32	-12	14	8	2	1	5	14	16	-2	7	8	1	4	3	6	16	-10	7
2018-2019	Clausura	15	Cruz Azul	16	3	4	9	18	27	-9	13	8	1	3	4	9	13	-4	6	8	2	1	5	9	14	-5	7
2018-2019	Clausura	16	Tijuana	16	3	4	9	10	26	-16	13	8	2	1	5	4	10	-6	7	8	1	3	4	6	16	-10	6
2018-2019	Clausura	17	Necaxa	16	1	4	11	9	31	-22	7	8	0	2	6	4	15	-11	2	8	1	2	5	5	16	-11	5
2018-2019	Clausura	18	Querétaro	16	1	3	12	17	43	-26	6	8	1	2	5	9	14	-5	5	8	0	1	7	8	29	-21	1
2019-2020	Apertura	1	Rayadas	18	16	0	2	52	16	36	48	9	9	0	0	31	5	26	27	9	7	0	2	21	11	10	21
2019-2020	Apertura	2	Tigres	18	13	4	1	41	14	27	43	9	8	1	0	22	4	18	25	9	5	3	1	19	10	9	18
2019-2020	Apertura	3	Pachuca	18	11	3	4	42	24	18	36	9	6	1	2	23	14	9	19	9	5	2	2	19	10	9	17
2019-2020	Apertura	4	América	18	9	5	4	29	17	12	32	9	5	3	1	14	5	9	18	9	4	2	3	15	12	3	14
2019-2020	Apertura	5	Guadalajara	18	9	4	5	30	23	7	31	9	6	1	2	15	9	6	19	9	3	3	3	15	14	1	12
2019-2020	Apertura	6	Toluca	18	9	4	5	24	20	4	31	9	5	2	2	15	9	6	17	9	4	2	3	9	11	-2	14
2019-2020	Apertura	7	Tijuana	18	8	5	5	27	21	6	29	9	6	2	1	19	9	10	20	9	2	3	4	8	12	-4	9
2019-2020	Apertura	8	Atlas	18	7	7	4	35	20	15	28	9	3	3	3	14	13	1	12	9	4	4	1	21	7	14	16
2019-2020	Apertura	9	M. Morelia	18	8	4	6	30	28	2	28	9	5	3	1	17	10	7	18	9	3	1	5	13	18	-5	10
2019-2020	Apertura	10	Cruz Azul	18	6	6	6	28	25	3	24	9	4	3	2	18	12	6	15	9	2	3	4	10	13	-3	9
2019-2020	Apertura	11	León	18	6	5	7	23	21	2	23	9	4	3	2	15	11	4	15	9	2	2	5	8	10	-2	8
2019-2020	Apertura	12	Puebla	18	5	6	7	16	25	-9	21	9	2	3	4	7	12	-5	9	9	3	3	3	9	13	-4	12
2019-2020	Apertura	13	Querétaro	18	5	5	8	15	32	-17	20	9	2	2	5	5	18	-13	8	9	3	3	3	10	14	-4	12
2019-2020	Apertura	14	Pumas	18	4	7	7	18	16	2	19	9	4	2	3	13	7	6	14	9	0	5	4	5	9	-4	5
2019-2020	Apertura	15	Veracruz	18	4	5	9	17	29	-12	17	9	4	3	2	10	7	3	15	9	0	2	7	7	22	-15	2
2019-2020	Apertura	16	Santos Laguna	18	4	4	10	17	28	-11	16	9	1	4	4	8	12	-4	7	9	3	0	6	9	16	-7	9
2019-2020	Apertura	17	Atlético de San Luis	18	2	5	11	11	38	-27	11	9	2	2	5	7	20	-13	8	9	0	3	6	4	18	-14	3
2019-2020	Apertura	18	FC Juárez	18	1	4	13	8	37	-29	7	9	1	3	5	2	16	-14	6	9	0	1	8	6	21	-15	1
2019-2020	Apertura	19	Necaxa	18	1	3	14	6	35	-29	6	9	1	2	6	6	15	-9	5	9	0	1	8	0	20	-20	1
2019-2020	Clausura	1	Tigres	8	7	1	0	22	5	17	22	4	3	1	0	9	3	6	10	4	4	0	0	13	2	11	12
2019-2020	Clausura	2	Atlas	9	7	1	1	18	7	11	22	5	4	1	0	12	5	7	13	4	3	0	1	6	2	4	9
2019-2020	Clausura	3	Guadalajara	10	5	3	2	16	10	6	18	5	2	1	2	8	8	0	7	5	3	2	0	8	2	6	11
2019-2020	Clausura	4	Rayadas	8	5	2	1	15	9	6	17	4	3	0	1	9	6	3	9	4	2	2	0	6	3	3	8
2019-2020	Clausura	5	América	9	5	2	2	16	11	5	17	4	3	0	1	10	4	6	9	5	2	2	1	6	7	-1	8
2019-2020	Clausura	6	Pachuca	9	5	1	3	18	9	9	16	4	2	1	1	10	4	6	7	5	3	0	2	8	5	3	9
2019-2020	Clausura	7	León	9	5	1	3	18	12	6	16	4	2	1	1	8	2	6	7	5	3	0	2	10	10	0	9
2019-2020	Clausura	8	Cruz Azul	10	4	4	2	11	8	3	16	5	2	1	2	5	4	1	7	5	2	3	0	6	4	2	9
2019-2020	Clausura	9	Pumas	9	3	5	1	12	11	1	14	5	1	3	1	7	9	-2	6	4	2	2	0	5	2	3	8
2019-2020	Clausura	10	Tijuana	9	4	1	4	15	13	2	13	5	3	0	2	9	6	3	9	4	1	1	2	6	7	-1	4
2019-2020	Clausura	11	M. Morelia	10	4	1	5	14	12	2	13	5	2	0	3	5	5	0	6	5	2	1	2	9	7	2	7
2019-2020	Clausura	12	Puebla	10	3	2	5	9	9	0	11	6	0	2	4	2	7	-5	2	4	3	0	1	7	2	5	9
2019-2020	Clausura	13	Necaxa	9	2	3	4	10	17	-7	9	4	0	1	3	2	10	-8	1	5	2	2	1	8	7	1	8
2019-2020	Clausura	14	Atlético de San Luis	9	2	2	5	9	19	-10	8	5	1	0	4	6	14	-8	3	4	1	2	1	3	5	-2	5
2019-2020	Clausura	15	Toluca	10	2	1	7	7	18	-11	7	5	1	0	4	4	8	-4	3	5	1	1	3	3	10	-7	4
2019-2020	Clausura	16	FC Juárez	9	1	3	5	7	15	-8	6	4	0	3	1	1	4	-3	3	5	1	0	4	6	11	-5	3
2019-2020	Clausura	17	Querétaro	10	0	3	7	5	27	-22	3	5	0	2	3	3	10	-7	2	5	0	1	4	2	17	-15	1
2019-2020	Clausura	18	Santos Laguna	9	0	2	7	8	18	-10	2	4	0	2	2	4	7	-3	2	5	0	0	5	4	11	-7	0
2020-2021	Apertura	1	Tigres	17	15	1	1	50	11	39	46	9	8	0	1	30	7	23	24	8	7	1	0	20	4	16	22
2020-2021	Apertura	2	Atlas	17	13	2	2	45	18	27	41	9	7	2	0	24	8	16	23	8	6	0	2	21	10	11	18
2020-2021	Apertura	3	Rayadas	17	13	2	2	41	19	22	41	8	6	1	1	23	11	12	19	9	7	1	1	18	8	10	22
2020-2021	Apertura	4	Guadalajara	17	12	2	3	42	17	25	38	8	6	0	2	18	7	11	18	9	6	2	1	24	10	14	20
2020-2021	Apertura	5	América	17	11	4	2	35	12	23	37	8	5	2	1	23	6	17	17	9	6	2	1	12	6	6	20
2020-2021	Apertura	6	Pumas	17	8	3	6	25	15	10	27	8	4	2	2	10	4	6	14	9	4	1	4	15	11	4	13
2020-2021	Apertura	7	Querétaro	17	7	5	5	24	20	4	26	9	3	3	3	10	12	-2	12	8	4	2	2	14	8	6	14
2020-2021	Apertura	8	Pachuca	17	7	3	7	24	25	-1	24	9	3	2	4	12	13	-1	11	8	4	1	3	12	12	0	13
2020-2021	Apertura	9	Santos Laguna	17	5	6	6	17	20	-3	21	9	2	4	3	7	10	-3	10	8	3	2	3	10	10	0	11
2020-2021	Apertura	10	Mazatlán FC	17	6	3	8	14	39	-25	21	8	4	2	2	10	11	-1	14	9	2	1	6	4	28	-24	7
2020-2021	Apertura	11	Atlético de San Luis	17	5	2	10	22	30	-8	17	9	5	1	3	15	12	3	16	8	0	1	7	7	18	-11	1
2020-2021	Apertura	12	Puebla	17	4	5	8	12	23	-11	17	9	3	3	3	6	9	-3	12	8	1	2	5	6	14	-8	5
2020-2021	Apertura	13	León	17	4	4	9	21	31	-10	16	8	2	1	5	9	17	-8	7	9	2	3	4	12	14	-2	9
2020-2021	Apertura	14	Cruz Azul	17	3	5	9	14	24	-10	14	9	2	2	5	9	12	-3	8	8	1	3	4	5	12	-7	6
2020-2021	Apertura	15	Toluca	17	4	1	12	16	29	-13	13	9	3	0	6	10	17	-7	9	8	1	1	6	6	12	-6	4
2020-2021	Apertura	16	Tijuana	17	3	3	11	16	31	-15	12	8	2	2	4	10	13	-3	8	9	1	1	7	6	18	-12	4
2020-2021	Apertura	17	FC Juárez	17	3	2	12	13	44	-31	11	8	2	0	6	4	21	-17	6	9	1	2	6	9	23	-14	5
2020-2021	Apertura	18	Necaxa	17	3	1	13	10	33	-23	10	8	2	0	6	7	14	-7	6	9	1	1	7	3	19	-16	4
2020-2021	Clausura	1	Tigres	17	12	4	1	39	12	27	40	8	7	1	0	18	3	15	22	9	5	3	1	21	9	12	18
2020-2021	Clausura	2	Guadalajara	17	11	3	3	44	19	25	36	9	7	1	1	28	7	21	22	8	4	2	2	16	12	4	14
2020-2021	Clausura	3	Atlas	17	10	4	3	30	23	7	34	8	4	2	2	17	14	3	14	9	6	2	1	13	9	4	20
2020-2021	Clausura	4	Rayadas	17	10	3	4	40	22	18	33	9	5	3	1	24	11	13	18	8	5	0	3	16	11	5	15
2020-2021	Clausura	5	Pumas	17	9	5	3	24	17	7	32	9	6	2	1	13	7	6	20	8	3	3	2	11	10	1	12
2020-2021	Clausura	6	Pachuca	17	9	3	5	24	15	9	30	8	6	1	1	13	4	9	19	9	3	2	4	11	11	0	11
2020-2021	Clausura	7	Toluca	17	8	5	4	17	14	3	29	8	4	3	1	7	4	3	15	9	4	2	3	10	10	0	14
2020-2021	Clausura	8	América	17	6	6	5	23	22	1	24	9	3	3	3	16	16	0	12	8	3	3	2	7	6	1	12
2020-2021	Clausura	9	Cruz Azul	17	6	4	7	21	26	-5	22	8	3	2	3	11	11	0	11	9	3	2	4	10	15	-5	11
2020-2021	Clausura	10	Santos Laguna	17	5	5	7	24	27	-3	20	8	2	3	3	11	12	-1	9	9	3	2	4	13	15	-2	11
2020-2021	Clausura	11	Querétaro	17	6	1	10	21	27	-6	19	8	3	1	4	11	14	-3	10	9	3	0	6	10	13	-3	9
2020-2021	Clausura	12	Tijuana	17	5	3	9	17	20	-3	18	9	2	2	5	5	7	-2	8	8	3	1	4	12	13	-1	10
2020-2021	Clausura	13	Mazatlán FC	17	4	6	7	16	25	-9	18	9	1	4	4	9	14	-5	7	8	3	2	3	7	11	-4	11
2020-2021	Clausura	14	León	17	5	2	10	17	33	-16	17	9	5	0	4	12	17	-5	15	8	0	2	6	5	16	-11	2
2020-2021	Clausura	15	Necaxa	17	4	4	9	14	29	-15	16	9	4	2	3	9	9	0	14	8	0	2	6	5	20	-15	2
2020-2021	Clausura	16	Puebla	17	3	4	10	14	24	-10	13	8	2	1	5	6	10	-4	7	9	1	3	5	8	14	-6	6
2020-2021	Clausura	17	FC Juárez	17	3	3	11	15	28	-13	12	9	2	2	5	10	12	-2	8	8	1	1	6	5	16	-11	4
2020-2021	Clausura	18	Atlético de San Luis	17	2	5	10	19	36	-17	11	8	2	2	4	11	16	-5	8	9	0	3	6	8	20	-12	3
2021-2022	Apertura	1	Tigres	17	15	2	0	52	7	45	47	9	9	0	0	34	4	30	27	8	6	2	0	18	3	15	20
2021-2022	Apertura	2	Rayadas	17	14	2	1	45	10	35	44	8	8	0	0	23	3	20	24	9	6	2	1	22	7	15	20
2021-2022	Apertura	3	Atlas	17	11	3	3	30	16	14	36	8	5	1	2	12	10	2	16	9	6	2	1	18	6	12	20
2021-2022	Apertura	4	Guadalajara	17	10	3	4	35	17	18	33	9	7	1	1	21	6	15	22	8	3	2	3	14	11	3	11
2021-2022	Apertura	5	América	17	9	4	4	33	19	14	31	9	6	2	1	21	9	12	20	8	3	2	3	12	10	2	11
2021-2022	Apertura	6	Santos Laguna	17	9	3	5	37	26	11	30	8	4	3	1	18	11	7	15	9	5	0	4	19	15	4	15
2021-2022	Apertura	7	Tijuana	17	9	3	5	30	19	11	30	8	5	1	2	19	5	14	16	9	4	2	3	11	14	-3	14
2021-2022	Apertura	8	Cruz Azul	17	7	3	7	15	28	-13	24	8	4	3	1	9	6	3	15	9	3	0	6	6	22	-16	9
2021-2022	Apertura	9	Pachuca	17	6	5	6	28	24	4	23	9	3	3	3	14	8	6	12	8	3	2	3	14	16	-2	11
2021-2022	Apertura	10	Pumas	17	5	6	6	19	16	3	21	9	5	1	3	13	6	7	16	8	0	5	3	6	10	-4	5
2021-2022	Apertura	11	Puebla	17	5	3	9	18	30	-12	18	9	3	2	4	12	14	-2	11	8	2	1	5	6	16	-10	7
2021-2022	Apertura	12	Toluca	17	5	3	9	13	27	-14	18	8	2	2	4	6	13	-7	8	9	3	1	5	7	14	-7	10
2021-2022	Apertura	13	Necaxa	17	5	3	9	16	34	-18	18	9	4	0	5	12	16	-4	12	8	1	3	4	4	18	-14	6
2021-2022	Apertura	14	Querétaro	17	4	4	9	19	23	-4	16	9	2	3	4	14	13	1	9	8	2	1	5	5	10	-5	7
2021-2022	Apertura	15	León	17	3	5	9	18	30	-12	14	8	1	3	4	8	13	-5	6	9	2	2	5	10	17	-7	8
2021-2022	Apertura	16	Atlético de San Luis	17	2	7	8	14	32	-18	13	8	2	4	2	10	10	0	10	9	0	3	6	4	22	-18	3
2021-2022	Apertura	17	Mazatlán FC	17	1	3	13	6	40	-34	6	8	1	2	5	5	14	-9	5	9	0	1	8	1	26	-25	1
2021-2022	Apertura	18	FC Juárez	17	1	2	14	11	41	-30	5	9	0	1	8	7	20	-13	1	8	1	1	6	4	21	-17	4
2021-2022	Clausura	1	Rayadas	17	14	1	2	51	13	38	43	9	8	1	0	31	6	25	25	8	6	0	2	20	7	13	18
2021-2022	Clausura	2	Guadalajara	17	13	4	0	27	6	21	43	8	7	1	0	11	1	10	22	9	6	3	0	16	5	11	21
2021-2022	Clausura	3	Tigres	17	11	6	0	43	11	32	39	8	5	3	0	23	4	19	18	9	6	3	0	20	7	13	21
2021-2022	Clausura	4	América	17	11	4	2	41	14	27	37	8	5	1	2	18	7	11	16	9	6	3	0	23	7	16	21
2021-2022	Clausura	5	Pachuca	17	9	3	5	28	22	6	30	8	4	2	2	17	9	8	14	9	5	1	3	11	13	-2	16
2021-2022	Clausura	6	Atlas	17	7	6	4	27	25	2	27	9	6	2	1	17	8	9	20	8	1	4	3	10	17	-7	7
2021-2022	Clausura	7	Pumas	17	6	4	7	18	17	1	22	8	4	2	2	9	4	5	14	9	2	2	5	9	13	-4	8
2021-2022	Clausura	8	Tijuana	17	4	9	4	24	29	-5	21	9	3	6	0	14	10	4	15	8	1	3	4	10	19	-9	6
2021-2022	Clausura	9	Cruz Azul	17	6	3	8	22	30	-8	21	9	3	1	5	12	16	-4	10	8	3	2	3	10	14	-4	11
2021-2022	Clausura	10	Toluca	17	5	5	7	29	32	-3	20	9	3	2	4	17	19	-2	11	8	2	3	3	12	13	-1	9
2021-2022	Clausura	11	Atlético de San Luis	17	5	5	7	23	29	-6	20	9	3	3	3	16	19	-3	12	8	2	2	4	7	10	-3	8
2021-2022	Clausura	12	Querétaro	17	5	3	9	16	29	-13	18	8	3	2	3	9	10	-1	11	9	2	1	6	7	19	-12	7
2021-2022	Clausura	13	Santos Laguna	17	5	2	10	17	29	-12	17	9	3	2	4	7	10	-3	11	8	2	0	6	10	19	-9	6
2021-2022	Clausura	14	Necaxa	17	3	6	8	17	31	-14	15	8	1	3	4	7	13	-6	6	9	2	3	4	10	18	-8	9
2021-2022	Clausura	15	Mazatlán FC	17	3	4	10	11	30	-19	13	9	3	2	4	8	11	-3	11	8	0	2	6	3	19	-16	2
2021-2022	Clausura	16	León	17	3	4	10	18	40	-22	13	9	2	2	5	14	23	-9	8	8	1	2	5	4	17	-13	5
2021-2022	Clausura	17	Puebla	17	3	3	11	11	25	-14	12	8	3	1	4	9	12	-3	10	9	0	2	7	2	13	-11	2
2021-2022	Clausura	18	FC Juárez	17	3	2	12	18	29	-11	11	8	2	1	5	8	12	-4	7	9	1	1	7	10	17	-7	4
2022-2023	Apertura	1	Guadalajara	17	14	1	2	36	10	26	43	9	8	1	0	25	4	21	25	8	6	0	2	11	6	5	18
2022-2023	Apertura	2	Rayadas	17	13	3	1	46	16	30	42	8	7	1	0	24	5	19	22	9	6	2	1	22	11	11	20
2022-2023	Apertura	3	Tigres	17	12	2	3	48	13	35	38	8	7	1	0	26	6	20	22	9	5	1	3	22	7	15	16
2022-2023	Apertura	4	América	17	11	3	3	37	16	21	36	9	7	0	2	21	7	14	21	8	4	3	1	16	9	7	15
2022-2023	Apertura	5	Tijuana	17	8	5	4	34	25	9	29	8	3	4	1	16	12	4	13	9	5	1	3	18	13	5	16
2022-2023	Apertura	6	Toluca	17	8	2	7	27	29	-2	26	8	5	1	2	14	10	4	16	9	3	1	5	13	19	-6	10
2022-2023	Apertura	7	Pachuca	17	8	1	8	35	25	10	25	8	6	0	2	20	5	15	18	9	2	1	6	15	20	-5	7
2022-2023	Apertura	8	Cruz Azul	17	7	4	6	16	16	0	25	8	4	3	1	8	2	6	15	9	3	1	5	8	14	-6	10
2022-2023	Apertura	9	Pumas	17	7	3	7	30	36	-6	24	8	4	2	2	18	9	9	14	9	3	1	5	12	27	-15	10
2022-2023	Apertura	10	Atlas	17	6	5	6	25	25	0	23	9	4	2	3	17	13	4	14	8	2	3	3	8	12	-4	9
2022-2023	Apertura	11	FC Juárez	17	7	1	9	24	28	-4	22	9	4	0	5	14	15	-1	12	8	3	1	4	10	13	-3	10
2022-2023	Apertura	12	León	17	6	3	8	22	26	-4	21	9	2	2	5	9	11	-2	8	8	4	1	3	13	15	-2	13
2022-2023	Apertura	13	Atlético de San Luis	17	7	0	10	23	36	-13	21	9	3	0	6	12	20	-8	9	8	4	0	4	11	16	-5	12
2022-2023	Apertura	14	Santos Laguna	17	6	1	10	24	36	-12	19	8	3	0	5	14	21	-7	9	9	3	1	5	10	15	-5	10
2022-2023	Apertura	15	Querétaro	17	3	3	11	16	31	-15	12	9	2	2	5	9	13	-4	8	8	1	1	6	7	18	-11	4
2022-2023	Apertura	16	Puebla	17	3	2	12	20	38	-18	11	8	3	0	5	14	18	-4	9	9	0	2	7	6	20	-14	2
2022-2023	Apertura	17	Mazatlán FC	17	3	2	12	15	49	-34	11	9	3	0	6	9	24	-15	9	8	0	2	6	6	25	-19	2
2022-2023	Apertura	18	Necaxa	17	1	5	11	12	35	-23	8	9	0	4	5	7	18	-11	4	8	1	1	6	5	17	-12	4
2022-2023	Clausura	1	Rayadas	17	12	3	2	46	15	31	39	9	8	1	0	32	6	26	25	8	4	2	2	14	9	5	14
2022-2023	Clausura	2	Tigres	17	12	2	3	48	13	35	38	9	8	1	0	32	3	29	25	8	4	1	3	16	10	6	13
2022-2023	Clausura	3	América	17	11	4	2	51	14	37	37	8	8	0	0	32	2	30	24	9	3	4	2	19	12	7	13
2022-2023	Clausura	4	Guadalajara	17	11	4	2	40	16	24	37	8	6	2	0	24	10	14	20	9	5	2	2	16	6	10	17
2022-2023	Clausura	5	Pachuca	17	11	3	3	54	24	30	36	9	8	0	1	41	9	32	24	8	3	3	2	13	15	-2	12
2022-2023	Clausura	6	FC Juárez	17	8	4	5	30	19	11	28	8	5	2	1	21	9	12	17	9	3	2	4	9	10	-1	11
2022-2023	Clausura	7	Atlas	17	8	4	5	28	33	-5	28	8	4	3	1	14	9	5	15	9	4	1	4	14	24	-10	13
2022-2023	Clausura	8	Tijuana	17	7	5	5	23	28	-5	26	9	4	4	1	13	7	6	16	8	3	1	4	10	21	-11	10
2022-2023	Clausura	9	Pumas	17	6	7	4	28	20	8	25	9	3	3	3	13	12	1	12	8	3	4	1	15	8	7	13
2022-2023	Clausura	10	Toluca	17	7	4	6	23	26	-3	25	9	3	2	4	10	11	-1	11	8	4	2	2	13	15	-2	14
2022-2023	Clausura	11	León	17	5	4	8	20	30	-10	19	8	4	1	3	9	10	-1	13	9	1	3	5	11	20	-9	6
2022-2023	Clausura	12	Querétaro	17	4	6	7	11	16	-5	18	8	1	3	4	3	9	-6	6	9	3	3	3	8	7	1	12
2022-2023	Clausura	13	Atlético de San Luis	17	5	2	10	22	35	-13	17	8	5	2	1	17	8	9	17	9	0	0	9	5	27	-22	0
2022-2023	Clausura	14	Santos Laguna	17	4	5	8	19	36	-17	17	9	4	2	3	14	11	3	14	8	0	3	5	5	25	-20	3
2022-2023	Clausura	15	Cruz Azul	17	2	7	8	14	23	-9	13	9	1	5	3	9	12	-3	8	8	1	2	5	5	11	-6	5
2022-2023	Clausura	16	Puebla	17	3	3	11	14	34	-20	12	9	3	2	4	8	11	-3	11	8	0	1	7	6	23	-17	1
2022-2023	Clausura	17	Necaxa	17	2	0	15	9	44	-35	6	8	1	0	7	6	23	-17	3	9	1	0	8	3	21	-18	3
2022-2023	Clausura	18	Mazatlán FC	17	1	1	15	6	60	-54	4	8	0	1	7	2	24	-22	1	9	1	0	8	4	36	-32	3
2023-2024	Apertura	1	Tigres	17	14	2	1	51	11	40	44	9	8	0	1	27	7	20	24	8	6	2	0	24	4	20	20
2023-2024	Apertura	2	América	17	14	0	3	65	23	42	42	8	7	0	1	31	8	23	21	9	7	0	2	34	15	19	21
2023-2024	Apertura	3	Guadalajara	17	13	3	1	43	11	32	42	9	8	1	0	23	3	20	25	8	5	2	1	20	8	12	17
2023-2024	Apertura	4	Rayadas	17	11	5	1	41	13	28	38	8	5	3	0	21	7	14	18	9	6	2	1	20	6	14	20
2023-2024	Apertura	5	Tijuana	17	10	4	3	35	21	14	34	8	2	4	2	10	11	-1	10	9	8	0	1	25	10	15	24
2023-2024	Apertura	6	Toluca	17	9	3	5	28	26	2	30	8	5	2	1	16	8	8	17	9	4	1	4	12	18	-6	13
2023-2024	Apertura	7	Pachuca	17	8	3	6	42	31	11	27	8	6	0	2	23	13	10	18	9	2	3	4	19	18	1	9
2023-2024	Apertura	8	Pumas	17	8	2	7	37	27	10	26	8	7	0	1	28	10	18	21	9	1	2	6	9	17	-8	5
2023-2024	Apertura	9	FC Juárez	17	7	5	5	28	23	5	26	9	4	3	2	15	10	5	15	8	3	2	3	13	13	0	11
2023-2024	Apertura	10	León	17	7	2	8	20	30	-10	23	9	5	1	3	14	13	1	16	8	2	1	5	6	17	-11	7
2023-2024	Apertura	11	Cruz Azul	17	7	1	9	25	32	-7	22	9	5	0	4	19	18	1	15	8	2	1	5	6	14	-8	7
2023-2024	Apertura	12	Querétaro	17	6	3	8	25	28	-3	21	8	3	2	3	12	11	1	11	9	3	1	5	13	17	-4	10
2023-2024	Apertura	13	Atlas	17	5	3	9	20	32	-12	18	8	4	1	3	12	14	-2	13	9	1	2	6	8	18	-10	5
2023-2024	Apertura	14	Puebla	17	4	2	11	19	42	-23	14	8	3	2	3	13	19	-6	11	9	1	0	8	6	23	-17	3
2023-2024	Apertura	15	Atlético de San Luis	17	3	3	11	17	34	-17	12	9	3	1	5	10	12	-2	10	8	0	2	6	7	22	-15	2
2023-2024	Apertura	16	Necaxa	17	2	2	13	10	44	-34	8	9	1	2	6	7	19	-12	5	8	1	0	7	3	25	-22	3
2023-2024	Apertura	17	Santos Laguna	17	0	5	12	12	51	-39	5	9	0	2	7	7	30	-23	2	8	0	3	5	5	21	-16	3
2023-2024	Apertura	18	Mazatlán FC	17	0	2	15	12	51	-39	2	9	0	1	8	8	21	-13	1	8	0	1	7	4	30	-26	1
2023-2024	Clausura	1	Tigres	17	14	2	1	51	9	42	44	8	7	0	1	18	4	14	21	9	7	2	0	33	5	28	23
2023-2024	Clausura	2	Pachuca	17	13	3	1	50	15	35	42	9	5	3	1	21	6	15	18	8	8	0	0	29	9	20	24
2023-2024	Clausura	3	Rayadas	17	12	2	3	46	12	34	38	9	7	1	1	30	2	28	22	8	5	1	2	16	10	6	16
2023-2024	Clausura	4	América	17	11	2	4	47	19	28	35	9	7	0	2	27	9	18	21	8	4	2	2	20	10	10	14
2023-2024	Clausura	5	Guadalajara	17	9	5	3	35	16	19	32	8	6	2	0	27	6	21	20	9	3	3	3	8	10	-2	12
2023-2024	Clausura	6	Pumas	17	8	4	5	44	34	10	28	9	3	3	3	21	21	0	12	8	5	1	2	23	13	10	16
2023-2024	Clausura	7	León	17	8	4	5	31	24	7	28	8	4	2	2	18	15	3	14	9	4	2	3	13	9	4	14
2023-2024	Clausura	8	FC Juárez	17	7	6	4	32	20	12	27	8	4	2	2	14	9	5	14	9	3	4	2	18	11	7	13
2023-2024	Clausura	9	Toluca	17	7	6	4	34	24	10	27	9	5	2	2	26	13	13	17	8	2	4	2	8	11	-3	10
2023-2024	Clausura	10	Querétaro	17	6	4	7	22	32	-10	22	9	3	2	4	12	17	-5	11	8	3	2	3	10	15	-5	11
2023-2024	Clausura	11	Tijuana	17	6	3	8	32	31	1	21	9	4	2	3	21	15	6	14	8	2	1	5	11	16	-5	7
2023-2024	Clausura	12	Atlas	17	4	6	7	17	24	-7	18	9	1	2	6	7	19	-12	5	8	3	4	1	10	5	5	13
2023-2024	Clausura	13	Puebla	17	4	6	7	21	29	-8	18	9	2	3	4	9	16	-7	9	8	2	3	3	12	13	-1	9
2023-2024	Clausura	14	Mazatlán FC	17	4	1	12	20	55	-35	13	8	1	1	6	8	27	-19	4	9	3	0	6	12	28	-16	9
2023-2024	Clausura	15	Necaxa	17	3	3	11	16	44	-28	12	8	2	2	4	8	19	-11	8	9	1	1	7	8	25	-17	4
2023-2024	Clausura	16	Cruz Azul	17	2	2	13	18	48	-30	8	8	0	0	8	7	26	-19	0	9	2	2	5	11	22	-11	8
2023-2024	Clausura	17	Santos Laguna	17	2	2	13	15	65	-50	8	8	2	2	4	8	15	-7	8	9	0	0	9	7	50	-43	0
2023-2024	Clausura	18	Atlético de San Luis	17	1	3	13	16	46	-30	6	8	0	3	5	7	19	-12	3	9	1	0	8	9	27	-18	3
2024-2025	Apertura	1	Rayadas	17	13	3	1	41	11	30	42	8	7	0	1	27	8	19	21	9	6	3	0	14	3	11	21
2024-2025	Apertura	2	Tigres	17	13	2	2	41	12	29	41	9	7	1	1	22	6	16	22	8	6	1	1	19	6	13	19
2024-2025	Apertura	3	América	17	12	4	1	55	11	44	40	8	5	3	0	26	5	21	18	9	7	1	1	29	6	23	22
2024-2025	Apertura	4	Pachuca	17	11	4	2	42	16	26	37	8	6	2	0	21	3	18	20	9	5	2	2	21	13	8	17
2024-2025	Apertura	5	FC Juárez	17	10	2	5	32	14	18	32	8	5	1	2	13	5	8	16	9	5	1	3	19	9	10	16
2024-2025	Apertura	6	Guadalajara	17	9	3	5	34	25	9	30	9	5	3	1	21	9	12	18	8	4	0	4	13	16	-3	12
2024-2025	Apertura	7	Pumas	17	9	2	6	33	31	2	29	9	5	1	3	16	12	4	16	8	4	1	3	17	19	-2	13
2024-2025	Apertura	8	Toluca	17	8	2	7	31	30	1	26	9	5	0	4	16	16	0	15	8	3	2	3	15	14	1	11
2024-2025	Apertura	9	Tijuana	17	8	1	8	36	31	5	25	9	6	0	3	22	11	11	18	8	2	1	5	14	20	-6	7
2024-2025	Apertura	10	Querétaro	17	7	4	6	20	23	-3	25	9	3	2	4	8	15	-7	11	8	4	2	2	12	8	4	14
2024-2025	Apertura	11	Atlas	17	7	4	6	23	27	-4	25	8	4	2	2	13	10	3	14	9	3	2	4	10	17	-7	11
2024-2025	Apertura	12	Cruz Azul	17	6	2	9	25	27	-2	20	8	4	2	2	16	12	4	14	9	2	0	7	9	15	-6	6
2024-2025	Apertura	13	León	17	5	4	8	14	23	-9	19	8	5	2	1	10	6	4	17	9	0	2	7	4	17	-13	2
2024-2025	Apertura	14	Atlético de San Luis	17	2	4	11	15	41	-26	10	9	2	1	6	11	22	-11	7	8	0	3	5	4	19	-15	3
2024-2025	Apertura	15	Mazatlán FC	17	3	1	13	14	55	-41	10	9	1	0	8	7	34	-27	3	8	2	1	5	7	21	-14	7
2024-2025	Apertura	16	Puebla	17	2	3	12	13	29	-16	9	8	2	2	4	9	10	-1	8	9	0	1	8	4	19	-15	1
2024-2025	Apertura	17	Santos Laguna	17	2	2	13	11	38	-27	8	9	2	2	5	8	14	-6	8	8	0	0	8	3	24	-21	0
2024-2025	Apertura	18	Necaxa	17	2	1	14	8	44	-36	7	8	1	0	7	3	21	-18	3	9	1	1	7	5	23	-18	4
2024-2025	Clausura	1	América	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2024-2025	Clausura	2	Atlas	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2024-2025	Clausura	3	Atlético de San Luis	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2024-2025	Clausura	4	Tijuana	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2024-2025	Clausura	5	Cruz Azul	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2024-2025	Clausura	6	FC Juárez	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2024-2025	Clausura	7	Querétaro	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2024-2025	Clausura	8	Guadalajara	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2024-2025	Clausura	9	León	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2024-2025	Clausura	10	Mazatlán FC	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2024-2025	Clausura	11	Necaxa	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2024-2025	Clausura	12	Pachuca	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2024-2025	Clausura	13	Puebla	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2024-2025	Clausura	14	Rayadas	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2024-2025	Clausura	15	Santos Laguna	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2024-2025	Clausura	16	Tigres	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2024-2025	Clausura	17	Toluca	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2024-2025	Clausura	18	Pumas	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
\.


--
-- TOC entry 3683 (class 0 OID 16422)
-- Dependencies: 214
-- Data for Name: lbf_participacion_menores; Type: TABLE DATA; Schema: public; Owner: labasefemenil
--

COPY public.lbf_participacion_menores (temporada, torneo, club, menores_alineadas, minutos, menores_seleccionadas, minutos_acumulados, menores_que_acumularon, minutos_acumulados_2, minutos_al_reglamento, minutos_por_cumplir) FROM stdin;
2024-2025	Apertura	 Necaxa	7	5209	0	0	7	5209	3060	Cumplió
2024-2025	Apertura	 Santos Laguna	8	4382	0	0	8	4382	3015	Cumplió
2024-2025	Apertura	 Club Atlético de San Luis	9	3499	1	174	9	3673	3003	Cumplió
2024-2025	Apertura	 Atlas	10	2581	3	785	10	3366	2932	Cumplió
2024-2025	Apertura	 León	5	2066	2	951	5	3017	2839	Cumplió
2024-2025	Apertura	 Universidad Nacional	6	2409	1	448	6	2857	2720	Cumplió
2024-2025	Apertura	 Cruz Azul	9	2576	0	0	9	2576	2300	Cumplió
2024-2025	Apertura	 Puebla F.C.	7	2353	0	0	7	2353	2110	Cumplió
2024-2025	Apertura	 Mazatlán FC	5	2198	1	90	5	2288	2157	Cumplió
2024-2025	Apertura	 Pachuca	6	1249	2	716	6	1965	1965	Cumplió
2024-2025	Apertura	 Rayados de Monterrey	4	839	2	1098	4	1937	1937	Cumplió
2024-2025	Apertura	 América	5	881	1	620	5	1501	1471	Cumplió
2024-2025	Apertura	 Toluca	5	1296	0	0	5	1296	1296	Cumplió
2024-2025	Apertura	 Club Tijuana	2	543	1	720	2	1263	1263	Cumplió
2024-2025	Apertura	 Tigres de la U.A.N.L.	4	437	1	720	4	1157	1157	Cumplió
2024-2025	Apertura	 FC Juárez	5	478	1	630	5	1108	1108	Cumplió
2024-2025	Apertura	 Guadalajara	5	551	1	540	5	1091	1091	Cumplió
2024-2025	Apertura	 Gallos Blancos de Querétaro	3	1071	0	0	3	1071	1071	Cumplió
\.


--
-- TOC entry 3680 (class 0 OID 16413)
-- Dependencies: 211
-- Data for Name: lbf_tarjetas_club; Type: TABLE DATA; Schema: public; Owner: labasefemenil
--

COPY public.lbf_tarjetas_club (temporada, torneo, tipo, tarjeta, club, total_tarjetas, porcentaje_x_club, promedio_x_minutos, promedio_x_partido) FROM stdin;
2024-2025	Apertura	regular	 amarillas	 Pachuca	39	7.47	39.23	2.29
2024-2025	Apertura	regular	 amarillas	 Necaxa	38	7.28	40.26	2.24
2024-2025	Apertura	regular	 amarillas	 Queretaro	35	6.70	43.71	2.06
2024-2025	Apertura	regular	 amarillas	 Puebla	34	6.51	45.00	2.00
2024-2025	Apertura	regular	 amarillas	 Atletico de San Luis	33	6.32	46.36	1.94
2024-2025	Apertura	regular	 amarillas	 Leon	32	6.13	47.81	1.88
2024-2025	Apertura	regular	 amarillas	 Toluca	32	6.13	47.81	1.88
2024-2025	Apertura	regular	 amarillas	 Tijuana	30	5.75	51.00	1.76
2024-2025	Apertura	regular	 amarillas	 Guadalajara	29	5.56	52.76	1.71
2024-2025	Apertura	regular	 amarillas	 Mazatlan FC	29	5.56	52.76	1.71
2024-2025	Apertura	regular	 amarillas	 Pumas	29	5.56	52.76	1.71
2024-2025	Apertura	regular	 amarillas	 FC Juarez	28	5.36	54.64	1.65
2024-2025	Apertura	regular	 amarillas	 Santos Laguna	28	5.36	54.64	1.65
2024-2025	Apertura	regular	 amarillas	 Tigres	26	4.98	58.85	1.53
2024-2025	Apertura	regular	 amarillas	 Atlas	22	4.21	69.55	1.29
2024-2025	Apertura	regular	 amarillas	 Rayadas	22	4.21	69.55	1.29
2024-2025	Apertura	regular	 amarillas	 America	18	3.45	85.00	1.06
2024-2025	Apertura	regular	 amarillas	 Cruz Azul	18	3.45	85.00	1.06
2024-2025	Apertura	FaseFinal	 amarillas	 Cruz Azul	3	12.00	510.00	0.18
2024-2025	Apertura	FaseFinal	 amarillas	 FC Juarez	3	12.00	510.00	0.18
2024-2025	Apertura	FaseFinal	 amarillas	 Mazatlan FC	3	12.00	510.00	0.18
2024-2025	Apertura	FaseFinal	 amarillas	 Leon	2	8.00	765.00	0.12
2024-2025	Apertura	FaseFinal	 amarillas	 Necaxa	2	8.00	765.00	0.12
2024-2025	Apertura	FaseFinal	 amarillas	 Puebla	2	8.00	765.00	0.12
2024-2025	Apertura	FaseFinal	 amarillas	 America	1	4.00	1530.00	0.06
2024-2025	Apertura	FaseFinal	 amarillas	 Atlas	1	4.00	1530.00	0.06
2024-2025	Apertura	FaseFinal	 amarillas	 Pachuca	1	4.00	1530.00	0.06
2024-2025	Apertura	FaseFinal	 amarillas	 Pumas	1	4.00	1530.00	0.06
2024-2025	Apertura	FaseFinal	 amarillas	 Queretaro	1	4.00	1530.00	0.06
2024-2025	Apertura	FaseFinal	 amarillas	 Rayadas	1	4.00	1530.00	0.06
2024-2025	Apertura	FaseFinal	 amarillas	 Santos Laguna	1	4.00	1530.00	0.06
2024-2025	Apertura	FaseFinal	 amarillas	 Tigres	1	4.00	1530.00	0.06
2024-2025	Apertura	FaseFinal	 amarillas	 Tijuana	1	4.00	1530.00	0.06
2024-2025	Apertura	FaseFinal	 amarillas	 Toluca	1	4.00	1530.00	0.06
2024-2025	Apertura	regular	 rojas	Tigres	10	22.73	153.00	0.59
2024-2025	Apertura	regular	 rojas	Pachuca	8	18.18	191.25	0.47
2024-2025	Apertura	regular	 rojas	Rayadas	8	18.18	191.25	0.47
2024-2025	Apertura	regular	 rojas	America	7	15.91	218.57	0.41
2024-2025	Apertura	regular	 rojas	Guadalajara	4	9.09	382.50	0.24
2024-2025	Apertura	regular	 rojas	FC Juarez	3	6.82	510.00	0.18
2024-2025	Apertura	regular	 rojas	Pumas	2	4.55	765.00	0.12
2024-2025	Apertura	regular	 rojas	Toluca	2	4.55	765.00	0.12
2024-2025	Apertura	FaseFinal	 rojas	FC Juarez	2	50.00	765.00	0.12
2024-2025	Apertura	FaseFinal	 rojas	Pachuca	2	50.00	765.00	0.12
\.


--
-- TOC entry 3679 (class 0 OID 16410)
-- Dependencies: 210
-- Data for Name: lbf_tarjetas_jugadora; Type: TABLE DATA; Schema: public; Owner: labasefemenil
--

COPY public.lbf_tarjetas_jugadora (temporada, torneo, club, idaflddrvd, nui, nombre, ta, ta_reglamento, tr, trpc) FROM stdin;
2024-2025	Apertura	 América	125423	124051	Karen Irasema Luna De Los Santos	6	2	0	0
2024-2025	Apertura	 América	156080	150035	Nicolette Andrea Hernández Sippel	3	1	0	0
2024-2025	Apertura	 América	139708	136791	Jocelyn Marie Orejel Tavares	2	0	0	0
2024-2025	Apertura	 América	172647	165028	Irene Guerrero Sanmartin	2	0	0	0
2024-2025	Apertura	 América	176433	166622	Chidinma Nkeruka Okeke 	2	1	0	0
2024-2025	Apertura	 América	124873	123655	Nancy Guadalupe Antonio López	1	1	1	0
2024-2025	Apertura	 América	125502	124238	Mariana Cadena Calvillo	1	0	0	0
2024-2025	Apertura	 América	132470	130318	Aylin Ariana Aviléz Peña	1	0	0	0
2024-2025	Apertura	 América	139486	136800	Miah Alexia Zuazua Martínez	1	1	0	0
2024-2025	Apertura	 América	150310	144875	Angelique Montserrat Saldivar Pavón	1	0	0	0
2024-2025	Apertura	 América	150311	144897	Kiana Angélica Palacios Hernández	1	1	0	0
2024-2025	Apertura	 América	154863	145658	Sarah Jacquelyn Luebbert 	1	0	0	0
2024-2025	Apertura	 América	156292	150026	Scarlett Nefer Camberos Becerra	1	0	0	0
2024-2025	Apertura	 América	157994	152007	Sabrina Marie Enciso 	1	0	0	0
2024-2025	Apertura	 América	178376	169174	Priscila Flor Da Silva 	1	1	0	0
2024-2025	Apertura	 Atlas	136761	134324	María Fernanda Daniela Pérez Limón	4	4	0	0
2024-2025	Apertura	 Atlas	125425	124063	Selene Deyanira Cortés Valero	3	3	0	0
2024-2025	Apertura	 Atlas	125553	124314	Maritza Dardane Maldonado Velázquez	3	3	0	0
2024-2025	Apertura	 Atlas	132450	130460	María Elena Sainz Agama	3	3	0	0
2024-2025	Apertura	 Atlas	3400	3405	Roberto Gerardo Medina Arellano	2	2	0	0
2024-2025	Apertura	 Atlas	162109	155022	María Paula Salas Zúñiga	2	2	0	0
2024-2025	Apertura	 Atlas	124823	123713	Jaquelín García Cruz	1	1	0	0
2024-2025	Apertura	 Atlas	143755	140103	Marcia Paola García Ramírez	1	1	0	0
2024-2025	Apertura	 Atlas	145580	141240	Alejandra Lomelí Franco	1	1	0	0
2024-2025	Apertura	 Atlas	145931	141344	Valeria Aurora Miranda Rodríguez	1	1	0	0
2024-2025	Apertura	 Atlas	151904	149148	Camila Vázquez Haro	1	1	0	0
2024-2025	Apertura	 Atlas	162514	155341	Brenda Damaris Ceren Delgado	1	0	1	0
2024-2025	Apertura	 Atlas	169735	159804	Daniela Solera Vega	1	1	0	0
2024-2025	Apertura	 Guadalajara	130237	128425	Damaris Michel Godínez García	5	0	0	0
2024-2025	Apertura	 Guadalajara	125533	124317	Alicia Cervantes Herrera	4	0	0	0
2024-2025	Apertura	 Guadalajara	129953	128458	Daniela Delgado Félix	4	1	0	0
2024-2025	Apertura	 Guadalajara	139241	136265	Diana Jaqueline Rodríguez Carrillo	4	1	0	0
2024-2025	Apertura	 Guadalajara	125542	124303	Esbeydi Viridiana Salazar Suaste	3	0	0	0
2024-2025	Apertura	 Guadalajara	124881	123726	Yamile Azenek Franco Tirado	2	0	0	0
2024-2025	Apertura	 Guadalajara	124951	123731	Christian Carolina Jaramillo Quintero	2	0	0	0
2024-2025	Apertura	 Guadalajara	130409	128391	Angélica Araceli Torres Muñoz	2	0	0	0
2024-2025	Apertura	 Guadalajara	124774	123686	Karla Lorena Martínez Díaz	1	1	0	0
2024-2025	Apertura	 Guadalajara	124830	123715	Joselyn De La Rosa Cruz	1	0	0	0
2024-2025	Apertura	 Guadalajara	132054	130313	Kinberly Paloma Guzmán Prado	1	1	0	0
2024-2025	Apertura	 Guadalajara	139365	136428	Casandra Montero Rodríguez	1	1	0	0
2024-2025	Apertura	 Guadalajara	149199	143812	Gabriela Valenzuela Chaparro	1	0	0	0
2024-2025	Apertura	 Guadalajara	154600	149092	Ivonne Areli González Rendón	1	1	0	0
2024-2025	Apertura	 Guadalajara	172303	163915	Amalia Phoebe López Rodríguez	1	0	0	0
2024-2025	Apertura	 Cruz Azul	130293	128560	Ivonne Gutiérrez Cortes	3	3	0	0
2024-2025	Apertura	 Cruz Azul	172092	163792	Danya Jasmin Gutiérrrez Jule	3	3	0	0
2024-2025	Apertura	 Cruz Azul	124756	123595	Dalia Isabel Molina Chuela	2	2	0	0
2024-2025	Apertura	 Cruz Azul	125427	124065	Julissa Fernanda Dávila González	2	1	2	0
2024-2025	Apertura	 Cruz Azul	129194	125436	Alejandría Godínez Herrera	2	2	0	0
2024-2025	Apertura	 Cruz Azul	154993	149208	Lia Shoenstatt Martínez Ramírez	2	1	1	0
2024-2025	Apertura	 Cruz Azul	172992	164982	Vivian Obianujuwan Ikechukwu 	2	2	0	0
2024-2025	Apertura	 Cruz Azul	125085	124165	Ximena Elizabeth Rios Zarate	1	1	0	0
2024-2025	Apertura	 Cruz Azul	131967	130409	José Julio Cevada Hernández	1	1	0	0
2024-2025	Apertura	 Cruz Azul	162456	155357	Jennifer Amaro Espinosa	1	1	0	0
2024-2025	Apertura	 León	150876	145205	Linda Ruth Bravo 	5	4	1	0
2024-2025	Apertura	 León	125503	124405	Yanin Madrid López Lira	4	4	0	0
2024-2025	Apertura	 León	139175	137081	Daniela Calderón García	4	4	0	0
2024-2025	Apertura	 León	159963	152124	Lixy María Rodríguez Zamora	3	3	0	0
2024-2025	Apertura	 León	164105	157506	Destinee Noel Manzo Paolinetti	3	3	0	0
2024-2025	Apertura	 León	165736	158778	Vianney Alemán Ramirez	3	3	0	0
2024-2025	Apertura	 León	129995	128474	Vanessa Guadalupe López Maldonado	2	2	0	0
2024-2025	Apertura	 León	171796	163130	Fernanda Paz Pinilla Roa	2	1	1	0
2024-2025	Apertura	 León	12981	12990	Alejandro Corona Cervantes	1	1	0	0
2024-2025	Apertura	 León	63123	63575	César Hugo Andrade Colmenero	1	1	0	0
2024-2025	Apertura	 León	124840	123717	Karla Daniela Zempoalteca Hernández	1	1	0	0
2024-2025	Apertura	 León	125116	124389	Brenda Esmeralda Díaz Ojeda	1	1	0	0
2024-2025	Apertura	 León	150309	144876	Fedra Renatta Cota Muñoz	1	1	0	0
2024-2025	Apertura	 León	158169	151985	Mayalu Ann Rausch Tamayo	1	1	0	0
2024-2025	Apertura	 León	165726	158776	Itzell Alemán Ramirez	1	1	0	0
2024-2025	Apertura	 León	171829	163454	Ysaura Candelaria Viso Garrido	1	1	0	0
2024-2025	Apertura	 León	14065	14074	Edwin Santibáñez Noé	0	0	1	0
2024-2025	Apertura	 Mazatlán FC	132423	130322	Gabriela Rocío Álvarez Huerta	6	4	2	0
2024-2025	Apertura	 Mazatlán FC	124857	123667	Brenda Judith García Valadéz	5	5	0	0
2024-2025	Apertura	 Mazatlán FC	149203	143821	Ana Patricia Becerra Acosta	4	4	0	0
2024-2025	Apertura	 Mazatlán FC	170622	162293	Sinoxolo Cesane 	4	4	1	0
2024-2025	Apertura	 Mazatlán FC	170245	162165	Laisha Michelle Espinosa González	2	2	0	0
2024-2025	Apertura	 Mazatlán FC	174288	165362	Enekia Kasonga Lunyamila 	2	2	0	0
2024-2025	Apertura	 Mazatlán FC	124812	123537	Andrea Alejandra Balderas Sorchini	1	1	0	0
2024-2025	Apertura	 Mazatlán FC	124868	123662	María Fernanda Tarango Arellano	1	1	0	0
2024-2025	Apertura	 Mazatlán FC	132486	130501	Paola Selvas Ríos	1	1	0	0
2024-2025	Apertura	 Mazatlán FC	158171	151997	Samantha López Archila	1	1	0	0
2024-2025	Apertura	 Mazatlán FC	172006	163795	Chinyelu Bessum Asher 	1	1	0	0
2024-2025	Apertura	 Mazatlán FC	176456	167458	Olga Massombo 	1	1	0	0
2024-2025	Apertura	 Rayados de Monterrey	161971	153929	Myra Alexandra Delgadillo Prado	5	3	0	0
2024-2025	Apertura	 Rayados de Monterrey	170777	162332	Merel Didi Van Dongen 	4	1	0	0
2024-2025	Apertura	 Rayados de Monterrey	124806	123710	Diana Laura García Castillo	3	2	0	0
2024-2025	Apertura	 Rayados de Monterrey	153293	145869	Carol Cázares Carrera	3	0	0	0
2024-2025	Apertura	 Rayados de Monterrey	125612	124225	Daniela Janet Monroy Cortez	2	0	0	0
2024-2025	Apertura	 Rayados de Monterrey	145736	141273	Christina Marie Burkenroad Biggica	2	1	0	0
2024-2025	Apertura	 Rayados de Monterrey	170305	162200	Tanna Sánchez Carreto	2	0	0	0
2024-2025	Apertura	 Rayados de Monterrey	176939	165661	Marcela Restrepo Valencia	2	2	0	0
2024-2025	Apertura	 Rayados de Monterrey	124754	123538	Diana Laura Evangelista Chávez	1	0	0	0
2024-2025	Apertura	 Rayados de Monterrey	124777	123580	Lizette Montserrat Rodríguez Cisneros	1	0	0	0
2024-2025	Apertura	 Rayados de Monterrey	125430	124041	Ana Gabriela Paz Molina	1	1	0	0
2024-2025	Apertura	 Rayados de Monterrey	125485	124233	Rebeca Bernal Rodríguez	1	0	0	0
2024-2025	Apertura	 Rayados de Monterrey	125590	124097	Zellyka Guadalupe Arce Balleza	1	0	1	0
2024-2025	Apertura	 Rayados de Monterrey	130049	128392	Dania Nicole Pérez Jiménez	1	0	0	0
2024-2025	Apertura	 Rayados de Monterrey	132474	130320	Karol Esthefany Bernal Castañeda	1	1	0	0
2024-2025	Apertura	 Rayados de Monterrey	171857	163519	Kenneth Barrantes González	1	1	0	0
2024-2025	Apertura	 Necaxa	 155048	149316	Alexa Gabriela Hernández Ponce	6	6	0	0
2024-2025	Apertura	 Necaxa	 162328	155317	Lesly Samantha González Guerrero	5	5	0	0
2024-2025	Apertura	 Necaxa	 165192	158793	Jemery Rashell Myvett Solares	5	5	0	0
2024-2025	Apertura	 Necaxa	 154486	149061	Athziri Guadalupe Alonso Hernández	4	4	0	0
2024-2025	Apertura	 Necaxa	 172146	163660	Allison Rose Veloz 	4	4	0	0
2024-2025	Apertura	 Necaxa	 125601	124338	Ana Gabriela Huerta Aguas	3	3	0	0
2024-2025	Apertura	 Necaxa	 124720	123533	Reyna Sabina Velázquez Mejía	2	2	0	0
2024-2025	Apertura	 Necaxa	 150336	144889	Valeria Martínez Aguirre	2	2	0	0
2024-2025	Apertura	 Necaxa	 172105	163671	Samaria Sarai Gomez Mejia	2	2	0	0
2024-2025	Apertura	 Necaxa	 124860	123677	Lucia Muñoz Sánchez	1	1	0	0
2024-2025	Apertura	 Necaxa	 125283	124340	Sahiry América Cruz Carreón	1	1	0	0
2024-2025	Apertura	 Necaxa	 125656	124387	Karen Lucía De León Pescador	1	1	0	0
2024-2025	Apertura	 Necaxa	 130242	128427	Perla Rocío Navarrete Muñoz	1	1	1	0
2024-2025	Apertura	 Necaxa	 154597	149101	Avril Alejandra Navarro Flores	1	1	0	0
2024-2025	Apertura	 Necaxa	 3435	3440	Miguel Ramírez Salas	0	0	1	0
2024-2025	Apertura	 Necaxa	 136820	134362	Dayán Vianey Fuentes Pérez	0	0	1	0
2024-2025	Apertura	 Pachuca	171805	163249	Yirleidis Quejada Minota	6	0	1	0
2024-2025	Apertura	 Pachuca	163786	156592	Chinwendu Verónica Ihezuo 	5	3	2	0
2024-2025	Apertura	 Pachuca	136962	134408	Alexandra Guadalupe Godínez García	4	0	0	0
2024-2025	Apertura	 Pachuca	149208	143929	Esthefanny Barreras Torres	4	1	0	0
2024-2025	Apertura	 Pachuca	149233	143957	Daniela Frank Flores Cortés	4	1	0	0
2024-2025	Apertura	 Pachuca	124953	123732	Claudia Fabiola Ibarra Muro	3	0	0	0
2024-2025	Apertura	 Pachuca	150305	144906	Amanda Araceli Pérez Murillo	3	0	0	0
2024-2025	Apertura	 Pachuca	162057	154408	Andrea Pereira Cejudo	3	0	0	0
2024-2025	Apertura	 Pachuca	166331	158634	Ella Ryan Sanchez Stickel	3	1	0	0
2024-2025	Apertura	 Pachuca	124848	123718	Karla Paola Nieto Castillo	2	1	0	0
2024-2025	Apertura	 Pachuca	150302	144898	Verónica Charlyn Corral Ang	2	0	0	0
2024-2025	Apertura	 Pachuca	166682	159223	Ohale Osinachi Marvis	2	0	0	0
2024-2025	Apertura	 Pachuca	22425	22438	Sergio Alejandro Santana Piedra	1	1	0	0
2024-2025	Apertura	 Pachuca	125500	124296	Dalia Nailea Vidrio Sahagún	1	0	0	0
2024-2025	Apertura	 Pachuca	132381	130368	Alice Fernanda Soto Gallegos	1	0	0	0
2024-2025	Apertura	 Pachuca	162706	155351	Julia Yareli Valadez Alvidrez	1	1	0	0
2024-2025	Apertura	 Pachuca	164163	158006	Nina Dominique Nicosia 	1	1	0	0
2024-2025	Apertura	 Pachuca	169679	159296	Vaitiare Kenti Robles Salas	1	0	0	0
2024-2025	Apertura	 Pachuca	173688	165266	Shanice Janice Van De Sanden 	1	0	0	0
2024-2025	Apertura	 Puebla F.C.	139157	136404	Silvia Gabriela Machuca Rubio	3	3	0	0
2024-2025	Apertura	 Puebla F.C.	157861	152015	Johana Esperanza Rosas Aguirre	3	3	0	0
2024-2025	Apertura	 Puebla F.C.	170801	163507	Barbara Eloisa Murillo Huete	3	2	1	0
2024-2025	Apertura	 Puebla F.C.	124866	123729	Liliana Sánchez Magaña	2	1	1	0
2024-2025	Apertura	 Puebla F.C.	132462	130461	Jessica Liliana Tenorio García	2	2	0	0
2024-2025	Apertura	 Puebla F.C.	143753	140094	Alexandra Aguilar Figueroa	2	2	0	0
2024-2025	Apertura	 Puebla F.C.	150314	144885	Jaqueline González Reyes	2	2	0	0
2024-2025	Apertura	 Puebla F.C.	156212	150804	Rubí Iridian Villegas Aguilar	2	2	0	0
2024-2025	Apertura	 Puebla F.C.	157988	152047	Camila Fonseca Villanueva	2	2	0	0
2024-2025	Apertura	 Puebla F.C.	158172	151803	Ahtziri Méndez Munguía	2	2	0	0
2024-2025	Apertura	 Puebla F.C.	171823	163506	Anna Jane Loftus 	2	2	0	0
2024-2025	Apertura	 Puebla F.C.	176910	165568	Alycia R. Morin 	2	2	0	0
2024-2025	Apertura	 Puebla F.C.	130031	128337	Martha Natalia Enciso Ballesteros	1	1	0	0
2024-2025	Apertura	 Puebla F.C.	132036	130405	Dulce Eileen Martínez Morales	1	1	0	0
2024-2025	Apertura	 Puebla F.C.	150296	144882	Luisa Fernanda De Alba Hernández	1	1	0	0
2024-2025	Apertura	 Puebla F.C.	156120	149628	Liliana Fernández Rodríguez	1	1	0	0
2024-2025	Apertura	 Puebla F.C.	157947	151976	Venicia Gabriela Juárez Smith	1	1	0	0
2024-2025	Apertura	 Puebla F.C.	158464	151387	Dulce María Méndez Pino	1	1	0	0
2024-2025	Apertura	 Puebla F.C.	174129	165327	Alyssa Jazmine Oviedo 	1	1	0	0
2024-2025	Apertura	 Universidad Nacional	 130236	128344	Paola Chavero Álvarez	7	1	0	0
2024-2025	Apertura	 Universidad Nacional	 169742	160479	Deneisha Selena Blackwood 	5	0	0	0
2024-2025	Apertura	 Universidad Nacional	 150640	145171	Stephanie Mariana Ribeiro 	4	1	1	0
2024-2025	Apertura	 Universidad Nacional	 172134	163662	Carina Felipe Silva	3	0	0	0
2024-2025	Apertura	 Universidad Nacional	 125411	123941	Dania Belén Padilla Alemán	2	0	0	0
2024-2025	Apertura	 Universidad Nacional	 131985	130537	Heidi Karina González Vite	2	2	0	0
2024-2025	Apertura	 Universidad Nacional	 149052	143813	Alejandra Guerrero Camacho	2	0	0	0
2024-2025	Apertura	 Universidad Nacional	 129996	128475	Wendy Estefani Toledo Barroso	1	0	0	0
2024-2025	Apertura	 Universidad Nacional	 139292	136311	Laura Herrera Alonso	1	0	0	0
2024-2025	Apertura	 Universidad Nacional	 155177	148760	Ana Mendoza González	1	0	0	0
2024-2025	Apertura	 Universidad Nacional	 156307	150190	Yaneisy Rodríguez Pérez	1	0	0	0
2024-2025	Apertura	 Universidad Nacional	 156466	149886	Aerial Lynndonna Chavarin 	1	0	0	0
2024-2025	Apertura	 Universidad Nacional	 162985	155586	Cristina María Torres Manilow	1	0	0	0
2024-2025	Apertura	 Universidad Nacional	 170352	161995	Lennon Bustamante Moreira	1	1	0	0
2024-2025	Apertura	 Gallos Blancos de Querétaro	162871	155460	Deisy Estefania Ojeda González	7	7	0	0
2024-2025	Apertura	 Gallos Blancos de Querétaro	130088	128398	Fátima Del Carmen Delgado Cortés	5	5	0	0
2024-2025	Apertura	 Gallos Blancos de Querétaro	170299	162296	Solange Lemos Martínez	4	4	0	0
2024-2025	Apertura	 Gallos Blancos de Querétaro	125437	124067	Vanessa González Márquez	3	3	0	0
2024-2025	Apertura	 Gallos Blancos de Querétaro	172846	164418	Emily Loriana Flores Chinchilla	3	3	0	0
2024-2025	Apertura	 Gallos Blancos de Querétaro	172881	164981	Wendis Jhoana Cabrera Calabria	3	3	0	0
2024-2025	Apertura	 Gallos Blancos de Querétaro	124757	123516	Claudia Ivette Lozoya Lechuga	2	2	0	0
2024-2025	Apertura	 Gallos Blancos de Querétaro	124900	123645	Edna Fabiola Santamaria Orduña	2	2	0	0
2024-2025	Apertura	 Gallos Blancos de Querétaro	125586	124098	Lía Betsabé Morán Torres	1	1	0	0
2024-2025	Apertura	 Gallos Blancos de Querétaro	130292	128559	Magaly Cortés Hernández	1	0	1	0
2024-2025	Apertura	 Gallos Blancos de Querétaro	132302	130279	Alondra Karime Camargo Aguilar	1	1	0	0
2024-2025	Apertura	 Gallos Blancos de Querétaro	143830	140082	Barbrha Alejandra Figueroa González	1	1	0	0
2024-2025	Apertura	 Gallos Blancos de Querétaro	154832	149173	Aurora Margarita Suárez Hernández	1	1	0	0
2024-2025	Apertura	 Gallos Blancos de Querétaro	157580	151111	Lizeth Estefanía Contreras Rasura	1	1	0	0
2024-2025	Apertura	 Club Atlético de San Luis	129869	128357	Laura Montserrat Parra Constantino	4	4	0	0
2024-2025	Apertura	 Club Atlético de San Luis	136860	134331	Viridiana López Mata	4	4	0	0
2024-2025	Apertura	 Club Atlético de San Luis	172091	163701	Elaily Jasmine Hernández - Repreza 	4	4	0	0
2024-2025	Apertura	 Club Atlético de San Luis	172094	163707	Isidora Victoria Olave Araneda	4	4	0	0
2024-2025	Apertura	 Club Atlético de San Luis	143883	140117	María Fernanda Sánchez Castillo	3	3	0	0
2024-2025	Apertura	 Club Atlético de San Luis	129948	128462	Olga Anahí Trasviña Rentería	2	2	0	0
2024-2025	Apertura	 Club Atlético de San Luis	132157	130475	Alejandra Franco Gómez	2	2	0	0
2024-2025	Apertura	 Club Atlético de San Luis	150345	144881	Denisse Alejandra Rivera Arcizo	2	2	0	0
2024-2025	Apertura	 Club Atlético de San Luis	170501	162214	Farlyn Fernanda Caicedo Quiñonez	2	2	0	0
2024-2025	Apertura	 Club Atlético de San Luis	49613	49642	Luis Antonio Cota Eguino	1	1	0	0
2024-2025	Apertura	 Club Atlético de San Luis	69560	70311	Daniel Flores Vázquez	1	1	0	0
2024-2025	Apertura	 Club Atlético de San Luis	130084	128385	Nicole Buenfil Renoult	1	1	0	0
2024-2025	Apertura	 Club Atlético de San Luis	132224	130476	Joana Robles Partida	1	1	0	0
2024-2025	Apertura	 Club Atlético de San Luis	138991	136344	Isabel Kasis Monjarás	1	1	0	0
2024-2025	Apertura	 Club Atlético de San Luis	154795	149085	Silvana González Díaz Barreiro	1	1	0	0
2024-2025	Apertura	 Club Atlético de San Luis	154828	148531	Juan Eduardo Mendoza Schulz	1	1	0	0
2024-2025	Apertura	 Club Atlético de San Luis	154970	149212	Michelle Guadalupe Gutiérrez Hernández	1	1	0	0
2024-2025	Apertura	 Club Atlético de San Luis	158006	151554	Amalia González Valdés	1	1	0	0
2024-2025	Apertura	 Santos Laguna	143752	140125	Judith Guillermina Félix Rosales	4	4	0	0
2024-2025	Apertura	 Santos Laguna	155067	146248	Yessenia Esmeralda Novella López	4	3	1	0
2024-2025	Apertura	 Santos Laguna	125566	124327	Mayra Alejandra Santana Estrada	3	3	0	0
2024-2025	Apertura	 Santos Laguna	136774	134323	Havi Larisa Ibarra Hernández	3	3	0	0
2024-2025	Apertura	 Santos Laguna	124835	123716	Karen Itzayana Gómez Torres	2	2	0	0
2024-2025	Apertura	 Santos Laguna	154830	149182	Mayte Valle Madera	2	2	0	0
2024-2025	Apertura	 Santos Laguna	155903	149629	Frida Carolina Cussin Franco	2	2	0	0
2024-2025	Apertura	 Santos Laguna	161710	153371	María Alejandra Peraza Romero	2	2	0	0
2024-2025	Apertura	 Santos Laguna	162552	155542	Karla Maya Vera	2	2	0	0
2024-2025	Apertura	 Santos Laguna	124893	123560	Lia Mariel Romero Torres	1	1	0	0
2024-2025	Apertura	 Santos Laguna	136951	134407	Diana Elizabeth Anguiano Díaz	1	1	0	0
2024-2025	Apertura	 Santos Laguna	148932	143835	Celeste Guevara Ortega	1	1	0	0
2024-2025	Apertura	 Santos Laguna	150297	144888	Michel Anahy Ruiz Castañeda	1	1	0	0
2024-2025	Apertura	 Santos Laguna	155449	148998	María Magalí Del Verdún Cuadrado Maverino	1	1	0	0
2024-2025	Apertura	 Santos Laguna	172121	163704	Doménica Salome Rodríguez Vera	1	1	0	0
2024-2025	Apertura	 Tigres de la U.A.N.L.	162775	155338	Maricarmen Reyes Zárate	6	0	0	0
2024-2025	Apertura	 Tigres de la U.A.N.L.	158635	152045	Anika Elia Rodríguez 	5	1	0	0
2024-2025	Apertura	 Tigres de la U.A.N.L.	125419	124052	Lizbeth Jacqueline Ovalle Muñoz	4	0	0	0
2024-2025	Apertura	 Tigres de la U.A.N.L.	172068	163644	Jimena López Fuentes	3	1	0	0
2024-2025	Apertura	 Tigres de la U.A.N.L.	172191	163687	Ana Rita Da Silva Seiça	3	2	0	0
2024-2025	Apertura	 Tigres de la U.A.N.L.	176959	165553	Ana Inés Costa Mendes Días	3	1	0	0
2024-2025	Apertura	 Tigres de la U.A.N.L.	124923	123635	Alexia Fernanda Delgado Alvarado	2	1	0	0
2024-2025	Apertura	 Tigres de la U.A.N.L.	132132	130265	Cristina Del Carmen Ferral Montalván	2	0	1	0
2024-2025	Apertura	 Tigres de la U.A.N.L.	170563	162255	Chrestinah Thembi Kgatlana 	2	1	0	0
2024-2025	Apertura	 Tigres de la U.A.N.L.	124796	123660	Andrea Hernández Buenosaires	1	0	0	0
2024-2025	Apertura	 Tigres de la U.A.N.L.	124865	123637	Aurora Cecilia Santiago Cisneros	1	1	0	0
2024-2025	Apertura	 Tigres de la U.A.N.L.	124875	123628	Belén De Jesús Cruz Arzate	1	0	0	0
2024-2025	Apertura	 Tigres de la U.A.N.L.	125914	124467	Lydia Nayeli Rangel Hernández	1	1	0	0
2024-2025	Apertura	 Tigres de la U.A.N.L.	130271	128370	Alison Hecnary González Esquivel	1	0	0	0
2024-2025	Apertura	 Tigres de la U.A.N.L.	158539	151994	Milagros Martínez Domínguez	1	1	0	0
2024-2025	Apertura	 Tigres de la U.A.N.L.	159976	152131	Jennifer Hermoso Fuentes	1	1	0	0
2024-2025	Apertura	 Tigres de la U.A.N.L.	164092	157565	Mario Ibáñez Mancebo	1	1	0	0
2024-2025	Apertura	 Club Tijuana	149220	143958	Mayra Alejandra Pelayo-bernal 	5	5	1	0
2024-2025	Apertura	 Club Tijuana	130241	128340	Bibiana Guadalupe Quintos Galván	4	4	0	0
2024-2025	Apertura	 Club Tijuana	150617	145198	Marta Alexandra Cox Villarreal 	3	3	0	0
2024-2025	Apertura	 Club Tijuana	157981	152046	Bianca Esther Mora De La Torre	3	3	0	0
2024-2025	Apertura	 Club Tijuana	173831	165163	Fabiola Villalobos Morales	3	3	0	0
2024-2025	Apertura	 Club Tijuana	169757	159591	Daphne Melissa Herrera Monge	2	2	0	0
2024-2025	Apertura	 Club Tijuana	124788	123692	Andrea González Salinas	1	1	0	0
2024-2025	Apertura	 Club Tijuana	124832	123553	Daniela Carrandi Casillas	1	1	0	0
2024-2025	Apertura	 Club Tijuana	124947	123734	Esmeralda Verdugo Romo	1	1	0	0
2024-2025	Apertura	 Club Tijuana	129994	128473	Victoria López Quiñonez	1	1	0	0
2024-2025	Apertura	 Club Tijuana	132041	130237	Alejandra Gutiérrez Carrillo	1	1	0	0
2024-2025	Apertura	 Club Tijuana	136947	134380	Mariana Munguía Haros	1	1	0	0
2024-2025	Apertura	 Club Tijuana	144849	140435	Mónica Rose Alvarado Rodríguez	1	1	0	0
2024-2025	Apertura	 Club Tijuana	158607	152030	Ammanda Mariee Marroquin 	1	1	0	0
2024-2025	Apertura	 Club Tijuana	164267	158854	Aisha Keshy Solórzano García	1	1	0	0
2024-2025	Apertura	 Club Tijuana	176095	165435	Emily Sofia Alvarado Natividad	1	1	0	0
2024-2025	Apertura	 Toluca	158618	152051	Brenda Woch Da Graca Rodrigues	8	1	0	0
2024-2025	Apertura	 Toluca	170615	162319	Michaela Batya Bisi Abam 	4	0	0	0
2024-2025	Apertura	 Toluca	139273	136312	Natalia Macías Valadez Aguilera	3	0	0	0
2024-2025	Apertura	 Toluca	144143	140130	Marlyn Margoth Campa Ávalos	3	0	0	0
2024-2025	Apertura	 Toluca	172031	163650	Ricardo José Belli 	3	0	0	0
2024-2025	Apertura	 Toluca	124811	123711	Diana Paola Monroy Cabrera	2	0	0	0
2024-2025	Apertura	 Toluca	136766	134312	Cinthya Peraza Fernández	2	0	0	0
2024-2025	Apertura	 Toluca	164159	158739	Mitsy Nayelli Ramirez Lara	2	0	0	0
2024-2025	Apertura	 Toluca	173458	164903	Amandine Henry 	2	1	0	0
2024-2025	Apertura	 Toluca	124764	123577	Liliana Rodríguez Alejo	1	0	0	0
2024-2025	Apertura	 Toluca	132285	130757	Mariel Román Pacheco	1	0	0	0
2024-2025	Apertura	 Toluca	132400	130380	Brenda Vega Garcia	1	0	1	0
2024-2025	Apertura	 Toluca	138811	136273	Sumiko Gutiérrez Vera	1	0	0	0
2024-2025	Apertura	 Toluca	138935	136315	Natalia Inés Gómez Junco Esteva	1	0	0	0
2024-2025	Apertura	 Toluca	139221	136222	Samantha Kassandra Calvillo Hernández	1	0	0	0
2024-2025	Apertura	 Toluca	154882	149176	Daniela Gallegos Zozaya	1	0	0	0
2024-2025	Apertura	 Toluca	155810	149705	Briseida Jisette Velasquez Hernandez	1	0	0	0
2024-2025	Apertura	 Toluca	172030	163649	Carlos Gustavo Mendes Campioli	1	0	1	0
2024-2025	Apertura	 Toluca	172183	163681	Vanessa Fernanda Da Silva 	0	0	1	0
\.


--
-- TOC entry 3690 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: marioruiz
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2025-01-03 16:34:11 CST

--
-- PostgreSQL database dump complete
--

