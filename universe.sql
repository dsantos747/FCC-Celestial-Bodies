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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_type text,
    solar_mass numeric NOT NULL,
    year_discovered integer
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
    name character varying(30) NOT NULL,
    discovered_by text,
    year_discovered integer,
    lone_moon boolean NOT NULL,
    planet_id integer,
    moon_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    radius_km integer NOT NULL,
    has_life boolean NOT NULL,
    star_id integer,
    planet_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    age_million_years numeric NOT NULL,
    core_temp_kelvin integer NOT NULL,
    radius_km integer NOT NULL,
    galaxy_id integer,
    star_id integer NOT NULL
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
-- Name: useless; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.useless (
    useless_id integer NOT NULL,
    name character varying(30) NOT NULL,
    text text NOT NULL
);


ALTER TABLE public.useless OWNER TO freecodecamp;

--
-- Name: useless_useless_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.useless_useless_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.useless_useless_id_seq OWNER TO freecodecamp;

--
-- Name: useless_useless_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.useless_useless_id_seq OWNED BY public.useless.useless_id;


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
-- Name: useless useless_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.useless ALTER COLUMN useless_id SET DEFAULT nextval('public.useless_useless_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Barred Spiral', 1150000000000, 1610);
INSERT INTO public.galaxy VALUES (2, 'Honey Way', 'Pinwheel', 650000000000, 1750);
INSERT INTO public.galaxy VALUES (3, 'Juicy Way', 'Elliptical', 800000000000, 1780);
INSERT INTO public.galaxy VALUES (4, 'Rosy Way', 'Pinwheel', 1400000000000, 1820);
INSERT INTO public.galaxy VALUES (5, 'Cheesy Way', 'Cartwheel', 4200000000000, 1880);
INSERT INTO public.galaxy VALUES (6, 'Nutty Way', 'Barred Spiral', 950000000000, 1950);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Earth 1', NULL, NULL, true, 1, 1);
INSERT INTO public.moon VALUES ('Phobos', 'Asaph Hall', 1877, false, 3, 2);
INSERT INTO public.moon VALUES ('Deimos', 'Asaph Hall', 1877, false, 3, 3);
INSERT INTO public.moon VALUES ('Io', 'Galileo Galilei', 1610, false, 4, 4);
INSERT INTO public.moon VALUES ('Europa', 'Galileo Galilei', 1610, false, 4, 5);
INSERT INTO public.moon VALUES ('Ganymede', 'Galileo Galilei', 1610, false, 4, 6);
INSERT INTO public.moon VALUES ('Callisto', 'Galileo Galilei', 1610, false, 4, 7);
INSERT INTO public.moon VALUES ('BeeBall', 'Buzz Aldrin', 1985, true, 5, 8);
INSERT INTO public.moon VALUES ('Isaac', 'Fizz Zicks', 1932, false, 6, 9);
INSERT INTO public.moon VALUES ('Newton', 'Fizz Zicks', 1932, false, 6, 10);
INSERT INTO public.moon VALUES ('Clementine', 'Dr. Zest', 1979, true, 7, 11);
INSERT INTO public.moon VALUES ('Rosetta', 'Professor Tharpe', 1944, true, 9, 12);
INSERT INTO public.moon VALUES ('Walnut', 'John P. Nutt', 1953, false, 10, 13);
INSERT INTO public.moon VALUES ('Almond', 'John P. Nutt', 1954, false, 10, 14);
INSERT INTO public.moon VALUES ('Hazelnut', 'John P. Nutt', 1955, false, 10, 15);
INSERT INTO public.moon VALUES ('Pecan', 'John P. Nutt', 1956, false, 10, 16);
INSERT INTO public.moon VALUES ('Babybel', 'Dr. Cheese', 1972, true, 11, 17);
INSERT INTO public.moon VALUES ('Rocky Fort', 'Professor Pong', 1988, false, 12, 18);
INSERT INTO public.moon VALUES ('Still Tonne', 'Professor Pong', 1990, false, 12, 19);
INSERT INTO public.moon VALUES ('De Brie', 'Professor Pong', 1991, false, 12, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 6371, true, 1, 1);
INSERT INTO public.planet VALUES ('Venus', 6052, false, 1, 2);
INSERT INTO public.planet VALUES ('Mars', 3396, false, 1, 3);
INSERT INTO public.planet VALUES ('Jupiter', 71492, false, 1, 4);
INSERT INTO public.planet VALUES ('Honeyglobe', 12400, false, 2, 5);
INSERT INTO public.planet VALUES ('Appleton', 10000, false, 3, 6);
INSERT INTO public.planet VALUES ('OrangeLand', 18000, true, 3, 7);
INSERT INTO public.planet VALUES ('Plumto', 2377, false, 3, 8);
INSERT INTO public.planet VALUES ('Thornius', 7800, false, 4, 9);
INSERT INTO public.planet VALUES ('Macadopia', 3500, true, 5, 10);
INSERT INTO public.planet VALUES ('Edam', 22500, false, 6, 11);
INSERT INTO public.planet VALUES ('Gorgonzoland', 38000, true, 6, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 4600, 15700000, 695700, 1, 1);
INSERT INTO public.star VALUES ('Honey Sun', 3500, 12300000, 59000, 2, 2);
INSERT INTO public.star VALUES ('Juicy Sun', 3700, 13300000, 135000, 3, 3);
INSERT INTO public.star VALUES ('Rosy Sun', 5000, 16500000, 752000, 4, 4);
INSERT INTO public.star VALUES ('Nutty Sun', 3900, 14500000, 250000, 6, 6);
INSERT INTO public.star VALUES ('Cheesy Sun', 8000, 18000000, 999000, 5, 5);


--
-- Data for Name: useless; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.useless VALUES (1, 'Line one', 'This table');
INSERT INTO public.useless VALUES (2, 'Line two', 'serves no');
INSERT INTO public.useless VALUES (3, 'Line three', 'purpose.');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: useless_useless_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.useless_useless_id_seq', 3, true);


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
-- Name: useless useless_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.useless
    ADD CONSTRAINT useless_name_key UNIQUE (name);


--
-- Name: useless useless_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.useless
    ADD CONSTRAINT useless_pkey PRIMARY KEY (useless_id);


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

