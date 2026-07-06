--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    size integer NOT NULL,
    name character varying(30),
    speed integer NOT NULL,
    is_active boolean NOT NULL
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    age_in_millions_years integer,
    diameter integer,
    galaxy_type text
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
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    diameter integer,
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
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    diameter integer,
    has_life boolean,
    is_spherical boolean,
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
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    galaxy_id integer,
    size integer
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 100, 'Halley', 100, true);
INSERT INTO public.comet VALUES (2, 200, 'Hale-Bopp', 100, true);
INSERT INTO public.comet VALUES (3, 300, 'Hyakutake', 100, true);
INSERT INTO public.comet VALUES (4, 400, 'Encke', 100, true);
INSERT INTO public.comet VALUES (5, 500, 'Tempel 1', 100, true);
INSERT INTO public.comet VALUES (6, 600, 'Tempel 2', 100, true);
INSERT INTO public.comet VALUES (7, 700, 'Borrelly', 100, true);
INSERT INTO public.comet VALUES (8, 800, 'Wild 2', 100, true);
INSERT INTO public.comet VALUES (9, 900, 'Shoemaker-Levy 9', 100, true);
INSERT INTO public.comet VALUES (10, 1000, 'Swift-Tuttle', 100, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way(Via Lactea)', 0, 14, 100000, 'Espiral barrada');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2.5, 10000, 220000, 'Espiral');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 3, 12000, 60000, 'Espiral');
INSERT INTO public.galaxy VALUES (4, 'Sobrero', 29, 13, 50000, 'Espiral lenticular');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 23, 400, 76000, 'Espiral con brazos definidos');
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 160000, 13000, 14000, 'Irregular');
INSERT INTO public.galaxy VALUES (7, 'Small Magellanic Cloud', 200000, 13000, 7000, 'Irregular');
INSERT INTO public.galaxy VALUES (8, 'Centaurus A', 12000000, 13000, 60000, 'Elliptical');
INSERT INTO public.galaxy VALUES (9, 'NGC 1300', 61000000, 13000, 110000, 'Barred Spiral');
INSERT INTO public.galaxy VALUES (10, 'NGC 6744', 30000000, 10000, 175000, 'Spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 384400, 3474, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 9377, 22, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 23460, 12, 4);
INSERT INTO public.moon VALUES (4, 'Io', 628000000, 3643, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 628000000, 3121, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 628000000, 5268, 5);
INSERT INTO public.moon VALUES (7, 'Titan', 1200000000, 5150, 6);
INSERT INTO public.moon VALUES (8, 'Rhea', 1200000000, 1528, 6);
INSERT INTO public.moon VALUES (9, 'Sirius Moon A', 8600000, 30, 7);
INSERT INTO public.moon VALUES (10, 'Sirius Moon B', 8600000, 40, 7);
INSERT INTO public.moon VALUES (11, 'Sirius Moon C', 8600000, 25, 8);
INSERT INTO public.moon VALUES (12, 'Andromeda Moon 1', 2500000, 50, 9);
INSERT INTO public.moon VALUES (13, 'Andromeda Moon 2', 2500000, 60, 9);
INSERT INTO public.moon VALUES (14, 'Andromeda Moon 3', 2500000, 55, 10);
INSERT INTO public.moon VALUES (15, 'Triangulum Moon A', 3000000, 40, 11);
INSERT INTO public.moon VALUES (16, 'Triangulum Moon B', 3000000, 45, 11);
INSERT INTO public.moon VALUES (17, 'Triangulum Moon C', 3000000, 50, 12);
INSERT INTO public.moon VALUES (18, 'Sombrero Moon 1', 29000000, 70, 13);
INSERT INTO public.moon VALUES (19, 'Sombrero Moon 2', 29000000, 80, 13);
INSERT INTO public.moon VALUES (20, 'Sombrero Moon 3', 29000000, 75, 14);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 77000000, 4879, false, true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 41000000, 12104, false, true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 0, 12742, true, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 78000000, 6779, false, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 628000000, 139820, false, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 1200000000, 116460, false, true, 1);
INSERT INTO public.planet VALUES (7, 'Sirius Planet A', 8600000, 15000, false, true, 2);
INSERT INTO public.planet VALUES (8, 'Sirius Planet B', 8600000, 18000, false, true, 2);
INSERT INTO public.planet VALUES (9, 'Andromeda Prime', 2500000, 20000, false, true, 3);
INSERT INTO public.planet VALUES (10, 'Andromeda Secundus', 2500000, 17000, false, true, 3);
INSERT INTO public.planet VALUES (11, 'Triangulum X', 3000000, 14000, false, true, 4);
INSERT INTO public.planet VALUES (12, 'Triangulum Y', 3000000, 16000, false, true, 4);
INSERT INTO public.planet VALUES (13, 'Sombrero-1', 29000000, 20000, false, true, 5);
INSERT INTO public.planet VALUES (14, 'Sombrero-2', 29000000, 23000, false, true, 5);
INSERT INTO public.planet VALUES (15, 'LMC Planet A', 160000, 10000, false, true, 6);
INSERT INTO public.planet VALUES (16, 'LMC Planet B', 160000, 12000, false, true, 6);
INSERT INTO public.planet VALUES (17, 'SMC Planet A', 200000, 9000, false, true, 7);
INSERT INTO public.planet VALUES (18, 'SMC Planet B', 200000, 11000, false, true, 7);
INSERT INTO public.planet VALUES (19, 'Centaurus Planet A', 12000000, 15000, false, true, 8);
INSERT INTO public.planet VALUES (20, 'Centaurus Planet B', 12000000, 17000, false, true, 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0, 1, 1392700);
INSERT INTO public.star VALUES (2, 'Sirius', 8.6, 1, 2400000);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 642, 1, 1400000000);
INSERT INTO public.star VALUES (4, 'Rigel', 860, 1, 78900000);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 4.24, 1, 200000);
INSERT INTO public.star VALUES (6, 'Alpha Centauri A', 4.37, 1, 1520000);
INSERT INTO public.star VALUES (7, 'Alpha Centauri B', 4.37, 1, 1100000);
INSERT INTO public.star VALUES (8, 'Vega', 25, 1, 2362000);
INSERT INTO public.star VALUES (9, 'Deneb', 2600, 1, 203000000);
INSERT INTO public.star VALUES (10, 'Pollux', 34, 1, 12000000);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 10, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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

