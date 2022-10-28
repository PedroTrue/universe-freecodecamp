--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: descobridores; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.descobridores (
    descobridores_id integer NOT NULL,
    name character varying(20) NOT NULL,
    date date
);


ALTER TABLE public.descobridores OWNER TO freecodecamp;

--
-- Name: descobridores_descobridores_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.descobridores_descobridores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.descobridores_descobridores_id_seq OWNER TO freecodecamp;

--
-- Name: descobridores_descobridores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.descobridores_descobridores_id_seq OWNED BY public.descobridores.descobridores_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer,
    galaxy_types text,
    distance_from_earth numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer,
    galaxy_types text,
    planet_types character varying(20),
    distance_from_earth numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer,
    galaxy_types text,
    planet_types character varying(20),
    distance_from_earth numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer,
    galaxy_types text,
    distance_from_earth numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: descobridores descobridores_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.descobridores ALTER COLUMN descobridores_id SET DEFAULT nextval('public.descobridores_descobridores_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: descobridores; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.descobridores VALUES (1, 'Galileu', '1601-09-11');
INSERT INTO public.descobridores VALUES (2, 'Cornelio', '1710-01-02');
INSERT INTO public.descobridores VALUES (3, 'Isaac', '1885-04-25');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'É a galaxia mais próxima da via Lactea', false, 10, 'Andromeda', 2.54);
INSERT INTO public.galaxy VALUES (2, 'Via Lactea', 'É a nossa galaxia', true, 13, 'Sagitario', 0);
INSERT INTO public.galaxy VALUES (3, 'Olho Negro', 'Aparencia escura com numerosos pontos brilhantes', false, 1, 'Coma Berenices', 24);
INSERT INTO public.galaxy VALUES (4, 'Bode', 'Nome de animal', false, 7, 'Ursa Maior', 14);
INSERT INTO public.galaxy VALUES (5, 'Cartwheel', 'Roda de carrinho', false, 4, 'Escultor', 17);
INSERT INTO public.galaxy VALUES (6, 'Charuto', 'Bora da um tapa', false, 15, 'Ursa Maior', 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Lua', 'Satelite da Terra', true, NULL, 'Sagitario', NULL, NULL, 3);
INSERT INTO public.moon VALUES (3, 'Io', 'Satelite de Mercurio', false, NULL, 'Sagitario', NULL, NULL, 1);
INSERT INTO public.moon VALUES (4, 'Ganimedes', 'Satelite de Venus', false, NULL, 'Sagitario', NULL, NULL, 2);
INSERT INTO public.moon VALUES (5, 'Europa', 'Satelite de Marte', false, NULL, 'Andromeda', NULL, NULL, 4);
INSERT INTO public.moon VALUES (6, 'Calisto', 'Satelite de Jupiter', false, NULL, 'Andromeda', NULL, NULL, 5);
INSERT INTO public.moon VALUES (7, 'Tita', 'Satelite de Saturno', false, NULL, 'Andromeda', NULL, NULL, 6);
INSERT INTO public.moon VALUES (8, 'Tritao', 'Satelite de Urano', false, NULL, 'Coma Berenices', NULL, NULL, 7);
INSERT INTO public.moon VALUES (9, 'Encelado', 'Satelite de Netuno', false, NULL, 'Coma Berenices', NULL, NULL, 8);
INSERT INTO public.moon VALUES (10, 'Mimas', 'Satelite de Plutao', false, NULL, 'Coma Berenices', NULL, NULL, 9);
INSERT INTO public.moon VALUES (11, 'Cale', 'Satelite da Terra', true, NULL, 'Sagitario', NULL, NULL, 3);
INSERT INTO public.moon VALUES (12, 'Euporia', 'Satelite de Mercurio', false, NULL, 'Sagitario', NULL, NULL, 1);
INSERT INTO public.moon VALUES (13, 'Euridome', 'Satelite de Venus', false, NULL, 'Sagitario', NULL, NULL, 2);
INSERT INTO public.moon VALUES (14, 'Aitne', 'Satelite de Marte', false, NULL, 'Andromeda', NULL, NULL, 4);
INSERT INTO public.moon VALUES (15, 'Tione', 'Satelite de Jupiter', false, NULL, 'Andromeda', NULL, NULL, 5);
INSERT INTO public.moon VALUES (16, 'Iocasta', 'Satelite de Saturno', false, NULL, 'Andromeda', NULL, NULL, 6);
INSERT INTO public.moon VALUES (17, 'Caldene', 'Satelite de Urano', false, NULL, 'Coma Berenices', NULL, NULL, 7);
INSERT INTO public.moon VALUES (18, 'Taigete', 'Satelite de Netuno', false, NULL, 'Coma Berenices', NULL, NULL, 8);
INSERT INTO public.moon VALUES (19, 'Megaclite', 'Satelite de Plutao', false, NULL, 'Coma Berenices', NULL, NULL, 9);
INSERT INTO public.moon VALUES (20, 'Tie', 'Satelite de Jupiter', false, NULL, 'Andromeda', NULL, NULL, 5);
INSERT INTO public.moon VALUES (21, 'Ioca', 'Satelite de Saturno', false, NULL, 'Andromeda', NULL, NULL, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', 'Planeta de Sagitario', false, 5, 'Sagitario', 'Planeta menor', 300, 8);
INSERT INTO public.planet VALUES (2, 'Venus', 'Planeta de Sagitario', false, 7, 'Sagitario', 'Planeta secundario', 210, 9);
INSERT INTO public.planet VALUES (3, 'Terra', 'Planeta de Sagitario', true, 14, 'Sagitario', 'Planeta principal', 0, 10);
INSERT INTO public.planet VALUES (4, 'Marte', 'Planeta de Andromeda', false, 10, 'Andromeda', 'Planeta menor', 120, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Planeta de Andromeda', false, 18, 'Andromeda', 'Planeta secundario', 280, 2);
INSERT INTO public.planet VALUES (6, 'Saturno', 'Planeta de Andromeda', false, 12, 'Andromeda', 'Planeta principal', 335, 3);
INSERT INTO public.planet VALUES (7, 'Urano', 'Planeta de Coma Berenices', false, 17, 'Coma Berenices', 'Planeta menor', 390, 4);
INSERT INTO public.planet VALUES (8, 'Netuno', 'Planeta de Coma Berenices', false, 30, 'Coma Berenices', 'Planeta secundario', 458, 5);
INSERT INTO public.planet VALUES (9, 'Plutao', 'Planeta de Coma Berenices', false, 22, 'Coma Berenices', 'Planeta secundario', 500, 6);
INSERT INTO public.planet VALUES (10, 'Eris', 'Eris uma vez', false, 5, 'Sagitario', 'Planeta principal', 450, 7);
INSERT INTO public.planet VALUES (11, 'Ceres', 'Ceres ou nao seres...', false, 2, 'Andromeda', 'Planeta menor', 700, 2);
INSERT INTO public.planet VALUES (12, 'Haumea', 'Hauma maie', false, 1, 'Coma Berenices', 'Planeta principal', 321, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Andromedae', 'Estrela mais brilhante de Andromeda', false, NULL, 'Andromeda', 97, 1);
INSERT INTO public.star VALUES (2, 'Gamma Andromedae', 'Sistema triplo de estrelas', false, NULL, 'Andromeda', 355, 1);
INSERT INTO public.star VALUES (3, 'Beta Andromedae', 'Gigante vermelha de Andromeda', false, NULL, 'Andromeda', 200, 1);
INSERT INTO public.star VALUES (7, 'Alpha Sagitario', 'Estrela anã azul', false, NULL, 'Sagitario', 182, 2);
INSERT INTO public.star VALUES (8, 'Epsilon Sagitario', 'Estrela mais brilhante em Sagitario', false, NULL, 'Sagitario', 143, 2);
INSERT INTO public.star VALUES (9, 'Sigma Sagitario', 'Segunda estrela mais brilhante em Sagitario', false, NULL, 'Sagitario', 228, 2);
INSERT INTO public.star VALUES (10, 'Sol Sagitario', 'Estrela do nosso sistema Solar', true, NULL, 'Sagitario', 0, 2);
INSERT INTO public.star VALUES (4, 'Alpha Comae Berenice', 'Representa a coroa utilizada pela rainha Berenice', false, NULL, 'Coma Berenices', 58, 3);
INSERT INTO public.star VALUES (5, 'Beta Comae Berenices', 'Estrela anã', false, NULL, 'Coma Berenices', 30, 3);
INSERT INTO public.star VALUES (6, 'Gama Comae Berenices', 'Estrela alaranjada', false, NULL, 'Coma Berenices', 167, 3);


--
-- Name: descobridores_descobridores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.descobridores_descobridores_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: descobridores descobridores_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.descobridores
    ADD CONSTRAINT descobridores_name_key UNIQUE (name);


--
-- Name: descobridores descobridores_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.descobridores
    ADD CONSTRAINT descobridores_pkey PRIMARY KEY (descobridores_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

