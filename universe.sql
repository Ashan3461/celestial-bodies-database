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
-- Name: first3; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.first3 (
    first3_id integer NOT NULL,
    name character varying(50) NOT NULL,
    total_moons integer NOT NULL,
    distance_from_sun_millions_of_km integer NOT NULL
);


ALTER TABLE public.first3 OWNER TO freecodecamp;

--
-- Name: first3_first3_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.first3_first3_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.first3_first3_id_seq OWNER TO freecodecamp;

--
-- Name: first3_first3_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.first3_first3_id_seq OWNED BY public.first3.first3_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(10,2)
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
    name character varying(50) NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    planet_id integer NOT NULL
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
    name character varying(40) NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    star_id integer NOT NULL
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
    name character varying(40) NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(10,2),
    galaxy_id integer NOT NULL
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
-- Name: first3 first3_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.first3 ALTER COLUMN first3_id SET DEFAULT nextval('public.first3_first3_id_seq'::regclass);


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
-- Data for Name: first3; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.first3 VALUES (1, 'Murcury', 0, 58);
INSERT INTO public.first3 VALUES (2, 'Venus', 0, 108);
INSERT INTO public.first3 VALUES (3, 'Earth', 1, 150);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'A barred spiral  galaxy containing 100 to 400 billion  stars, including our Solar System.', true, 13600, 0.00);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'The largest spiral galaxy in the Local Group, containing over 1 trillion stars.', false, 10000, 2.50);
INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud', 'A satellite dwarf galaxy orbiting the Milky Way, rich in gas and massive star-forming regions.', false, 1100, 0.16);
INSERT INTO public.galaxy VALUES (4, 'Triangulum Galaxy', 'The third-largest member of the Local Group, a spiral galaxy with active star formation.', false, 12000, 2.73);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy', 'A classic grand-design spiral galaxy with well-defined, prominent spiral arms.', false, 400, 23.00);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 'An unbarred spiral galaxy featuring a unusually large central bulge and a prominent dark dust lane.', false, 13250, 31.10);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', true, 4510, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', false, 4500, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', false, 4500, 4);
INSERT INTO public.moon VALUES (4, 'Io', true, 4500, 5);
INSERT INTO public.moon VALUES (5, 'Europa', true, 4500, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', true, 4500, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', true, 4500, 5);
INSERT INTO public.moon VALUES (8, 'Titan', true, 4500, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', true, 4500, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', true, 4500, 6);
INSERT INTO public.moon VALUES (11, 'Lapetus', true, 4500, 6);
INSERT INTO public.moon VALUES (12, 'Rhea', true, 4500, 6);
INSERT INTO public.moon VALUES (13, 'Hyperion', false, 4500, 6);
INSERT INTO public.moon VALUES (14, 'Titania', true, 4500, 7);
INSERT INTO public.moon VALUES (15, 'Oberon', true, 4500, 7);
INSERT INTO public.moon VALUES (16, 'Miranda', true, 4500, 7);
INSERT INTO public.moon VALUES (17, 'Ariel', true, 4500, 7);
INSERT INTO public.moon VALUES (18, 'Umbriel', true, 4500, 7);
INSERT INTO public.moon VALUES (19, 'Triton', true, 4500, 8);
INSERT INTO public.moon VALUES (20, 'Proteus', false, 4500, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Murcury', false, true, 4500, 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, true, 4500, 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, true, 4540, 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, true, 4600, 1);
INSERT INTO public.planet VALUES (5, 'Jupyter', false, true, 4600, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, true, 4500, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, true, 4500, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, true, 4500, 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', false, true, 4850, 5);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri c', false, true, 4850, 5);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri d', false, true, 4850, 5);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1b', false, true, 7600, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', true, 4600, 0.00, 1);
INSERT INTO public.star VALUES (2, 'Sirius', true, 230, 8.60, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', true, 10, 642.50, 1);
INSERT INTO public.star VALUES (4, 'Polaris', true, 70, 433.00, 1);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', true, 4850, 4.24, 1);
INSERT INTO public.star VALUES (6, 'TRAPPIST-1', true, 7600, 40.70, 1);


--
-- Name: first3_first3_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.first3_first3_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 2, true);


--
-- Name: first3 first3_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.first3
    ADD CONSTRAINT first3_name_key UNIQUE (name);


--
-- Name: first3 first3_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.first3
    ADD CONSTRAINT first3_pkey PRIMARY KEY (first3_id);


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

