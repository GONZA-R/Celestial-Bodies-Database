--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    description text NOT NULL,
    age_in_millions_of_years numeric(8,2),
    distance_from_earth integer,
    has_life boolean,
    is_spherical boolean,
    galaxy_types integer
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
    description text NOT NULL,
    age_in_millions_of_years numeric(8,2),
    distance_from_earth integer,
    has_life boolean,
    is_spherical boolean,
    moon_types integer,
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
    description text NOT NULL,
    age_in_millions_of_years numeric(8,2),
    distance_from_earth integer,
    has_life boolean,
    is_spherical boolean,
    planet_types integer,
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
    description text NOT NULL,
    age_in_millions_of_years numeric(8,2),
    distance_from_earth integer,
    has_life boolean,
    is_spherical boolean,
    star_types integer,
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
-- Name: star_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_type (
    star_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.star_type OWNER TO freecodecamp;

--
-- Name: star_type_star_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_type_star_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_type_star_type_id_seq OWNER TO freecodecamp;

--
-- Name: star_type_star_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_type_star_type_id_seq OWNED BY public.star_type.star_type_id;


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
-- Name: star_type star_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type ALTER COLUMN star_type_id SET DEFAULT nextval('public.star_type_star_type_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 'Esta es la galaxia andromeda', 89.20, 1234, true, false, 5);
INSERT INTO public.galaxy VALUES (2, 'andromeda2', 'Esta es la galaxia andromeda2', 189.20, 2134, true, false, 7);
INSERT INTO public.galaxy VALUES (3, 'andromeda3', 'Esta es la galaxia andromeda3', 289.20, 4321, false, false, 6);
INSERT INTO public.galaxy VALUES (4, 'via lactea', 'Esta es la galaxia via lactea', 438.20, 3455, true, false, 11);
INSERT INTO public.galaxy VALUES (5, 'via lactea2', 'Esta es la galaxia via lactea2', 1892.20, 22134, true, false, 17);
INSERT INTO public.galaxy VALUES (6, 'Nova8', 'Esta es la galaxia Nova8', 23289.20, 14321, true, true, 16);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'M1', 'Es m1', 1232.23, 2334, true, false, 1, 1);
INSERT INTO public.moon VALUES (2, 'M2', 'Es m2', 1232.23, 2334, true, false, 1, 2);
INSERT INTO public.moon VALUES (3, 'M3', 'Es m3', 1232.23, 2334, true, false, 2, 3);
INSERT INTO public.moon VALUES (4, 'M4', 'Es m4', 1232.23, 2334, true, false, 2, 3);
INSERT INTO public.moon VALUES (5, 'M5', 'Es m5', 1232.23, 2334, true, false, 2, 5);
INSERT INTO public.moon VALUES (6, 'M6', 'Es m6', 1232.23, 2334, true, false, 4, 10);
INSERT INTO public.moon VALUES (7, 'M7', 'Es m7', 1232.23, 2334, true, false, 1, 2);
INSERT INTO public.moon VALUES (8, 'M8', 'Es m8', 1232.23, 2334, true, false, 2, 3);
INSERT INTO public.moon VALUES (9, 'M9', 'Es m9', 1232.23, 2334, true, false, 2, 3);
INSERT INTO public.moon VALUES (10, 'M10', 'Es m10', 1232.23, 2334, true, false, 2, 5);
INSERT INTO public.moon VALUES (11, 'M11', 'Es m11', 1232.23, 2334, true, false, 4, 10);
INSERT INTO public.moon VALUES (12, 'M12', 'Es m12', 1232.23, 2334, true, false, 3, 12);
INSERT INTO public.moon VALUES (13, 'M13', 'Es m13', 1232.23, 2334, true, false, 3, 3);
INSERT INTO public.moon VALUES (14, 'M14', 'Es m9', 1232.23, 2334, true, false, 3, 1);
INSERT INTO public.moon VALUES (15, 'M15', 'Es m15', 1232.23, 2334, true, false, 2, 5);
INSERT INTO public.moon VALUES (16, 'M16', 'Es m16', 1232.23, 2334, true, false, 4, 9);
INSERT INTO public.moon VALUES (17, 'M17', 'Es m17', 1232.23, 2334, true, false, 4, 12);
INSERT INTO public.moon VALUES (18, 'M18', 'Es m18', 1232.23, 2334, true, false, 1, 3);
INSERT INTO public.moon VALUES (19, 'M19', 'Es m19', 1232.23, 2334, true, false, 5, 11);
INSERT INTO public.moon VALUES (20, 'M20', 'Es m20', 1232.23, 2334, true, false, 2, 5);
INSERT INTO public.moon VALUES (21, 'M21', 'Es m21', 1232.23, 2334, true, false, 5, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planeta1', 'Este es el planeta 1', 2344.34, 23343, true, false, 2, 3);
INSERT INTO public.planet VALUES (2, 'planeta2', 'Este es el planeta 2', 2344.34, 23343, true, false, 1, 2);
INSERT INTO public.planet VALUES (3, 'planeta3', 'Este es el planeta 3', 2344.34, 23343, true, false, 1, 4);
INSERT INTO public.planet VALUES (4, 'planeta4', 'Este es el planeta 4', 2344.34, 23343, true, false, 3, 1);
INSERT INTO public.planet VALUES (5, 'planeta5', 'Este es el planeta 5', 2344.34, 23343, true, false, 1, 4);
INSERT INTO public.planet VALUES (6, 'planeta6', 'Este es el planeta 6', 2344.34, 23343, true, false, 2, 2);
INSERT INTO public.planet VALUES (8, 'planeta7', 'Este es el planeta 7', 2344.34, 23343, true, false, 3, 1);
INSERT INTO public.planet VALUES (9, 'planeta8', 'Este es el planeta 8', 2344.34, 23343, true, false, 2, 3);
INSERT INTO public.planet VALUES (10, 'planeta9', 'Este es el planeta 9', 2344.34, 23343, true, false, 4, 1);
INSERT INTO public.planet VALUES (11, 'planeta10', 'Este es el planeta 10', 2344.34, 23343, true, false, 3, 3);
INSERT INTO public.planet VALUES (12, 'planeta11', 'Este es el planeta 11', 2344.34, 23343, true, false, 2, 1);
INSERT INTO public.planet VALUES (13, 'planeta12', 'Este es el planeta 12', 2344.34, 23343, true, false, 4, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Estrella1', 'Esta es la estrella1', 438.20, 3455, true, false, 2, 2);
INSERT INTO public.star VALUES (2, 'Estrella2', 'Esta es la estrella2', 438.20, 3455, true, false, 3, 1);
INSERT INTO public.star VALUES (3, 'Estrella3', 'Esta es la estrella3', 4938.20, 93455, true, false, 3, 3);
INSERT INTO public.star VALUES (4, 'Estrella4', 'Esta es la estrella4', 438.20, 3455, true, false, 2, 1);
INSERT INTO public.star VALUES (5, 'Estrella5', 'Esta es la estrella5', 43122.20, 123455, true, false, 4, 4);
INSERT INTO public.star VALUES (6, 'Estrella6', 'Esta es la estrella6', 438.20, 3455, true, false, 1, 5);


--
-- Data for Name: star_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_type VALUES (1, 'estrellada', 'Es una estrellada');
INSERT INTO public.star_type VALUES (2, 'Luminosa', 'Es una luminosa');
INSERT INTO public.star_type VALUES (3, 'Gigante', 'Es una gigante');


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: star_type_star_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_type_star_type_id_seq', 3, true);


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
-- Name: star_type star_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type
    ADD CONSTRAINT star_type_name_key UNIQUE (name);


--
-- Name: star_type star_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type
    ADD CONSTRAINT star_type_pkey PRIMARY KEY (star_type_id);


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

