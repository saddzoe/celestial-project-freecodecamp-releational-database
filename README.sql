# celestial-project-freecodecamp-releational-database

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
    name character varying(255),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age integer,
    distance integer,
    multiverse numeric,
    f_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_foreign_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_foreign_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_foreign_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_foreign_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_foreign_id_seq OWNED BY public.galaxy.f_id;


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
-- Name: meteor; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteor (
    meteor_id integer NOT NULL,
    name character varying(255),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    age integer,
    distance integer,
    multiverse numeric,
    f_id integer NOT NULL
);


ALTER TABLE public.meteor OWNER TO freecodecamp;

--
-- Name: meteor_foreign_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meteor_foreign_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteor_foreign_id_seq OWNER TO freecodecamp;

--
-- Name: meteor_foreign_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.meteor_foreign_id_seq OWNED BY public.meteor.f_id;


--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meteor_meteor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteor_meteor_id_seq OWNER TO freecodecamp;

--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.meteor_meteor_id_seq OWNED BY public.meteor.meteor_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age integer,
    distance integer,
    multiverse numeric,
    f_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_foreign_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_foreign_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_foreign_id_seq OWNER TO freecodecamp;

--
-- Name: moon_foreign_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_foreign_id_seq OWNED BY public.moon.f_id;


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
    name character varying(255),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age integer,
    distance integer,
    multiverse numeric,
    f_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_foreign_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_foreign_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_foreign_id_seq OWNER TO freecodecamp;

--
-- Name: planet_foreign_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_foreign_id_seq OWNED BY public.planet.f_id;


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
    name character varying(255),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age integer,
    distance integer,
    multiverse numeric,
    f_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_foreign_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_foreign_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_foreign_id_seq OWNER TO freecodecamp;

--
-- Name: star_foreign_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_foreign_id_seq OWNED BY public.star.f_id;


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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy f_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN f_id SET DEFAULT nextval('public.galaxy_foreign_id_seq'::regclass);


--
-- Name: meteor meteor_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor ALTER COLUMN meteor_id SET DEFAULT nextval('public.meteor_meteor_id_seq'::regclass);


--
-- Name: meteor f_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor ALTER COLUMN f_id SET DEFAULT nextval('public.meteor_foreign_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon f_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN f_id SET DEFAULT nextval('public.moon_foreign_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet f_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN f_id SET DEFAULT nextval('public.planet_foreign_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star f_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN f_id SET DEFAULT nextval('public.star_foreign_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The famous one', true, false, 743, 92, 3, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'This another famous one', true, false, 72, 94, 2, 2);
INSERT INTO public.galaxy VALUES (3, 'Misser 96', 'This is a new one', false, false, 45, 32, 22, 3);
INSERT INTO public.galaxy VALUES (4, 'Black Eye', 'The major swirl', false, true, 93, 7, 63, 4);
INSERT INTO public.galaxy VALUES (5, 'Tadpole', 'The straight shooter', true, true, 85, 36, 65, 5);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 'This one goes round and round', true, false, 86, 644, 7, 6);
INSERT INTO public.galaxy VALUES (7, 'Comet', 'Might be Halleys', true, true, 973, 46, 9, 7);
INSERT INTO public.galaxy VALUES (8, 'Sombreo galaxy', 'This looks like a sombreo', true, false, 78, 32, 4, 8);


--
-- Data for Name: meteor; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteor VALUES (1, 'Halley Comet', 'This is a famous one', false, true, 93, 26, 4, 1);
INSERT INTO public.meteor VALUES (2, 'Big dipper', 'This is another famous one', false, false, 343, 38, 9, 2);
INSERT INTO public.meteor VALUES (3, 'Little Dipper', 'The small one', false, false, 97, 764, 34, 3);
INSERT INTO public.meteor VALUES (4, 'Aqua', 'This is shaped like a man', false, false, 64, 24, 43, 4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Everyone knows this one', true, true, 4853, 829, 43, 1);
INSERT INTO public.moon VALUES (2, 'Europa', 'This is a famous one', false, true, 469, 983, 8, 2);
INSERT INTO public.moon VALUES (3, 'Ganymede', 'This one is out there', false, true, 9853, 9274, 9, 3);
INSERT INTO public.moon VALUES (4, 'Io', 'This is a new one', true, true, 92, 8742, 4, 4);
INSERT INTO public.moon VALUES (5, 'Mimas', 'Another new one', false, true, 7424, 948, 84, 5);
INSERT INTO public.moon VALUES (6, 'Thebe', 'This is close', true, false, 23, 48, 3, 6);
INSERT INTO public.moon VALUES (7, 'Amalthea', 'This is pretty', false, false, 9, 842, 233, 7);
INSERT INTO public.moon VALUES (8, 'Carme', 'This is alot', false, false, 8328, 743, 84, 8);
INSERT INTO public.moon VALUES (9, 'Himilia', 'This is a huge one', true, false, 654, 983, 8, 9);
INSERT INTO public.moon VALUES (10, 'Dione', 'Pretty name', true, false, 942, 473, 32, 10);
INSERT INTO public.moon VALUES (11, 'Ainite', 'It is out there', false, false, 8035, 43, 298, 11);
INSERT INTO public.moon VALUES (12, 'Elara', 'Another pretty name', false, true, 925, 8432, 20, 12);
INSERT INTO public.moon VALUES (13, 'Harry', 'From the potter', false, false, 235, 837, 3882, 13);
INSERT INTO public.moon VALUES (14, 'Hermippe', 'This is out there too', false, true, 892, 350, 63, 14);
INSERT INTO public.moon VALUES (15, 'Aoede', 'This is a new one too', false, false, 9024, 5498, 2, 15);
INSERT INTO public.moon VALUES (16, 'Heike', 'This is spaced out', false, true, 964, 92, 346, 16);
INSERT INTO public.moon VALUES (17, 'Carpo', 'This out there with you', true, true, 9723, 56, 23, 17);
INSERT INTO public.moon VALUES (18, 'Kalyke', 'This is around empty', true, true, 47, 77, 5, 18);
INSERT INTO public.moon VALUES (19, 'Tethys', 'Looks familiar', false, true, 679, 59, 18, 19);
INSERT INTO public.moon VALUES (20, 'Herse', 'This is different', false, true, 721, 1353, 19, 20);
INSERT INTO public.moon VALUES (24, 'Cyliene', 'This one is red', false, true, 194, 200, 8, 24);
INSERT INTO public.moon VALUES (25, 'Eirene', 'Might be split into two', true, false, 104, 34, 698, 25);
INSERT INTO public.moon VALUES (26, 'Eukelade', 'This is empty kinda', true, true, 971, 846, 4503, 26);
INSERT INTO public.moon VALUES (27, 'Titan', 'This is the one', true, true, 7432, 3085, 32, 27);
INSERT INTO public.moon VALUES (32, 'Harpo', 'I have been fighting all my life head ass', true, false, 3847, 549, 3, 32);
INSERT INTO public.moon VALUES (33, 'Sinope', 'More like empty space', true, false, 65, 84, 4, 33);
INSERT INTO public.moon VALUES (34, 'Megacite', 'Not that mega', false, false, 9409, 92, 84, 34);
INSERT INTO public.moon VALUES (35, 'Charon', 'Very pretty', false, true, 8321, 66, 751, 35);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Jupiter', 'One of those ones', true, false, 903, 2998, 4, 1);
INSERT INTO public.planet VALUES (2, 'Saturn', 'The big dawg', true, true, 843, 9385, 3, 2);
INSERT INTO public.planet VALUES (3, 'Venus', 'Bring me those fortunes', true, true, 983, 95, 85, 3);
INSERT INTO public.planet VALUES (4, 'Pluto', 'The little dawg', false, true, 65, 694, 7, 4);
INSERT INTO public.planet VALUES (5, 'Mars', 'The warlord', true, true, 847, 79, 93, 5);
INSERT INTO public.planet VALUES (6, 'Mercury', 'Not the maurder', true, true, 845, 96, 9, 6);
INSERT INTO public.planet VALUES (7, 'Neptune', 'The lovely one', false, true, 96, 753, 95, 7);
INSERT INTO public.planet VALUES (8, 'Earth', 'The famous one', true, true, 9854, 852, 3, 8);
INSERT INTO public.planet VALUES (9, 'Uranus', 'The interesitng one', true, true, 643, 593, 63, 9);
INSERT INTO public.planet VALUES (10, 'Harry', 'Made up one', false, true, 654, 93, 397, 10);
INSERT INTO public.planet VALUES (11, 'Ceres', 'The tempting one', true, true, 75, 33, 2, 11);
INSERT INTO public.planet VALUES (12, 'Charon', 'Might be a moon', false, true, 893, 64, 45, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Betelguse', 'The light shining', true, false, 863, 74, 6, 1);
INSERT INTO public.star VALUES (2, 'Rigel', 'Very pretty', false, false, 636, 96, 802, 2);
INSERT INTO public.star VALUES (3, 'Sirius', 'This the one', true, true, 67, 743, 72, 3);
INSERT INTO public.star VALUES (4, 'Pollux', 'The bright one', true, false, 6322, 246, 9, 4);
INSERT INTO public.star VALUES (5, 'Deneb', 'Might be fake', false, false, 64, 655, 96, 5);
INSERT INTO public.star VALUES (6, 'Antares', 'The orange one', true, true, 9645, 96, 4, 6);
INSERT INTO public.star VALUES (7, 'Vega', 'The famous one', true, false, 957, 76, 83, 7);


--
-- Name: galaxy_foreign_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_foreign_id_seq', 40, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 40, true);


--
-- Name: meteor_foreign_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meteor_foreign_id_seq', 4, true);


--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meteor_meteor_id_seq', 4, true);


--
-- Name: moon_foreign_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_foreign_id_seq', 60, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 60, true);


--
-- Name: planet_foreign_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_foreign_id_seq', 12, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_foreign_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_foreign_id_seq', 8, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy galaxy_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_age_key UNIQUE (age);


--
-- Name: galaxy galaxy_f_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_f_id_key UNIQUE (f_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: meteor meteor_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_age_key UNIQUE (age);


--
-- Name: meteor meteor_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_pkey PRIMARY KEY (meteor_id);


--
-- Name: moon moon_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_age_key UNIQUE (age);


--
-- Name: moon moon_f_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_f_id_key UNIQUE (f_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_age_key UNIQUE (age);


--
-- Name: planet planet_f_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_f_id_key UNIQUE (f_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_age_key UNIQUE (age);


--
-- Name: star star_f_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_f_id_key UNIQUE (f_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_f_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_f_id_fkey FOREIGN KEY (f_id) REFERENCES public.galaxy(f_id);


--
-- PostgreSQL database dump complete
--
