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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth_km integer,
    age_in_millions_of_years numeric(10,2),
    description text,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth_km integer,
    age_in_millions_of_years numeric(10,2),
    is_spherical boolean,
    description text
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
    distance_from_earth_km integer,
    age_in_millions_of_years numeric(10,2),
    description text,
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
    name character varying(30) NOT NULL,
    distance_from_earth_km integer,
    age_in_millions_of_years numeric(10,2),
    description text,
    has_life boolean,
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
    name character varying(30) NOT NULL,
    distance_from_earth_km integer,
    age_in_millions_of_years numeric(10,2),
    description text,
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'Sagittarius A*', 26000000, 13000.00, 'Supermassive black hole at the center of Milky Way', 1);
INSERT INTO public.blackhole VALUES (2, 'V616 Monocerotis', 3000000, 8000.00, 'Closest known black hole to Earth', 1);
INSERT INTO public.blackhole VALUES (3, 'Cygnus X-1', 6070000, 5000.00, 'First black hole candidate widely recognized', 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0, 13600.00, true, 'Our home galaxy');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2537000, 10000.00, true, 'Closest large galaxy to the Milky Way');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 3000000, 12000.00, true, 'Third-largest galaxy in the Local Group');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 23000000, 500.00, true, 'Famous for its spiral structure');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 29000000, 800.00, true, 'Known for its bright nucleus and large central bulge');
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 500000000, 100.00, false, 'A rare ring galaxy formed by a collision');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 384400, 4500.00, 'Earth''s only natural satellite', 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 225000000, 4503.00, 'Larger and inner moon of Mars', 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 225000000, 4503.00, 'Smaller and outer moon of Mars', 4);
INSERT INTO public.moon VALUES (4, 'Io', 628730000, 4500.00, 'Most volcanically active body in Solar System', 5);
INSERT INTO public.moon VALUES (5, 'Europa', 628730000, 4500.00, 'Smoothest surface of any known solid object', 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 628730000, 4500.00, 'Largest moon in the Solar System', 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 628730000, 4500.00, 'Second-largest moon of Jupiter', 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', 628730000, 4500.00, 'Third closest moon to Jupiter', 5);
INSERT INTO public.moon VALUES (9, 'Titan', 1277400000, 4503.00, 'Largest moon of Saturn', 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', 1277400000, 4503.00, 'Ice-covered moon with subsurface ocean', 6);
INSERT INTO public.moon VALUES (11, 'Mimas', 1277400000, 4503.00, 'Smallest astronomical body known to be rounded', 6);
INSERT INTO public.moon VALUES (12, 'Rhea', 1277400000, 4503.00, 'Second-largest moon of Saturn', 6);
INSERT INTO public.moon VALUES (13, 'Iapetus', 1277400000, 4503.00, 'Third-largest moon of Saturn', 6);
INSERT INTO public.moon VALUES (14, 'Dione', 1277400000, 4503.00, 'Fourth-largest moon of Saturn', 6);
INSERT INTO public.moon VALUES (15, 'Tethys', 1277400000, 4503.00, 'Fifth-largest moon of Saturn', 6);
INSERT INTO public.moon VALUES (16, 'Miranda', 1700000000, 4503.00, 'Smallest of Uranus''s rounded satellites', 7);
INSERT INTO public.moon VALUES (17, 'Ariel', 1700000000, 4503.00, 'Fourth-largest moon of Uranus', 7);
INSERT INTO public.moon VALUES (18, 'Umbriel', 1700000000, 4503.00, 'Third-largest moon of Uranus', 7);
INSERT INTO public.moon VALUES (19, 'Titania', 1700000000, 4503.00, 'Largest moon of Uranus', 7);
INSERT INTO public.moon VALUES (20, 'Oberon', 1700000000, 4503.00, 'Second-largest moon of Uranus', 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 77300000, 4503.00, 'Smallest and innermost planet in the Solar System', false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 38000000, 4503.00, 'Second planet from the Sun', false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 0, 4543.00, 'Our home planet', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 225000000, 4603.00, 'The Red Planet', false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 628730000, 4603.00, 'Largest planet in our Solar System', false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 1277400000, 4503.00, 'Known for its prominent ring system', false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 1700000000, 4503.00, 'Ice giant planet', false, 1);
INSERT INTO public.planet VALUES (8, 'Kepler-186f', 1825000000, 4600.00, 'First Earth-sized planet in habitable zone', false, 2);
INSERT INTO public.planet VALUES (9, 'Proxima b', 1900000000, 4850.00, 'Potentially habitable exoplanet', false, 2);
INSERT INTO public.planet VALUES (10, 'TRAPPIST-1d', 1950000000, 7600.00, 'Potentially habitable rocky planet', false, 3);
INSERT INTO public.planet VALUES (11, 'HD 40307g', 1980000000, 4200.00, 'Super-Earth exoplanet', false, 4);
INSERT INTO public.planet VALUES (12, 'Gliese 581c', 1999000000, 4300.00, 'Super-Earth in Libra constellation', false, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0, 4600.00, 'The star at the center of our solar system', 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 40100, 4500.00, 'The closest star to the Sun', 2);
INSERT INTO public.star VALUES (3, 'Sirius', 8150000, 242.00, 'The brightest star in the night sky', 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 642500000, 10000.00, 'A red supergiant in the Orion constellation', 1);
INSERT INTO public.star VALUES (5, 'Vega', 25000000, 455.00, 'A bright star in the Lyra constellation', 1);
INSERT INTO public.star VALUES (6, 'Rigel', 863000000, 8000.00, 'A blue supergiant in the Orion constellation', 1);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 3, true);


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
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


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
-- Name: blackhole blackhole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

