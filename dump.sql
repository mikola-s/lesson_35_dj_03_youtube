--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: mikola-s
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO "mikola-s";

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: mikola-s
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO "mikola-s";

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mikola-s
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: mikola-s
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO "mikola-s";

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: mikola-s
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO "mikola-s";

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mikola-s
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: mikola-s
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO "mikola-s";

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: mikola-s
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO "mikola-s";

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mikola-s
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: mikola-s
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO "mikola-s";

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: mikola-s
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO "mikola-s";

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: mikola-s
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO "mikola-s";

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mikola-s
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: mikola-s
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO "mikola-s";

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mikola-s
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: mikola-s
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO "mikola-s";

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: mikola-s
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO "mikola-s";

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mikola-s
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: mikola-s
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO "mikola-s";

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: mikola-s
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO "mikola-s";

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mikola-s
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: mikola-s
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO "mikola-s";

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: mikola-s
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO "mikola-s";

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mikola-s
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: mikola-s
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO "mikola-s";

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: mikola-s
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO "mikola-s";

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mikola-s
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: mikola-s
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO "mikola-s";

--
-- Name: youtube_channel; Type: TABLE; Schema: public; Owner: mikola-s
--

CREATE TABLE public.youtube_channel (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    owner_id integer NOT NULL
);


ALTER TABLE public.youtube_channel OWNER TO "mikola-s";

--
-- Name: youtube_channel_id_seq; Type: SEQUENCE; Schema: public; Owner: mikola-s
--

CREATE SEQUENCE public.youtube_channel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.youtube_channel_id_seq OWNER TO "mikola-s";

--
-- Name: youtube_channel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mikola-s
--

ALTER SEQUENCE public.youtube_channel_id_seq OWNED BY public.youtube_channel.id;


--
-- Name: youtube_gender; Type: TABLE; Schema: public; Owner: mikola-s
--

CREATE TABLE public.youtube_gender (
    id integer NOT NULL,
    gender character varying(20) NOT NULL
);


ALTER TABLE public.youtube_gender OWNER TO "mikola-s";

--
-- Name: youtube_gender_id_seq; Type: SEQUENCE; Schema: public; Owner: mikola-s
--

CREATE SEQUENCE public.youtube_gender_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.youtube_gender_id_seq OWNER TO "mikola-s";

--
-- Name: youtube_gender_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mikola-s
--

ALTER SEQUENCE public.youtube_gender_id_seq OWNED BY public.youtube_gender.id;


--
-- Name: youtube_like; Type: TABLE; Schema: public; Owner: mikola-s
--

CREATE TABLE public.youtube_like (
    id integer NOT NULL,
    movie_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.youtube_like OWNER TO "mikola-s";

--
-- Name: youtube_like_id_seq; Type: SEQUENCE; Schema: public; Owner: mikola-s
--

CREATE SEQUENCE public.youtube_like_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.youtube_like_id_seq OWNER TO "mikola-s";

--
-- Name: youtube_like_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mikola-s
--

ALTER SEQUENCE public.youtube_like_id_seq OWNED BY public.youtube_like.id;


--
-- Name: youtube_movie; Type: TABLE; Schema: public; Owner: mikola-s
--

CREATE TABLE public.youtube_movie (
    id integer NOT NULL,
    file character varying(100),
    post_time timestamp with time zone NOT NULL,
    title character varying(255) NOT NULL,
    channel_id integer NOT NULL,
    screen_shot character varying(100)
);


ALTER TABLE public.youtube_movie OWNER TO "mikola-s";

--
-- Name: youtube_movie_id_seq; Type: SEQUENCE; Schema: public; Owner: mikola-s
--

CREATE SEQUENCE public.youtube_movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.youtube_movie_id_seq OWNER TO "mikola-s";

--
-- Name: youtube_movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mikola-s
--

ALTER SEQUENCE public.youtube_movie_id_seq OWNED BY public.youtube_movie.id;


--
-- Name: youtube_status; Type: TABLE; Schema: public; Owner: mikola-s
--

CREATE TABLE public.youtube_status (
    id integer NOT NULL,
    status character varying(20) NOT NULL
);


ALTER TABLE public.youtube_status OWNER TO "mikola-s";

--
-- Name: youtube_status_id_seq; Type: SEQUENCE; Schema: public; Owner: mikola-s
--

CREATE SEQUENCE public.youtube_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.youtube_status_id_seq OWNER TO "mikola-s";

--
-- Name: youtube_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mikola-s
--

ALTER SEQUENCE public.youtube_status_id_seq OWNED BY public.youtube_status.id;


--
-- Name: youtube_user; Type: TABLE; Schema: public; Owner: mikola-s
--

CREATE TABLE public.youtube_user (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    gender_id integer,
    login character varying(32) NOT NULL,
    password character varying(255) NOT NULL,
    register_time timestamp with time zone NOT NULL,
    status_id integer,
    birth_date date,
    first_name character varying(20),
    last_name character varying(20)
);


ALTER TABLE public.youtube_user OWNER TO "mikola-s";

--
-- Name: youtube_user_id_seq; Type: SEQUENCE; Schema: public; Owner: mikola-s
--

CREATE SEQUENCE public.youtube_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.youtube_user_id_seq OWNER TO "mikola-s";

--
-- Name: youtube_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mikola-s
--

ALTER SEQUENCE public.youtube_user_id_seq OWNED BY public.youtube_user.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: youtube_channel id; Type: DEFAULT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.youtube_channel ALTER COLUMN id SET DEFAULT nextval('public.youtube_channel_id_seq'::regclass);


--
-- Name: youtube_gender id; Type: DEFAULT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.youtube_gender ALTER COLUMN id SET DEFAULT nextval('public.youtube_gender_id_seq'::regclass);


--
-- Name: youtube_like id; Type: DEFAULT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.youtube_like ALTER COLUMN id SET DEFAULT nextval('public.youtube_like_id_seq'::regclass);


--
-- Name: youtube_movie id; Type: DEFAULT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.youtube_movie ALTER COLUMN id SET DEFAULT nextval('public.youtube_movie_id_seq'::regclass);


--
-- Name: youtube_status id; Type: DEFAULT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.youtube_status ALTER COLUMN id SET DEFAULT nextval('public.youtube_status_id_seq'::regclass);


--
-- Name: youtube_user id; Type: DEFAULT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.youtube_user ALTER COLUMN id SET DEFAULT nextval('public.youtube_user_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: mikola-s
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: mikola-s
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: mikola-s
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add channel	7	add_channel
26	Can change channel	7	change_channel
27	Can delete channel	7	delete_channel
28	Can view channel	7	view_channel
29	Can add gender	8	add_gender
30	Can change gender	8	change_gender
31	Can delete gender	8	delete_gender
32	Can view gender	8	view_gender
33	Can add movie	9	add_movie
34	Can change movie	9	change_movie
35	Can delete movie	9	delete_movie
36	Can view movie	9	view_movie
37	Can add status	10	add_status
38	Can change status	10	change_status
39	Can delete status	10	delete_status
40	Can view status	10	view_status
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add like	12	add_like
46	Can change like	12	change_like
47	Can delete like	12	delete_like
48	Can view like	12	view_like
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: mikola-s
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$150000$UtSGodI0zORo$W9f1gBnIVo4wJX5A3nhU4jpqg/Zh/ZruPxkmGDc7aB4=	2019-12-24 15:28:29.780159+00	t	mikola-s			example@test.com	t	t	2019-12-24 15:24:30.478925+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: mikola-s
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: mikola-s
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: mikola-s
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-12-25 10:43:20.454859+00	1	Gender object (1)	1	[{"added": {}}]	8	1
2	2019-12-25 10:43:29.201045+00	1	Gender object (1)	2	[{"changed": {"fields": ["gender"]}}]	8	1
3	2019-12-25 10:43:58.338408+00	1	Gender object (1)	2	[{"changed": {"fields": ["gender"]}}]	8	1
4	2019-12-25 10:44:03.559296+00	2	Gender object (2)	1	[{"added": {}}]	8	1
5	2019-12-25 10:44:11.929945+00	3	Gender object (3)	1	[{"added": {}}]	8	1
6	2019-12-25 10:52:53.976751+00	1	user	1	[{"added": {}}]	10	1
7	2019-12-25 10:53:12.663983+00	2	premium	1	[{"added": {}}]	10	1
8	2019-12-25 11:08:28.636893+00	1	site user irina	1	[{"added": {}}]	11	1
9	2019-12-25 11:08:44.618961+00	1	site user irina	2	[{"changed": {"fields": ["gender", "status"]}}]	11	1
10	2019-12-25 11:09:13.176952+00	2	site user maxim	1	[{"added": {}}]	11	1
11	2019-12-25 11:49:21.617939+00	2	site user maxim	3		11	1
12	2019-12-25 11:49:39.267427+00	3	site user maxim	1	[{"added": {}}]	11	1
13	2019-12-25 13:10:36.269585+00	1	site user irina	2	[{"changed": {"fields": ["first_name", "last_name"]}}]	11	1
14	2019-12-25 13:59:28.467813+00	1	irina channell	1	[{"added": {}}]	7	1
15	2019-12-25 13:59:52.899807+00	2	maxim channell	1	[{"added": {}}]	7	1
16	2019-12-25 14:12:58.21378+00	1	irina channel movies 1	1	[{"added": {}}]	9	1
17	2019-12-25 14:18:27.333553+00	1	irina channel movies 1	3		9	1
18	2019-12-25 14:56:56.346044+00	2	movie1 in irina channel 1	1	[{"added": {}}]	9	1
19	2019-12-25 14:58:06.559464+00	2	movie1 in irina channel 1	3		9	1
20	2019-12-25 15:14:14.543847+00	3	111	1	[{"added": {}}]	9	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: mikola-s
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	youtube	channel
8	youtube	gender
9	youtube	movie
10	youtube	status
11	youtube	user
12	youtube	like
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: mikola-s
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-12-24 15:22:08.030647+00
2	auth	0001_initial	2019-12-24 15:22:08.251531+00
3	admin	0001_initial	2019-12-24 15:22:08.617225+00
4	admin	0002_logentry_remove_auto_add	2019-12-24 15:22:08.697553+00
5	admin	0003_logentry_add_action_flag_choices	2019-12-24 15:22:08.720222+00
6	contenttypes	0002_remove_content_type_name	2019-12-24 15:22:08.751731+00
7	auth	0002_alter_permission_name_max_length	2019-12-24 15:22:08.768121+00
8	auth	0003_alter_user_email_max_length	2019-12-24 15:22:08.79226+00
9	auth	0004_alter_user_username_opts	2019-12-24 15:22:08.815643+00
10	auth	0005_alter_user_last_login_null	2019-12-24 15:22:08.841213+00
11	auth	0006_require_contenttypes_0002	2019-12-24 15:22:08.853687+00
12	auth	0007_alter_validators_add_error_messages	2019-12-24 15:22:08.877473+00
13	auth	0008_alter_user_username_max_length	2019-12-24 15:22:08.926393+00
14	auth	0009_alter_user_last_name_max_length	2019-12-24 15:22:08.951436+00
15	auth	0010_alter_group_name_max_length	2019-12-24 15:22:08.974975+00
16	auth	0011_update_proxy_permissions	2019-12-24 15:22:08.999697+00
17	sessions	0001_initial	2019-12-24 15:22:09.061202+00
18	youtube	0001_initial	2019-12-24 21:24:31.189198+00
19	youtube	0002_auto_20191225_1158	2019-12-25 10:03:48.914513+00
20	youtube	0003_auto_20191225_1256	2019-12-25 10:56:39.706866+00
21	youtube	0004_auto_20191225_1304	2019-12-25 11:04:41.491281+00
22	youtube	0005_auto_20191225_1308	2019-12-25 11:08:09.656259+00
23	youtube	0006_auto_20191225_1037	2019-12-25 12:39:05.510226+00
24	youtube	0007_auto_20191225_1108	2019-12-25 13:08:14.527032+00
25	youtube	0008_auto_20191225_1122	2019-12-25 13:23:10.568317+00
26	youtube	0009_auto_20191225_1129	2019-12-25 13:29:54.267902+00
27	youtube	0010_auto_20191225_1313	2019-12-25 15:13:20.309577+00
28	youtube	0011_like	2019-12-25 15:36:43.640707+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: mikola-s
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
ba01wunji82rly9vjb52hyomvi7ygnb5	NTNkYTlkOGM1ODNhMGZmNDZhZjc4YjZkZjg2NTM1NmNlNjI0MWM2ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYzY4N2JmNjYyNTI5NGRkZTQ3YjgyMjg4YmI0NWIxZTcyODczZWM1In0=	2020-01-07 15:28:29.795199+00
\.


--
-- Data for Name: youtube_channel; Type: TABLE DATA; Schema: public; Owner: mikola-s
--

COPY public.youtube_channel (id, title, owner_id) FROM stdin;
1	irina channell	1
2	maxim channell	3
\.


--
-- Data for Name: youtube_gender; Type: TABLE DATA; Schema: public; Owner: mikola-s
--

COPY public.youtube_gender (id, gender) FROM stdin;
1	male
2	female
3	other
\.


--
-- Data for Name: youtube_like; Type: TABLE DATA; Schema: public; Owner: mikola-s
--

COPY public.youtube_like (id, movie_id, user_id) FROM stdin;
\.


--
-- Data for Name: youtube_movie; Type: TABLE DATA; Schema: public; Owner: mikola-s
--

COPY public.youtube_movie (id, file, post_time, title, channel_id, screen_shot) FROM stdin;
3		2019-12-25 15:14:14.542486+00	111	1	
\.


--
-- Data for Name: youtube_status; Type: TABLE DATA; Schema: public; Owner: mikola-s
--

COPY public.youtube_status (id, status) FROM stdin;
1	user
2	premium
\.


--
-- Data for Name: youtube_user; Type: TABLE DATA; Schema: public; Owner: mikola-s
--

COPY public.youtube_user (id, email, gender_id, login, password, register_time, status_id, birth_date, first_name, last_name) FROM stdin;
3	maxim@test.test	\N	maxim	1234	2019-12-25 11:49:39.266677+00	\N	\N	\N	\N
1	test@test.test	1	irina	1234	2019-12-25 11:08:28.635308+00	1	\N	irina	irina
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mikola-s
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mikola-s
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mikola-s
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mikola-s
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mikola-s
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mikola-s
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mikola-s
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 20, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mikola-s
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mikola-s
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 28, true);


--
-- Name: youtube_channel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mikola-s
--

SELECT pg_catalog.setval('public.youtube_channel_id_seq', 2, true);


--
-- Name: youtube_gender_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mikola-s
--

SELECT pg_catalog.setval('public.youtube_gender_id_seq', 3, true);


--
-- Name: youtube_like_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mikola-s
--

SELECT pg_catalog.setval('public.youtube_like_id_seq', 1, false);


--
-- Name: youtube_movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mikola-s
--

SELECT pg_catalog.setval('public.youtube_movie_id_seq', 3, true);


--
-- Name: youtube_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mikola-s
--

SELECT pg_catalog.setval('public.youtube_status_id_seq', 2, true);


--
-- Name: youtube_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mikola-s
--

SELECT pg_catalog.setval('public.youtube_user_id_seq', 3, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: youtube_channel youtube_channel_pkey; Type: CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.youtube_channel
    ADD CONSTRAINT youtube_channel_pkey PRIMARY KEY (id);


--
-- Name: youtube_gender youtube_gender_pkey; Type: CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.youtube_gender
    ADD CONSTRAINT youtube_gender_pkey PRIMARY KEY (id);


--
-- Name: youtube_like youtube_like_movie_id_user_id_184db781_uniq; Type: CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.youtube_like
    ADD CONSTRAINT youtube_like_movie_id_user_id_184db781_uniq UNIQUE (movie_id, user_id);


--
-- Name: youtube_like youtube_like_pkey; Type: CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.youtube_like
    ADD CONSTRAINT youtube_like_pkey PRIMARY KEY (id);


--
-- Name: youtube_movie youtube_movie_pkey; Type: CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.youtube_movie
    ADD CONSTRAINT youtube_movie_pkey PRIMARY KEY (id);


--
-- Name: youtube_status youtube_status_pkey; Type: CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.youtube_status
    ADD CONSTRAINT youtube_status_pkey PRIMARY KEY (id);


--
-- Name: youtube_user youtube_user_email_key; Type: CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.youtube_user
    ADD CONSTRAINT youtube_user_email_key UNIQUE (email);


--
-- Name: youtube_user youtube_user_login_key; Type: CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.youtube_user
    ADD CONSTRAINT youtube_user_login_key UNIQUE (login);


--
-- Name: youtube_user youtube_user_pkey; Type: CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.youtube_user
    ADD CONSTRAINT youtube_user_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: mikola-s
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: mikola-s
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: mikola-s
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: mikola-s
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: mikola-s
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: mikola-s
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: mikola-s
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: mikola-s
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: mikola-s
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: mikola-s
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: mikola-s
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: mikola-s
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: mikola-s
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: youtube_channel_owner_id_3db44c53; Type: INDEX; Schema: public; Owner: mikola-s
--

CREATE INDEX youtube_channel_owner_id_3db44c53 ON public.youtube_channel USING btree (owner_id);


--
-- Name: youtube_like_movie_id_e69446ad; Type: INDEX; Schema: public; Owner: mikola-s
--

CREATE INDEX youtube_like_movie_id_e69446ad ON public.youtube_like USING btree (movie_id);


--
-- Name: youtube_like_user_id_67234ecd; Type: INDEX; Schema: public; Owner: mikola-s
--

CREATE INDEX youtube_like_user_id_67234ecd ON public.youtube_like USING btree (user_id);


--
-- Name: youtube_movie_channel_id_1e4f2e34; Type: INDEX; Schema: public; Owner: mikola-s
--

CREATE INDEX youtube_movie_channel_id_1e4f2e34 ON public.youtube_movie USING btree (channel_id);


--
-- Name: youtube_user_email_a453a998_like; Type: INDEX; Schema: public; Owner: mikola-s
--

CREATE INDEX youtube_user_email_a453a998_like ON public.youtube_user USING btree (email varchar_pattern_ops);


--
-- Name: youtube_user_gender_id_50e94a28; Type: INDEX; Schema: public; Owner: mikola-s
--

CREATE INDEX youtube_user_gender_id_50e94a28 ON public.youtube_user USING btree (gender_id);


--
-- Name: youtube_user_login_15ea7cc0_like; Type: INDEX; Schema: public; Owner: mikola-s
--

CREATE INDEX youtube_user_login_15ea7cc0_like ON public.youtube_user USING btree (login varchar_pattern_ops);


--
-- Name: youtube_user_status_id_66a464fa; Type: INDEX; Schema: public; Owner: mikola-s
--

CREATE INDEX youtube_user_status_id_66a464fa ON public.youtube_user USING btree (status_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: youtube_channel youtube_channel_owner_id_3db44c53_fk_youtube_user_id; Type: FK CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.youtube_channel
    ADD CONSTRAINT youtube_channel_owner_id_3db44c53_fk_youtube_user_id FOREIGN KEY (owner_id) REFERENCES public.youtube_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: youtube_like youtube_like_movie_id_e69446ad_fk_youtube_movie_id; Type: FK CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.youtube_like
    ADD CONSTRAINT youtube_like_movie_id_e69446ad_fk_youtube_movie_id FOREIGN KEY (movie_id) REFERENCES public.youtube_movie(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: youtube_like youtube_like_user_id_67234ecd_fk_youtube_user_id; Type: FK CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.youtube_like
    ADD CONSTRAINT youtube_like_user_id_67234ecd_fk_youtube_user_id FOREIGN KEY (user_id) REFERENCES public.youtube_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: youtube_movie youtube_movie_channel_id_1e4f2e34_fk_youtube_channel_id; Type: FK CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.youtube_movie
    ADD CONSTRAINT youtube_movie_channel_id_1e4f2e34_fk_youtube_channel_id FOREIGN KEY (channel_id) REFERENCES public.youtube_channel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: youtube_user youtube_user_gender_id_50e94a28_fk_youtube_gender_id; Type: FK CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.youtube_user
    ADD CONSTRAINT youtube_user_gender_id_50e94a28_fk_youtube_gender_id FOREIGN KEY (gender_id) REFERENCES public.youtube_gender(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: youtube_user youtube_user_status_id_66a464fa_fk_youtube_status_id; Type: FK CONSTRAINT; Schema: public; Owner: mikola-s
--

ALTER TABLE ONLY public.youtube_user
    ADD CONSTRAINT youtube_user_status_id_66a464fa_fk_youtube_status_id FOREIGN KEY (status_id) REFERENCES public.youtube_status(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

