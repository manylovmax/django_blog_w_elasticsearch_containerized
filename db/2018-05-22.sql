--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.12
-- Dumped by pg_dump version 9.5.12

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: bloguser
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO bloguser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: bloguser
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO bloguser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bloguser
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: bloguser
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO bloguser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: bloguser
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO bloguser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bloguser
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: bloguser
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO bloguser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: bloguser
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO bloguser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bloguser
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: bloguser
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO bloguser;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: bloguser
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO bloguser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: bloguser
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO bloguser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bloguser
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: bloguser
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO bloguser;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bloguser
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: bloguser
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO bloguser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: bloguser
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO bloguser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bloguser
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: bloguser
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


ALTER TABLE public.django_admin_log OWNER TO bloguser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: bloguser
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO bloguser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bloguser
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: bloguser
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO bloguser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: bloguser
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO bloguser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bloguser
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: bloguser
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO bloguser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: bloguser
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO bloguser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bloguser
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: bloguser
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO bloguser;

--
-- Name: post_post; Type: TABLE; Schema: public; Owner: bloguser
--

CREATE TABLE public.post_post (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    body text NOT NULL,
    markdown text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    published_at timestamp with time zone NOT NULL,
    status character varying(10) NOT NULL,
    excerpt text NOT NULL,
    minutes_to_read integer NOT NULL
);


ALTER TABLE public.post_post OWNER TO bloguser;

--
-- Name: post_post_id_seq; Type: SEQUENCE; Schema: public; Owner: bloguser
--

CREATE SEQUENCE public.post_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_post_id_seq OWNER TO bloguser;

--
-- Name: post_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bloguser
--

ALTER SEQUENCE public.post_post_id_seq OWNED BY public.post_post.id;


--
-- Name: post_viewcount; Type: TABLE; Schema: public; Owner: bloguser
--

CREATE TABLE public.post_viewcount (
    id integer NOT NULL,
    ip_address inet NOT NULL,
    first_visit_date timestamp with time zone NOT NULL,
    post_id integer NOT NULL
);


ALTER TABLE public.post_viewcount OWNER TO bloguser;

--
-- Name: post_viewcount_id_seq; Type: SEQUENCE; Schema: public; Owner: bloguser
--

CREATE SEQUENCE public.post_viewcount_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_viewcount_id_seq OWNER TO bloguser;

--
-- Name: post_viewcount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bloguser
--

ALTER SEQUENCE public.post_viewcount_id_seq OWNED BY public.post_viewcount.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.post_post ALTER COLUMN id SET DEFAULT nextval('public.post_post_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.post_viewcount ALTER COLUMN id SET DEFAULT nextval('public.post_viewcount_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: bloguser
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bloguser
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: bloguser
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bloguser
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: bloguser
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add Пост	1	add_post
2	Can change Пост	1	change_post
3	Can delete Пост	1	delete_post
4	Can add view count	2	add_viewcount
5	Can change view count	2	change_viewcount
6	Can delete view count	2	delete_viewcount
7	Can add log entry	3	add_logentry
8	Can change log entry	3	change_logentry
9	Can delete log entry	3	delete_logentry
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add group	5	add_group
14	Can change group	5	change_group
15	Can delete group	5	delete_group
16	Can add permission	6	add_permission
17	Can change permission	6	change_permission
18	Can delete permission	6	delete_permission
19	Can add content type	7	add_contenttype
20	Can change content type	7	change_contenttype
21	Can delete content type	7	delete_contenttype
22	Can add session	8	add_session
23	Can change session	8	change_session
24	Can delete session	8	delete_session
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bloguser
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 24, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: bloguser
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$36000$ZvKQIIJRkGd1$IBkE4VMiCnmy3W1H+uokx1oHZde8OTxejfrPjYgH3i0=	2017-12-29 23:27:52.767988+00	t	maksim				t	t	2017-09-11 18:00:24.938137+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: bloguser
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bloguser
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bloguser
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: bloguser
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bloguser
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: bloguser
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2017-09-12 13:17:21.069844+00	1	How to launch and protect your server on ubuntu 16.04 SSH with GeoIp, Fail2Ban with email notifications and monitor your system	1	[{"added": {}}]	1	1
2	2017-09-12 20:11:03.54014+00	1	How to launch and protect your server on ubuntu 16.04 SSH with GeoIp, Fail2Ban with email notifications	2	[{"changed": {"fields": ["title", "excerpt", "body", "markdown"]}}]	1	1
3	2017-09-12 20:12:52.359386+00	1	How to launch and protect your server on ubuntu 16.04 SSH with GeoIp, Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
4	2017-09-12 20:24:02.747129+00	1	How to launch and protect your server on ubuntu 16.04 SSH with GeoIp, Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
5	2017-09-12 20:44:09.239551+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["title", "slug", "excerpt", "body", "markdown", "minutes_to_read"]}}]	1	1
6	2017-09-12 20:47:07.925288+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
7	2017-09-12 23:07:20.4877+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
8	2017-09-12 23:10:07.174642+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
9	2017-09-12 23:27:57.606817+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
10	2017-09-12 23:30:53.898492+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body"]}}]	1	1
11	2017-09-13 00:02:55.11382+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
12	2017-09-13 00:04:07.285284+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
13	2017-09-13 14:25:27.25784+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
14	2017-09-13 14:27:21.778821+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
15	2017-09-13 14:31:25.400983+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
16	2017-09-13 14:33:04.61394+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
17	2017-09-13 14:35:26.972354+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
18	2017-09-13 14:36:39.458706+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
19	2017-09-13 14:39:17.295717+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
20	2017-09-13 14:49:57.502016+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
21	2017-09-13 14:50:39.738583+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
22	2017-09-13 15:08:00.278373+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
23	2017-09-13 15:08:35.911148+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
24	2017-09-13 15:11:59.498253+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
25	2017-09-13 15:38:31.209231+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
26	2017-09-13 15:40:01.873288+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
27	2017-09-13 15:41:47.786974+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
28	2017-09-13 15:42:15.638865+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
29	2017-09-13 15:45:56.421533+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
30	2017-09-13 15:46:28.195283+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
31	2017-09-13 16:05:40.80444+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
32	2017-09-13 16:07:14.936793+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
33	2017-09-13 17:00:43.262899+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "minutes_to_read"]}}]	1	1
34	2017-09-13 17:01:03.541856+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "minutes_to_read"]}}]	1	1
35	2017-09-13 21:38:51.709369+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
36	2017-09-13 21:40:27.593095+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
37	2017-09-13 21:49:20.351784+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
38	2017-09-13 21:51:21.15757+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
39	2017-09-13 21:52:11.636538+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
40	2017-09-13 21:56:41.91952+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
41	2017-09-13 21:58:05.810004+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
42	2017-09-13 21:59:33.071219+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "minutes_to_read"]}}]	1	1
43	2017-09-13 22:00:23.279493+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
44	2017-09-13 22:16:39.784478+00	1	How to launch and protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["excerpt", "body"]}}]	1	1
45	2017-09-14 12:21:22.430392+00	1	How to protect your server on Ubuntu 16.04 with GeoIp and Fail2Ban with email notifications	2	[{"changed": {"fields": ["title", "slug", "body"]}}]	1	1
46	2017-09-15 22:37:24.372744+00	1	How to protect your server on Ubuntu 16.04 with Fail2Ban with email alerts and GeoIP	2	[{"changed": {"fields": ["title", "slug", "body"]}}]	1	1
47	2017-09-15 22:38:08.739845+00	1	How to protect your server on Ubuntu 16.04 with Fail2Ban with email alerts and GeoIP	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
48	2017-09-16 16:51:49.525269+00	1	How to protect your server on Ubuntu 16.04 with Fail2Ban with email alerts and GeoIP	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
49	2017-09-16 16:53:20.08442+00	1	How to protect your server on Ubuntu 16.04 with Fail2Ban with email alerts and GeoIP filter	2	[{"changed": {"fields": ["title", "slug", "body"]}}]	1	1
50	2017-10-30 15:25:14.926446+00	2	How to install and setup nginx server, increase page speed, set free ssl certificate	1	[{"added": {}}]	1	1
51	2017-10-30 15:26:12.929084+00	2	How to install and setup nginx server, increase page speed, set free ssl certificate [unfinished]	2	[{"changed": {"fields": ["title", "body"]}}]	1	1
52	2017-10-31 07:16:03.913222+00	2	How to install and setup nginx server, increase page speed, set free ssl certificate [unfinished]	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
53	2017-11-04 12:19:15.101755+00	1	How to protect your server on Ubuntu 16.04 with Fail2Ban with email alerts and GeoIP filter	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
54	2017-11-30 00:55:45.13141+00	2	How to install and setup nginx server, increase page speed, set free ssl certificate [unfinished]	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
55	2017-12-08 16:09:59.190027+00	3	How to setup celery with django using redis as a message broker	1	[{"added": {}}]	1	1
56	2017-12-08 16:13:39.172731+00	3	How to setup celery with django using redis as a message broker	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
57	2017-12-08 22:00:41.058111+00	3	How to setup celery with django using redis as a message broker	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
58	2017-12-08 22:01:21.586885+00	3	How to setup celery with django using redis as a message broker	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
59	2017-12-09 07:14:41.863718+00	3	How to setup celery with django using redis as a message broker	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
60	2017-12-29 21:50:12.851011+00	4	How to use Google Authenticator to make ssh less accessible	1	[{"added": {}}]	1	1
61	2017-12-29 21:52:05.597624+00	4	How to use Google Authenticator to make ssh less accessible	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
62	2017-12-29 21:53:01.731933+00	4	How to use Google Authenticator to make ssh less accessible	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
63	2017-12-29 21:57:15.436549+00	4	How to use Google Authenticator to make ssh less accessible	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
64	2017-12-29 21:59:52.098627+00	4	How to use Google Authenticator to make ssh less accessible	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
65	2017-12-29 23:30:53.026347+00	4	How to use Google Authenticator to make ssh less accessible	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
66	2017-12-29 23:35:12.274674+00	4	How to use Google Authenticator to make ssh less accessible	2	[{"changed": {"fields": ["body", "markdown"]}}]	1	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bloguser
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 66, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: bloguser
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	post	post
2	post	viewcount
3	admin	logentry
4	auth	user
5	auth	group
6	auth	permission
7	contenttypes	contenttype
8	sessions	session
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bloguser
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: bloguser
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-09-11 17:59:28.729007+00
2	auth	0001_initial	2017-09-11 17:59:28.80933+00
3	admin	0001_initial	2017-09-11 17:59:28.836525+00
4	admin	0002_logentry_remove_auto_add	2017-09-11 17:59:28.852709+00
5	contenttypes	0002_remove_content_type_name	2017-09-11 17:59:28.881749+00
6	auth	0002_alter_permission_name_max_length	2017-09-11 17:59:28.909321+00
7	auth	0003_alter_user_email_max_length	2017-09-11 17:59:28.921036+00
8	auth	0004_alter_user_username_opts	2017-09-11 17:59:28.931852+00
9	auth	0005_alter_user_last_login_null	2017-09-11 17:59:28.952597+00
10	auth	0006_require_contenttypes_0002	2017-09-11 17:59:28.954288+00
11	auth	0007_alter_validators_add_error_messages	2017-09-11 17:59:28.964332+00
12	auth	0008_alter_user_username_max_length	2017-09-11 17:59:28.979677+00
13	post	0001_initial	2017-09-11 17:59:29.003008+00
14	post	0002_auto_20170911_1534	2017-09-11 17:59:29.031839+00
15	sessions	0001_initial	2017-09-11 17:59:29.041285+00
16	post	0003_auto_20170914_0112	2017-09-13 22:13:43.826752+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bloguser
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 16, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: bloguser
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
tiqifs8k70fvdqjcdp4r3rxkiez16bfm	NTIwNzBiODNmZDBkODVkNmRhNDdhOWUxZWFlOWFlNWUyMzZkNjJlZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk0OWU5NWMzYzlkNzlmZThmODgzN2VjM2NjNmVjNDNkYmU0MTMyOSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-26 13:15:43.83886+00
b50ezn1h4s5kp3kzb70qsc4dbzppomz9	NTIwNzBiODNmZDBkODVkNmRhNDdhOWUxZWFlOWFlNWUyMzZkNjJlZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk0OWU5NWMzYzlkNzlmZThmODgzN2VjM2NjNmVjNDNkYmU0MTMyOSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-26 20:10:19.671173+00
h20z0p25fcc1bl5w9d8urhl326fquu4q	M2RkMTMwMTQzZGM4YTc0NWYwMmQ5NWNmNTU4MTJkNTBkMGNkNmI2Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjE5NDllOTVjM2M5ZDc5ZmU4Zjg4MzdlYzNjYzZlYzQzZGJlNDEzMjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-30 16:51:19.504457+00
srpcwdi8kzlubolf4vu3bdgofradahwd	YzVhYzQyMDkwMTM4ZTI5MTIyMmJjYzQxYjQwNzQyNTU3Y2I4MmE3NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxOTQ5ZTk1YzNjOWQ3OWZlOGY4ODM3ZWMzY2M2ZWM0M2RiZTQxMzI5In0=	2017-11-30 06:16:20.014301+00
n4d1suuun8fl43pfssiyxdltohlzj0kd	NTIwNzBiODNmZDBkODVkNmRhNDdhOWUxZWFlOWFlNWUyMzZkNjJlZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk0OWU5NWMzYzlkNzlmZThmODgzN2VjM2NjNmVjNDNkYmU0MTMyOSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-12-22 15:58:42.683868+00
do0q0x9iaerv0vghgphx3jz1gvzrtmwp	NTIwNzBiODNmZDBkODVkNmRhNDdhOWUxZWFlOWFlNWUyMzZkNjJlZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk0OWU5NWMzYzlkNzlmZThmODgzN2VjM2NjNmVjNDNkYmU0MTMyOSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-12-22 21:59:45.039972+00
\.


--
-- Data for Name: post_post; Type: TABLE DATA; Schema: public; Owner: bloguser
--

COPY public.post_post (id, title, slug, body, markdown, created_at, updated_at, published_at, status, excerpt, minutes_to_read) FROM stdin;
4	How to use Google Authenticator to make ssh less accessible	how-use-google-authenticator-make-ssh-less-accessible	<h3>Introduction</h3>\n<p>OATH-TOTP (Open Authentication Time-Based One-Time Password) is an open protocol that generates a one-time use password, commonly a 6 digit number that is recycled every 30 seconds.</p>\n<p>Google Authenticator is a software token that implements two-step verification services using the Time-based One-time Password Algorithm (TOTP) and HMAC-based One-time Password Algorithm (HOTP), for authenticating users of mobile applications by Google. The service implements algorithms specified in RFC 6238 and RFC 4226. </p>\n<p>Authenticator provides a six- to eight-digit one-time password which users must provide in addition to their username and password to log into Google services or other sites. The Authenticator can also generate codes for third-party applications, such as password managers or file hosting services. Previous versions of the software were open-sourced but subsequent releases are proprietary.</p>\n<h3>Prerequisites</h3>\n<p>Completion of my <a href="https://maksimmanylow.com/post/how-protect-your-server-ubuntu-1604-fail2ban-email-alerts-geoip-filter.html">first tutorial</a> and a smartphone or tablet with an OATH-TOTP app installed, like Google Authenticator (iOS, Android) is enough.</p>\n<h3>Contents</h3>\n<p>This tutorial includes these parts:</p>\n<ol>\n<li>Installing Google's PAM</li>\n<li>Configuring OpenSSH</li>\n<li>Making SSH Aware of MFA</li>\n<li>Adding a Third Factor (Optional)</li>\n</ol>\n<h2>1. Installing Google's PAM</h2>\n<p>In this step, we'll install and configure Google's PAM.</p>\n<p>PAM, which stands for Pluggable Authentication Module, is an authentication infrastructure used on Linux systems to authenticate a user. Because Google made an OATH-TOTP app, they also made a PAM that generates TOTPs and is fully compatible with any OATH-TOTP app, like Google Authenticator or Authy.</p>\n<p>First, update Ubuntu's repository cache.</p>\n<pre class="command-line language-bash" data-user="user" data-host="server"><code class=" language-bash">\nsudo apt-get update\n</code></pre>\n\n<p>Next, install the PAM.</p>\n<pre class="command-line language-bash" data-user="user" data-host="server"><code class=" language-bash">\nsudo apt-get install libpam-google-authenticator\n</code></pre>\n\n<p>Then download the app (i.e., Google Autheticator) on your mobile device (ios or android) and run the following command.</p>\n<pre class="command-line language-bash" data-user="user" data-host="server"><code class=" language-bash">\ngoogle-authenticator\n</code></pre>\n\n<p>You should see a QR-code while completing the initialization process. In your app add the code tapping on the cross sign, scanning the code. Now you must see new record in the app with token which circles every 30 seconds.</p>\n<h2>2. Configuring OpenSSH</h2>\n<p>To enable authorization with TOTP (Time-Based One-Time Password) <code>sshd</code> service must be configured accordingly. Edit the configuration file with the following command.</p>\n<pre class="command-line language-bash" data-user="user" data-host="server"><code class=" language-bash">\nsudo vim /etc/pam.d/sshd\n</code></pre>\n\n<p>Add the following line to the bottom of the file.</p>\n<pre><code class="language-bash">. . .\n# Standard Un*x password updating.\n@include common-password\nauth required pam_google_authenticator.so nullok\n</code></pre>\n\n<p>The <code>nullok</code> word at the end of the last line tells the PAM that this authentication method is <em>optional</em>. This allows users <em>without</em> a OATH-TOTP token to still <em>log in</em> using their <em>SSH key</em>. Once all users have an OATH-TOTP token, you can remove nullok from this line to make MFA mandatory.</p>\n<p>Save and close the file.</p>\n<p>Next, we'll configure SSH to support this kind of authentication. Open the SSH configuration file for editing.</p>\n<pre class="command-line language-bash" data-user="user" data-host="server"><code class=" language-bash">\nsudo vim /etc/ssh/sshd_config\n</code></pre>\n\n<p>Look for <code>ChallengeResponseAuthentication</code> and set its value to <code>yes</code>.</p>\n<pre><code class="language-bash">. . .\n# Change to yes to enable challenge-response passwords (beware issues with\n# some PAM modules and threads)\nChallengeResponseAuthentication yes\n. . .\n</code></pre>\n\n<p>Restart <code>sshd</code> service</p>\n<pre class="command-line language-bash" data-user="user" data-host="server"><code class=" language-bash">\nsudo systemctl restart sshd.service\n</code></pre>\n\n<h2>3. Making SSH Aware of MFA</h2>\n<p>Reopen the sshd configuration file.</p>\n<pre class="command-line language-bash" data-user="user" data-host="server"><code class=" language-bash">\nsudo vim /etc/ssh/sshd_config\n</code></pre>\n\n<p>Add the following line at the bottom of the file. This tells SSH which authentication methods are required. This line tells SSH we need a SSH key and either a password or a verification code (or all three).</p>\n<pre><code class="language-bash">. . .\nUsePAM yes\nAuthenticationMethods publickey,password publickey,keyboard-interactive\n</code></pre>\n\n<p>Save and close the file, then restart SSH.</p>\n<pre class="command-line language-bash" data-user="user" data-host="server"><code class=" language-bash">\nsudo systemctl restart sshd.service\n</code></pre>\n\n<h2>4. Adding a Third Factor (Optional)</h2>\n<p>In Step 3, we listed the approved types of authentication in the sshd_config file:</p>\n<ol>\n<li>publickey (SSH key)</li>\n<li>password publickey (password)</li>\n<li>keyboard-interactive (verification code)</li>\n</ol>\n<p>Although we listed three different factors, with the options we've chosen so far, they only allow for an SSH key and the verification code. If you'd like to have all three factors (SSH key, password, and verification code), one quick change will enable all three.</p>\n<p>Open the PAM sshd configuration file.</p>\n<pre class="command-line language-bash" data-user="user" data-host="server"><code class=" language-bash">\nsudo vim /etc/pam.d/sshd\n</code></pre>\n\n<p>Locate the line you commented out previously, <code>#@include common-auth</code>, and uncomment the line by removing the # character. Save and close the file. Now once again, restart SSH.</p>\n<pre class="command-line language-bash" data-user="user" data-host="server"><code class=" language-bash">\nsudo systemctl restart sshd.service\n</code></pre>\n\n<p>By enabling the option <code>@include common-auth</code>, PAM will now prompt for a password in addition the checking for an SSH key and asking for a verification code, which we had working previously. Now we can use something we know (password) and two different types of things we have (SSH key and verification code) over two different channels.</p>\n<h2>Sources:</h2>\n<ol>\n<li><a href="https://www.digitalocean.com/community/tutorials/how-to-set-up-multi-factor-authentication-for-ssh-on-ubuntu-16-04">How To Set Up Multi-Factor Authentication for SSH on Ubuntu 16.04</a></li>\n</ol>	### Introduction\r\n\r\nOATH-TOTP (Open Authentication Time-Based One-Time Password) is an open protocol that generates a one-time use password, commonly a 6 digit number that is recycled every 30 seconds.\r\n\r\nGoogle Authenticator is a software token that implements two-step verification services using the Time-based One-time Password Algorithm (TOTP) and HMAC-based One-time Password Algorithm (HOTP), for authenticating users of mobile applications by Google. The service implements algorithms specified in RFC 6238 and RFC 4226. \r\n\r\nAuthenticator provides a six- to eight-digit one-time password which users must provide in addition to their username and password to log into Google services or other sites. The Authenticator can also generate codes for third-party applications, such as password managers or file hosting services. Previous versions of the software were open-sourced but subsequent releases are proprietary.\r\n\r\n### Prerequisites\r\n\r\nCompletion of my [first tutorial](https://maksimmanylow.com/post/how-protect-your-server-ubuntu-1604-fail2ban-email-alerts-geoip-filter.html) and a smartphone or tablet with an OATH-TOTP app installed, like Google Authenticator (iOS, Android) is enough.\r\n\r\n### Contents\r\n\r\nThis tutorial includes these parts:\r\n\r\n1. Installing Google's PAM\r\n2. Configuring OpenSSH\r\n3. Making SSH Aware of MFA\r\n4. Adding a Third Factor (Optional)\r\n\r\n## 1. Installing Google's PAM\r\n\r\nIn this step, we'll install and configure Google's PAM.\r\n\r\nPAM, which stands for Pluggable Authentication Module, is an authentication infrastructure used on Linux systems to authenticate a user. Because Google made an OATH-TOTP app, they also made a PAM that generates TOTPs and is fully compatible with any OATH-TOTP app, like Google Authenticator or Authy.\r\n\r\nFirst, update Ubuntu's repository cache.\r\n\r\n<pre class="command-line language-bash" data-user="user" data-host="server"><code class=" language-bash">\r\nsudo apt-get update\r\n</code></pre>\r\n\r\n\r\nNext, install the PAM.\r\n\r\n<pre class="command-line language-bash" data-user="user" data-host="server"><code class=" language-bash">\r\nsudo apt-get install libpam-google-authenticator\r\n</code></pre>\r\n\r\nThen download the app (i.e., Google Autheticator) on your mobile device (ios or android) and run the following command.\r\n\r\n<pre class="command-line language-bash" data-user="user" data-host="server"><code class=" language-bash">\r\ngoogle-authenticator\r\n</code></pre>\r\n\r\nYou should see a QR-code while completing the initialization process. In your app add the code tapping on the cross sign, scanning the code. Now you must see new record in the app with token which circles every 30 seconds.\r\n\r\n\r\n## 2. Configuring OpenSSH\r\n\r\nTo enable authorization with TOTP (Time-Based One-Time Password) ```sshd``` service must be configured accordingly. Edit the configuration file with the following command.\r\n\r\n<pre class="command-line language-bash" data-user="user" data-host="server"><code class=" language-bash">\r\nsudo vim /etc/pam.d/sshd\r\n</code></pre>\r\n\r\nAdd the following line to the bottom of the file.\r\n\r\n```language-bash\r\n. . .\r\n# Standard Un*x password updating.\r\n@include common-password\r\nauth required pam_google_authenticator.so nullok\r\n```\r\n\r\nThe ```nullok``` word at the end of the last line tells the PAM that this authentication method is *optional*. This allows users *without* a OATH-TOTP token to still *log in* using their *SSH key*. Once all users have an OATH-TOTP token, you can remove nullok from this line to make MFA mandatory.\r\n\r\nSave and close the file.\r\n\r\nNext, we'll configure SSH to support this kind of authentication. Open the SSH configuration file for editing.\r\n\r\n<pre class="command-line language-bash" data-user="user" data-host="server"><code class=" language-bash">\r\nsudo vim /etc/ssh/sshd_config\r\n</code></pre>\r\n\r\nLook for ```ChallengeResponseAuthentication``` and set its value to ```yes```.\r\n\r\n```language-bash\r\n. . .\r\n# Change to yes to enable challenge-response passwords (beware issues with\r\n# some PAM modules and threads)\r\nChallengeResponseAuthentication yes\r\n. . .\r\n```\r\n\r\nRestart ```sshd``` service\r\n\r\n<pre class="command-line language-bash" data-user="user" data-host="server"><code class=" language-bash">\r\nsudo systemctl restart sshd.service\r\n</code></pre>\r\n\r\n## 3. Making SSH Aware of MFA\r\n\r\nReopen the sshd configuration file.\r\n\r\n<pre class="command-line language-bash" data-user="user" data-host="server"><code class=" language-bash">\r\nsudo vim /etc/ssh/sshd_config\r\n</code></pre>\r\n\r\nAdd the following line at the bottom of the file. This tells SSH which authentication methods are required. This line tells SSH we need a SSH key and either a password or a verification code (or all three).\r\n\r\n```language-bash\r\n. . .\r\nUsePAM yes\r\nAuthenticationMethods publickey,password publickey,keyboard-interactive\r\n```\r\n\r\nSave and close the file, then restart SSH.\r\n\r\n<pre class="command-line language-bash" data-user="user" data-host="server"><code class=" language-bash">\r\nsudo systemctl restart sshd.service\r\n</code></pre>\r\n\r\n## 4. Adding a Third Factor (Optional)\r\n\r\nIn Step 3, we listed the approved types of authentication in the sshd_config file:\r\n\r\n1. publickey (SSH key)\r\n2. password publickey (password)\r\n3. keyboard-interactive (verification code)\r\n\r\nAlthough we listed three different factors, with the options we've chosen so far, they only allow for an SSH key and the verification code. If you'd like to have all three factors (SSH key, password, and verification code), one quick change will enable all three.\r\n\r\nOpen the PAM sshd configuration file.\r\n\r\n<pre class="command-line language-bash" data-user="user" data-host="server"><code class=" language-bash">\r\nsudo vim /etc/pam.d/sshd\r\n</code></pre>\r\n\r\nLocate the line you commented out previously, ```#@include common-auth```, and uncomment the line by removing the # character. Save and close the file. Now once again, restart SSH.\r\n\r\n<pre class="command-line language-bash" data-user="user" data-host="server"><code class=" language-bash">\r\nsudo systemctl restart sshd.service\r\n</code></pre>\r\n\r\n\r\nBy enabling the option ```@include common-auth```, PAM will now prompt for a password in addition the checking for an SSH key and asking for a verification code, which we had working previously. Now we can use something we know (password) and two different types of things we have (SSH key and verification code) over two different channels.\r\n\r\n\r\n## Sources:\r\n\r\n1. [How To Set Up Multi-Factor Authentication for SSH on Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-set-up-multi-factor-authentication-for-ssh-on-ubuntu-16-04)	2017-12-29 21:50:12.84387+00	2017-12-29 23:35:12.272291+00	2017-12-29 20:12:35+00	published	This post tells how to set up Google Autheticator service to add one more step when login via ssh. The step requires to enter time based token (6-digit code) which expires every 30 seconds each time you login to your server remotely (not via hosting panel).	5
1	How to protect your server on Ubuntu 16.04 with Fail2Ban with email alerts and GeoIP filter	how-protect-your-server-ubuntu-1604-fail2ban-email-alerts-geoip-filter	<h3>Introduction</h3>\n<p>This tutorial describes the shortcut to gaining essential security level for your fresh Ubuntu server. The reason why you should do so is that almost every ip address in the world is being bruteforced 24/7 by large botnets and amount of bots and sophistication of attacks are increasing dramatically. Nowadays the cyber security is paramount.</p>\n<h3>Contents</h3>\n<p>This tutorial includes three parts:</p>\n<ol>\n<li>Disabling root login remotely (essential)</li>\n<li>Add cryptographic key authentication (recommended)</li>\n<li>Limit your SSH logins using GeoIP (optional)</li>\n</ol>\n<p>Let’s start with disabling root login remotely. This requires to log in, create a new user which will be used for remote login and configuring ssh service.</p>\n<p><em>Note:</em> If you don’t know how to copy/paste in terminal, use usual commands (<code>CTRL+V, CTRL+C</code> on linux and windows) with <code>SHIFT</code> pressed. Read <a href="https://stackoverflow.com/questions/761807/how-to-copy-and-paste-from-terminal-with-keyboard">this</a> answer on stackoverflow for more information.</p>\n<h2>Disabling root login remotely (essential)</h2>\n<h3>Login to your server</h3>\n<p>This command will help you to login to your server as <code>root</code> user. Replace the <em>server</em> with your server ip address or domain name.</p>\n<pre class="command-line language-bash" data-user="user" data-host="localhost"><code class=" language-bash">\nssh root@server\n</code></pre>\n\n<p>As a result, you now must be connected to the server and logged in as root. You must see something like this:</p>\n<pre><code class="language-bash">Welcome to Ubuntu 16.04.3 LTS (GNU/Linux 4.4.0-042stab120.18 x86_64)\n\n * Documentation:  https://help.ubuntu.com\n * Management:     https://landscape.canonical.com\n * Support:        https://ubuntu.com/advantage\nLast login: Wed Sep 13 03:00:23 2017 from 12.345.67.890\n\n[root@server ~]#\n</code></pre>\n\n<h3>Create a new user</h3>\n<p>Then add a new user to the system which will be used instead of root for login. Replace username in the examples below with a name that you like. After executing the command <code>adduser</code> you will be asked for new user’s password. Enter a strong password and, optionally, fill in any of the additional information if you would like. This is not required and you can just hit <code>ENTER</code> in any field you wish to skip.</p>\n<pre class="command-line language-bash" data-user="root" data-host="server"><code class=" language-bash">\nadduser username\n</code></pre>\n\n<p>Now, we have a new user account with regular account privileges. However, we may sometimes need to do administrative tasks.</p>\n<p>To avoid having to log out of our normal user and log back in as the root account, we can set up what is known as "superuser" or root privileges for our normal account. This will allow our normal user to run commands with administrative privileges by putting the word <code>sudo</code> before each command.</p>\n<pre class="command-line language-bash" data-user="root" data-host="server"><code class=" language-bash">\nusermod -aG sudo username\n</code></pre>\n\n<p>Now your user can run commands with superuser privileges! For more information about how this works, check out <a href="https://www.digitalocean.com/community/tutorials/how-to-edit-the-sudoers-file-on-ubuntu-and-centos">this sudoers tutorial</a>.</p>\n<p>To disable root SSH login, edit <code>/etc/ssh/sshd_config</code> with your favorite text editor. </p>\n<p>The most common terminal text editor amongst developers is Vim. It’s a bit complicated but can save you a lot of time. So I provided a few tips for you who didn’t used it before.</p>\n<p>Run the following command (vi is alias for vim):</p>\n<pre class="command-line language-bash" data-user="root" data-host="server"><code class=" language-bash">\nvi /etc/ssh/sshd_config\n</code></pre>\n\n<p>As you press enter you will see the Vim text editor. What you should know about Vim is that:</p>\n<ol>\n<li>Vim has several modes available. Just keep in mind that there are <strong>command</strong> mode and <strong>other</strong> modes. </li>\n<li>You can use only <strong>command</strong> and <strong>input</strong> modes to do basic text editing.</li>\n<li>By default Vim is in <strong>command</strong> mode. To return to command mode from any press <code>ESC</code>. </li>\n<li>Vim has its commands. Most commands start with colon (<code>:</code> key).</li>\n<li>To exit Vim run <code>:q</code> command.</li>\n<li>To edit a file you should use <strong>input</strong> mode. Press <code>i</code> key to enter the mode from the command mode. </li>\n<li>To write to a file use command <code>:w</code>. </li>\n<li>You can combine commands, i.e., fire <code>:wq</code> and you will save file on exit.</li>\n<li>To search for a string hit <code>/</code> in command mode and then input the string, hit enter.</li>\n</ol>\n<h4>Vim command reference</h4>\n<p>save: <code>:w</code><br />\nsave and exit: <code>:wq</code><br />\nexit: <code>:q</code><br />\nforce: <code>!</code> (example <code>:w!</code>, <code>:q!</code>)<br />\nvertical split: open a document and then type <code>:vsplit /path-to-document/document</code> and this will open the specified document and split the screen so you can see both documents.<br />\ncopy: <code>y</code><br />\ncopy a line: <code>yy</code><br />\npaste: <code>p</code><br />\ncut: <code>d</code><br />\ncut a line: <code>dd</code></p>\n<p><a href="https://www.howtoforge.com/vim-basics">Here</a> is vim tutorial. You can find a lot of helpful video tutorials on youtube.</p>\n<p>Enter the input mode, edit line and save on exit.</p>\n<p>Change this line:</p>\n<pre><code class="language-none">#PermitRootLogin yes\n</code></pre>\n\n<p>Edit to this:</p>\n<pre><code class="language-none">PermitRootLogin no\n</code></pre>\n\n<p><strong>Ensure that you are logged into the box with another shell before restarting sshd to avoid locking yourself out of the server.</strong></p>\n<pre><code class="language-none">[root@server ~]# /etc/init.d/sshd restart\nStopping sshd: [ OK ]\nStarting sshd: [ OK ]\n[root@server ~]#\n</code></pre>\n\n<p>That’s it. Now you can logout using <code>exit</code> command and try to login with new user credentials.</p>\n<p>If you wish your server be more secured, follow the next step of the tutorial.</p>\n<h2>Add cryptographic key authentication (recommended)</h2>\n<p>If you already have a key that you want to use, skip to the Copy the Public Key step.</p>\n<p>If you do not already have an SSH key pair, which consists of a public and private key, you need to generate one. You will need this key to work with such services as <a href="https://bitbucket.org/">bitbucket</a> or <a href="https://github.com">github</a>. </p>\n<h3>Generate key pair</h3>\n<p>Run this command on your local machine to generate the key pair.</p>\n<pre class="command-line language-bash" data-user="user" data-host="localhost"><code class=" language-bash">\nssh-keygen\n</code></pre>\n\n<p>You will be asked few questions after that the key pair will be generated.</p>\n<p><em>Note:</em> you will be asked for a passphrase, which if you provide one will be asked when login to the server. If not, then you won’t have to type the passphrase every time you login.</p>\n<p>This generates a private key, id_rsa, and a public key, id_rsa.pub, in the .ssh directory of the localuser's home directory. Remember that the private key should not be shared with anyone who should not have access to your servers!</p>\n<h3>Copy the public key</h3>\n<h4>Option 1: Use ssh-copy-id</h4>\n<p>If your local machine has the <code>ssh-copy-id</code> script installed, you can use it to install your public key to any user that you have login credentials for.</p>\n<p>Run the <code>ssh-copy-id</code> script by specifying the user and IP address of the server that you want to install the key on, like this:</p>\n<pre class="command-line language-bash" data-user="user" data-host="localhost"><code class=" language-bash">\nssh-copy-id username@server\n</code></pre>\n\n<p>After providing your password at the prompt, your public key will be added to the remote user's <code>.ssh/authorized_keys</code> file. The corresponding private key can now be used to log into the server.</p>\n<h4>Option 2: Manually Install the Key</h4>\n<p>Assuming you generated an SSH key pair using the previous step, use the following command at the terminal of your local machine to print your public key (<code>id_rsa.pub</code>):</p>\n<pre class="command-line language-bash" data-user="user" data-host="localhost"><code class=" language-bash">\ncat ~/.ssh/id_rsa.pub\n</code></pre>\n\n<p>This should print your public SSH key, which should look something like the following:</p>\n<pre><code class="language-none">id_rsa.pub contents\nssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDBGTO0tsVejssuaYR5R3Y/i73SppJAhme1dH7W2c47d4gOqB4izP0+fRLfvbz/tnXFz4iOP/H6eCV05hqUhF+KYRxt9Y8tVMrpDZR2l75o6+xSbUOMu6xN+uVF0T9XzKcxmzTmnV7Na5up3QM3DoSRYX/EP3utr2+zAqpJIfKPLdA74w7g56oYWI9blpnpzxkEd3edVJOivUkpZ4JoenWManvIaSdMTJXMy3MtlQhva+j9CgguyVbUkdzK9KKEuah+pFZvaugtebsU+bllPTB0nlXGIJk98Ie9ZtxuY3nCKneB+KjKiXrAvXUPCI9mWkYS/1rggpFmu3HbXBnWSUdf user@machine.local\n</code></pre>\n\n<p>Select the public key, and copy it to your clipboard.</p>\n<p>To enable the use of SSH key to authenticate as the new remote user, you must add the public key to a special file in the user's home directory.</p>\n<p>On the <strong>server</strong>, as the <strong>root</strong> user, enter the following command to temporarily switch to the new user (substitute your own user name):</p>\n<pre class="command-line language-bash" data-user="root" data-host="server"><code class=" language-bash">\nsu - username\n</code></pre>\n\n<p>Now you will be in your new user's home directory.</p>\n<p>Create a new directory called .ssh and restrict its permissions with the following commands:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nmkdir ~/.ssh\nchmod 700 ~/.ssh\n</code></pre>\n\n<p>Now open a file in <code>.ssh</code> called <code>authorized_keys</code> with a text editor. We will use <code>vim</code> to edit the file:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nvim ~/.ssh/authorized_keys\n</code></pre>\n\n<p>Hit <code>i</code>, insert your public key (which should be in your clipboard) by pasting it into the editor (<code>CTRL+SHIFT+V</code>) and save on exit hitting <code>ESC</code>, then <code>:wq</code>.</p>\n<p>Now restrict the permissions of the authorized_keys file with this command:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nchmod 600 ~/.ssh/authorized_keys\n</code></pre>\n\n<p>Type this command <strong>once</strong> to return to the <code>root</code> user:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nexit\n</code></pre>\n\n<p>Now your public key is installed, and you can use SSH keys to log in as your user.</p>\n<h2>Disable password authentication</h2>\n<p>To disable password authentication on your server, follow these steps.</p>\n<p>As root or your new sudo user, open the SSH daemon configuration:</p>\n<pre class="command-line language-bash" data-user="root" data-host="server"><code class=" language-bash">\nvim /etc/ssh/sshd_config\n</code></pre>\n\n<p>Find the line that specifies PasswordAuthentication, uncomment it by deleting the preceding #, then change its value to "no". It should look like this after you have made the change:</p>\n<pre class="language-none"><code class=" language-none">\nPasswordAuthentication no\n</code></pre>\n\n<p>Here are two other settings that are important for key-only authentication and are set by default. If you haven't modified this file before, you do not need to change these settings:</p>\n<pre class="language-none"><code class=" language-none">\nPubkeyAuthentication yes\nChallengeResponseAuthentication no\n</code></pre>\n\n<p>Type this to reload the SSH daemon:</p>\n<pre class="command-line language-bash" data-user="root" data-host="server"><code class=" language-bash">\nsystemctl reload sshd\n</code></pre>\n\n<p>Password authentication is now disabled. Your server is now only accessible with SSH key authentication.</p>\n<h2>Set up firewall</h2>\n<p>Ubuntu 16.04 servers can use the UFW firewall to make sure only connections to certain services are allowed. We can set up a basic firewall very easily using this application.</p>\n<p>Different applications can register their profiles with UFW upon installation. These profiles allow UFW to manage these applications by name. OpenSSH, the service allowing us to connect to our server now, has a profile registered with UFW.</p>\n<p>You can see this by typing:<br />\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash"><br />\nsudo ufw app list<br />\n</code></pre></p>\n<p>We need to make sure that the firewall allows SSH connections so that we can log back in next time. We can allow these connections by typing:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nsudo ufw allow OpenSSH\n</code></pre>\n\n<p>Afterwards, we can enable the firewall by typing:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nsudo ufw enable\n</code></pre>\n\n<p>Type "y" and press ENTER to proceed. You can see that SSH connections are still allowed by typing:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nsudo ufw status\n</code></pre>\n\n<p>If you install and configure additional services, you will need to adjust the firewall settings to allow acceptable traffic in. You can learn some common UFW operations in <a href="https://www.digitalocean.com/community/tutorials/ufw-essentials-common-firewall-rules-and-commands">this guide</a>.</p>\n<h2>Set up fail2ban</h2>\n<p>A service called fail2ban can mitigate this problem by creating rules that can automatically alter your iptables firewall configuration based on a predefined number of unsuccessful login attempts. This will allow your server to respond to illegitimate access attempts without intervention from you.</p>\n<h3>Install and configure fail2ban</h3>\n<p>Type the following commands to install fail2ban:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nsudo apt-get update\nsudo apt-get install fail2ban\n</code></pre>\n\n<p>The fail2ban service keeps its configuration files in the <code>/etc/fail2ban</code> directory. There is a file with defaults called <code>jail.conf</code>.</p>\n<p>Since this file can be modified by package upgrades, we should not edit this file in-place, but rather copy it so that we can make our changes safely. In order for these two files to operate together successfully, it is best to only include the settings you wish to override in the <code>jail.local</code> file. All default options will be taken from the <code>jail.conf</code> file.</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nawk '{ printf "# "; print; }' /etc/fail2ban/jail.conf | sudo tee /etc/fail2ban/jail.local\n</code></pre>\n\n<p>You will want to evaluate the <code>destemail</code>, <code>sendername</code>, and <code>mta</code> settings if you wish to configure <strong>email alerts</strong>. The <code>destemail</code> parameter sets the email address that should receive ban messages. The <code>sendername</code> sets the value of the "From" field in the email. The <code>mta</code> parameter configures what mail service will be used to send mail. Again, add these to the jail.local file, under the [DEFAULT] header and set to the proper values if you wish to adjust them.</p>\n<p><em>Note:</em> the mail service (<code>mta</code>) must be configured properly to send emails. <a href="https://linuxconfig.org/configuring-gmail-as-sendmail-email-relay">This tutorial</a> can help you configure the <code>sendmail</code> service. <em>It is good practice to configure email alerts for most people do not check <code>/var/log/auth.log</code> file even once a month.</em></p>\n<pre class="language-none"><code class=" language-none">\n[DEFAULT]\n. . .\naction = $(action_)s\n. . .\n</code></pre>\n\n<p>This parameter configures the action that fail2ban takes when it wants to institute a ban. The value action_ is defined in the file shortly before this parameter. The default action is to simply configure the firewall to reject traffic from the offending host until the ban time elapses.</p>\n<p>If you would like to configure email alerts, add or uncomment the action item to the jail.local file and change its value from action_ to action_mw. If you want the email to include the relevant log lines, you can change it to action_mwl. Make sure you have the appropriate mail settings configured if you choose to use mail alerts.</p>\n<p>We're going to configure a auto-banning policy for SSH and Nginx, just as we described above. We want fail2ban to email us when an IP is banned.</p>\n<p>If you don't already have it, you'll need nginx, since we're going to be monitoring its logs, and you'll need sendmail to mail us notifications. We'll also grab iptables-persistent to allow the server to automatically set up our firewall rules at boot. These can be acquired from Ubuntu's default repositories:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nsudo apt-get update\nsudo apt-get install nginx sendmail iptables-persistent\n</code></pre>\n\n<p>Stop the fail2ban service for a moment so that we can establish a base firewall without the rules it adds:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nsudo service fail2ban stop\n</code></pre>\n\n<p>When that is finished, we should implement a default firewall.</p>\n<p>We're going to tell it to allow established connections, traffic generated by the server itself, traffic destined for our SSH and web server ports. We will drop all other traffic. We can set this basic firewall up by typing:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nsudo iptables -A INPUT -i lo -j ACCEPT\nsudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT\nsudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT\nsudo iptables -A INPUT -p tcp -m multiport --dports 80,443 -j ACCEPT\nsudo iptables -A INPUT -j DROP\n</code></pre>\n\n<p>These commands will implement the above policy. We can see our current firewall rules by typing:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nsudo iptables -S\n</code></pre>\n\n<p>You can save the firewalls so that they survive a reboot by typing:<br />\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash"><br />\nsudo dpkg-reconfigure iptables-persistent<br />\n</code></pre></p>\n<p>Afterwards, you can restart fail2ban to implement the wrapping rules:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nsudo service fail2ban start\n</code></pre>\n\n<p>We can see our current firewall rules by typing:<br />\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash"><br />\nsudo iptables -S<br />\n</code></pre></p>\n<p>If you want to read more on how to set up firewall with fail2ban go <a href="https://www.digitalocean.com/community/tutorials/how-to-protect-ssh-with-fail2ban-on-ubuntu-14-04">here</a>.</p>\n<p>The next step is optional.</p>\n<h2>Limit your SSH logins using GeoIP (optional)</h2>\n<p>As i mentioned before, you should take some actions to protect the server (primarily, against botnets, which scan almost all available ips and try to break into the server and take control). Most often you will see incoming <a href="https://www.digitalocean.com/community/questions/is-anyone-else-being-brute-forced-by-chinese-ip-addresses">bruteforce attacks from Chinese bots</a>.</p>\n<h3>Install</h3>\n<p>Install GeoIP using the following coman:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nsudo apt update\nsudo apt install geoip-bin geoip-database\n</code></pre>\n\n<p>Make sure it works by doing a simple test:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\n geoiplookup 8.8.8.8\n</code></pre>\n\n<p>Create the script to filter requests and cut unneeded. <br />\nOn ubuntu you can see messages from sshd serrvice in <code>/var/log/syslog</code> file.</p>\n<h3>Configure</h3>\n<p>Save this file in <code>/usr/local/bin/sshfilter.sh</code>:<br />\n<pre class="language-bash line-numbers"><code class=" language-bash line-numbers"></p>\n<h1>!/bin/bash</h1>\n<h1>UPPERCASE space-separated country codes to ACCEPT</h1>\n<p>ALLOW_COUNTRIES="NZ AU"</p>\n<p>if [ $# -ne 1 ]; then<br />\n  echo "Usage:  <code>basename $0</code> <ip>" 1&gt;&amp;2<br />\n  exit 0 # return true in case of config issue<br />\nfi</p>\n<p>COUNTRY=<code>/usr/bin/geoiplookup $1 | awk -F ": " '{ print $2 }' | awk -F "," '{ print $1 }' | head -n 1</code></p>\n<p>[[ $COUNTRY = "IP Address not found" || $ALLOW_COUNTRIES =~ $COUNTRY ]] &amp;&amp; RESPONSE="ALLOW" || RESPONSE="DENY"</p>\n<p>if [ $RESPONSE = "ALLOW" ]<br />\nthen<br />\n  exit 0<br />\nelse<br />\n  logger "$RESPONSE sshd connection from $1 ($COUNTRY)"<br />\n  exit 1<br />\nfi<br />\n</code></pre></p>\n<p>Edit the ALLOW_COUNTRIES to include a list of country codes you want your SSH server to accept connections from. <a href="http://www.nationsonline.org/oneworld/country_code_list.htm">Here</a> you can find country codes.</p>\n<p>The last things we need to do is tell the ssh daemon (sshd) to deny all connections (by default) and to run this script to determine whether the connection should be allowed or not.</p>\n<p>In /etc/hosts.deny add the line:<br />\n<pre class="language-none"><code class=" language-none"><br />\nsshd: ALL<br />\n</code></pre></p>\n<p>and in /etc/hosts.allow add the line<br />\n<pre class="language-none"><code class=" language-none"><br />\nsshd: ALL: aclexec /usr/local/bin/sshfilter.sh %a<br />\n</code></pre></p>\n<h3>Testing</h3>\n<p>Obviously you want to test that this is working before you are accidentally logged out of your system. On the console I can do a test with the 8.8.8.8 which I happen to know is from the US, and in my case should be DENIED access. So:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\n/usr/local/bin/sshfilter.sh 8.8.8.8\n</code></pre>\n\n<p>The script will not return anything visible, however in /var/log/messages I have the result:<br />\n<pre class="language-none"><code class=" language-none"><br />\nJun 26 17:02:37 pi root: DENY sshd connection from 8.8.8.8 (US)<br />\n</code></pre></p>\n<h3>Updating GeoIP</h3>\n<p>In order to make sure you are up-to-date with your GeoIP (free) country database, you will need to write another script which you can run as a monthly root cron job.</p>\n<p>Please note that if you just installed the GeoIP database, or you have never manually updated it (it does not auto-update), then you should run the following script manually after installing it! The default database that gets installed is several years old and very inaccurate.</p>\n<pre class="language-bash line-numbers"><code class=" language-bash line-numbers">\n#!/bin/bash\n\ncd /tmp\nwget -q https://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz\nif [ -f GeoIP.dat.gz ]\nthen\n    gzip -d GeoIP.dat.gz\n    rm -f /usr/share/GeoIP/GeoIP.dat\n    mv -f GeoIP.dat /usr/share/GeoIP/GeoIP.dat\nelse\n    echo "The GeoIP library could not be downloaded and updated"\nfi\n</code></pre>\n\n<h2>Sources:</h2>\n<ol>\n<li><a href="https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-16-04">Initial Server Setup with Ubuntu 16.04</a></li>\n<li><a href="https://www.howtoforge.com/vim-basics">Vim Basics Tutorial</a></li>\n<li><a href="https://www.digitalocean.com/community/tutorials/how-to-protect-ssh-with-fail2ban-on-ubuntu-14-04">How To Protect SSH with Fail2Ban on Ubuntu 14.04</a></li>\n<li><a href="https://www.axllent.org/docs/view/ssh-geoip/">Limit your SSH logins using GeoIP</a></li>\n</ol>	### Introduction\r\n\r\nThis tutorial describes the shortcut to gaining essential security level for your fresh Ubuntu server. The reason why you should do so is that almost every ip address in the world is being bruteforced 24/7 by large botnets and amount of bots and sophistication of attacks are increasing dramatically. Nowadays the cyber security is paramount.\r\n\r\n### Contents\r\n\r\nThis tutorial includes three parts:\r\n\r\n1. Disabling root login remotely (essential)\r\n2. Add cryptographic key authentication (recommended)\r\n3. Limit your SSH logins using GeoIP (optional)\r\n\r\nLet’s start with disabling root login remotely. This requires to log in, create a new user which will be used for remote login and configuring ssh service.\r\n\r\n*Note:* If you don’t know how to copy/paste in terminal, use usual commands (```CTRL+V, CTRL+C``` on linux and windows) with ```SHIFT``` pressed. Read [this](https://stackoverflow.com/questions/761807/how-to-copy-and-paste-from-terminal-with-keyboard) answer on stackoverflow for more information.\r\n\r\n\r\n## Disabling root login remotely (essential)\r\n\r\n### Login to your server\r\n\r\nThis command will help you to login to your server as ```root``` user. Replace the *server* with your server ip address or domain name.\r\n\r\n<pre class="command-line language-bash" data-user="user" data-host="localhost"><code class=" language-bash">\r\nssh root@server\r\n</code></pre>\r\n\r\nAs a result, you now must be connected to the server and logged in as root. You must see something like this:\r\n\r\n```language-bash\r\nWelcome to Ubuntu 16.04.3 LTS (GNU/Linux 4.4.0-042stab120.18 x86_64)\r\n\r\n * Documentation:  https://help.ubuntu.com\r\n * Management:     https://landscape.canonical.com\r\n * Support:        https://ubuntu.com/advantage\r\nLast login: Wed Sep 13 03:00:23 2017 from 12.345.67.890\r\n\r\n[root@server ~]#\r\n```\r\n\r\n### Create a new user\r\n\r\nThen add a new user to the system which will be used instead of root for login. Replace username in the examples below with a name that you like. After executing the command ```adduser``` you will be asked for new user’s password. Enter a strong password and, optionally, fill in any of the additional information if you would like. This is not required and you can just hit ```ENTER``` in any field you wish to skip.\r\n\r\n<pre class="command-line language-bash" data-user="root" data-host="server"><code class=" language-bash">\r\nadduser username\r\n</code></pre>\r\n\r\nNow, we have a new user account with regular account privileges. However, we may sometimes need to do administrative tasks.\r\n\r\nTo avoid having to log out of our normal user and log back in as the root account, we can set up what is known as "superuser" or root privileges for our normal account. This will allow our normal user to run commands with administrative privileges by putting the word ```sudo``` before each command.\r\n\r\n<pre class="command-line language-bash" data-user="root" data-host="server"><code class=" language-bash">\r\nusermod -aG sudo username\r\n</code></pre>\r\n\r\nNow your user can run commands with superuser privileges! For more information about how this works, check out [this sudoers tutorial](https://www.digitalocean.com/community/tutorials/how-to-edit-the-sudoers-file-on-ubuntu-and-centos).\r\n\r\nTo disable root SSH login, edit ```/etc/ssh/sshd_config``` with your favorite text editor. \r\n\r\nThe most common terminal text editor amongst developers is Vim. It’s a bit complicated but can save you a lot of time. So I provided a few tips for you who didn’t used it before.\r\n\r\nRun the following command (vi is alias for vim):\r\n\r\n<pre class="command-line language-bash" data-user="root" data-host="server"><code class=" language-bash">\r\nvi /etc/ssh/sshd_config\r\n</code></pre>\r\n\r\nAs you press enter you will see the Vim text editor. What you should know about Vim is that:\r\n\r\n1. Vim has several modes available. Just keep in mind that there are **command** mode and **other** modes. \r\n2. You can use only **command** and **input** modes to do basic text editing.\r\n3. By default Vim is in **command** mode. To return to command mode from any press ```ESC```. \r\n4. Vim has its commands. Most commands start with colon (```:``` key).\r\n5. To exit Vim run ```:q``` command.\r\n6. To edit a file you should use **input** mode. Press ```i``` key to enter the mode from the command mode. \r\n7. To write to a file use command ```:w```. \r\n8. You can combine commands, i.e., fire ```:wq``` and you will save file on exit.\r\n9. To search for a string hit ```/``` in command mode and then input the string, hit enter.\r\n\r\n#### Vim command reference\r\n\r\nsave: ```:w```\r\nsave and exit: ```:wq```\r\nexit: ```:q```\r\nforce: ```!``` (example ```:w!```, ```:q!```)\r\nvertical split: open a document and then type ```:vsplit /path-to-document/document``` and this will open the specified document and split the screen so you can see both documents.\r\ncopy: ```y```\r\ncopy a line: ```yy```\r\npaste: ```p```\r\ncut: ```d```\r\ncut a line: ```dd```\r\n\r\n[Here](https://www.howtoforge.com/vim-basics) is vim tutorial. You can find a lot of helpful video tutorials on youtube.\r\n\r\nEnter the input mode, edit line and save on exit.\r\n\r\nChange this line:\r\n```language-none\r\n#PermitRootLogin yes\r\n```\r\n\r\nEdit to this:\r\n```language-none\r\nPermitRootLogin no\r\n```\r\n\r\n**Ensure that you are logged into the box with another shell before restarting sshd to avoid locking yourself out of the server.**\r\n\r\n```language-none\r\n[root@server ~]# /etc/init.d/sshd restart\r\nStopping sshd: [ OK ]\r\nStarting sshd: [ OK ]\r\n[root@server ~]#\r\n```\r\n\r\nThat’s it. Now you can logout using ```exit``` command and try to login with new user credentials.\r\n\r\nIf you wish your server be more secured, follow the next step of the tutorial.\r\n\r\n\r\n## Add cryptographic key authentication (recommended)\r\n\r\nIf you already have a key that you want to use, skip to the Copy the Public Key step.\r\n\r\nIf you do not already have an SSH key pair, which consists of a public and private key, you need to generate one. You will need this key to work with such services as [bitbucket](https://bitbucket.org/) or [github](https://github.com). \r\n\r\n\r\n### Generate key pair\r\n\r\nRun this command on your local machine to generate the key pair.\r\n\r\n<pre class="command-line language-bash" data-user="user" data-host="localhost"><code class=" language-bash">\r\nssh-keygen\r\n</code></pre>\r\n\r\nYou will be asked few questions after that the key pair will be generated.\r\n\r\n*Note:* you will be asked for a passphrase, which if you provide one will be asked when login to the server. If not, then you won’t have to type the passphrase every time you login.\r\n\r\nThis generates a private key, id_rsa, and a public key, id_rsa.pub, in the .ssh directory of the localuser's home directory. Remember that the private key should not be shared with anyone who should not have access to your servers!\r\n\r\n\r\n### Copy the public key\r\n\r\n#### Option 1: Use ssh-copy-id\r\n\r\nIf your local machine has the ```ssh-copy-id``` script installed, you can use it to install your public key to any user that you have login credentials for.\r\n\r\nRun the ```ssh-copy-id``` script by specifying the user and IP address of the server that you want to install the key on, like this:\r\n\r\n<pre class="command-line language-bash" data-user="user" data-host="localhost"><code class=" language-bash">\r\nssh-copy-id username@server\r\n</code></pre>\r\n\r\nAfter providing your password at the prompt, your public key will be added to the remote user's ```.ssh/authorized_keys``` file. The corresponding private key can now be used to log into the server.\r\n\r\n#### Option 2: Manually Install the Key\r\n\r\nAssuming you generated an SSH key pair using the previous step, use the following command at the terminal of your local machine to print your public key (```id_rsa.pub```):\r\n\r\n<pre class="command-line language-bash" data-user="user" data-host="localhost"><code class=" language-bash">\r\ncat ~/.ssh/id_rsa.pub\r\n</code></pre>\r\n\r\nThis should print your public SSH key, which should look something like the following:\r\n\r\n```language-none\r\nid_rsa.pub contents\r\nssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDBGTO0tsVejssuaYR5R3Y/i73SppJAhme1dH7W2c47d4gOqB4izP0+fRLfvbz/tnXFz4iOP/H6eCV05hqUhF+KYRxt9Y8tVMrpDZR2l75o6+xSbUOMu6xN+uVF0T9XzKcxmzTmnV7Na5up3QM3DoSRYX/EP3utr2+zAqpJIfKPLdA74w7g56oYWI9blpnpzxkEd3edVJOivUkpZ4JoenWManvIaSdMTJXMy3MtlQhva+j9CgguyVbUkdzK9KKEuah+pFZvaugtebsU+bllPTB0nlXGIJk98Ie9ZtxuY3nCKneB+KjKiXrAvXUPCI9mWkYS/1rggpFmu3HbXBnWSUdf user@machine.local\r\n```\r\n\r\nSelect the public key, and copy it to your clipboard.\r\n\r\nTo enable the use of SSH key to authenticate as the new remote user, you must add the public key to a special file in the user's home directory.\r\n\r\nOn the **server**, as the **root** user, enter the following command to temporarily switch to the new user (substitute your own user name):\r\n\r\n<pre class="command-line language-bash" data-user="root" data-host="server"><code class=" language-bash">\r\nsu - username\r\n</code></pre>\r\n\r\nNow you will be in your new user's home directory.\r\n\r\nCreate a new directory called .ssh and restrict its permissions with the following commands:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nmkdir ~/.ssh\r\nchmod 700 ~/.ssh\r\n</code></pre>\r\n\r\nNow open a file in ```.ssh``` called ```authorized_keys``` with a text editor. We will use ```vim``` to edit the file:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nvim ~/.ssh/authorized_keys\r\n</code></pre>\r\n\r\nHit ```i```, insert your public key (which should be in your clipboard) by pasting it into the editor (```CTRL+SHIFT+V```) and save on exit hitting ```ESC```, then ```:wq```.\r\n\r\nNow restrict the permissions of the authorized_keys file with this command:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nchmod 600 ~/.ssh/authorized_keys\r\n</code></pre>\r\n\r\nType this command **once** to return to the ```root``` user:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nexit\r\n</code></pre>\r\n\r\nNow your public key is installed, and you can use SSH keys to log in as your user.\r\n\r\n## Disable password authentication\r\n\r\nTo disable password authentication on your server, follow these steps.\r\n\r\nAs root or your new sudo user, open the SSH daemon configuration:\r\n\r\n<pre class="command-line language-bash" data-user="root" data-host="server"><code class=" language-bash">\r\nvim /etc/ssh/sshd_config\r\n</code></pre>\r\n\r\nFind the line that specifies PasswordAuthentication, uncomment it by deleting the preceding #, then change its value to "no". It should look like this after you have made the change:\r\n\r\n<pre class="language-none"><code class=" language-none">\r\nPasswordAuthentication no\r\n</code></pre>\r\n\r\nHere are two other settings that are important for key-only authentication and are set by default. If you haven't modified this file before, you do not need to change these settings:\r\n\r\n<pre class="language-none"><code class=" language-none">\r\nPubkeyAuthentication yes\r\nChallengeResponseAuthentication no\r\n</code></pre>\r\n\r\nType this to reload the SSH daemon:\r\n\r\n<pre class="command-line language-bash" data-user="root" data-host="server"><code class=" language-bash">\r\nsystemctl reload sshd\r\n</code></pre>\r\n\r\nPassword authentication is now disabled. Your server is now only accessible with SSH key authentication.\r\n\r\n## Set up firewall\r\n\r\nUbuntu 16.04 servers can use the UFW firewall to make sure only connections to certain services are allowed. We can set up a basic firewall very easily using this application.\r\n\r\nDifferent applications can register their profiles with UFW upon installation. These profiles allow UFW to manage these applications by name. OpenSSH, the service allowing us to connect to our server now, has a profile registered with UFW.\r\n\r\nYou can see this by typing:\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo ufw app list\r\n</code></pre>\r\n\r\nWe need to make sure that the firewall allows SSH connections so that we can log back in next time. We can allow these connections by typing:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo ufw allow OpenSSH\r\n</code></pre>\r\n\r\nAfterwards, we can enable the firewall by typing:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo ufw enable\r\n</code></pre>\r\n\r\nType "y" and press ENTER to proceed. You can see that SSH connections are still allowed by typing:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo ufw status\r\n</code></pre>\r\n\r\nIf you install and configure additional services, you will need to adjust the firewall settings to allow acceptable traffic in. You can learn some common UFW operations in [this guide](https://www.digitalocean.com/community/tutorials/ufw-essentials-common-firewall-rules-and-commands).\r\n\r\n## Set up fail2ban\r\n\r\nA service called fail2ban can mitigate this problem by creating rules that can automatically alter your iptables firewall configuration based on a predefined number of unsuccessful login attempts. This will allow your server to respond to illegitimate access attempts without intervention from you.\r\n\r\n### Install and configure fail2ban\r\n\r\nType the following commands to install fail2ban:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo apt-get update\r\nsudo apt-get install fail2ban\r\n</code></pre>\r\n\r\nThe fail2ban service keeps its configuration files in the ```/etc/fail2ban``` directory. There is a file with defaults called ```jail.conf```.\r\n\r\nSince this file can be modified by package upgrades, we should not edit this file in-place, but rather copy it so that we can make our changes safely. In order for these two files to operate together successfully, it is best to only include the settings you wish to override in the ```jail.local``` file. All default options will be taken from the ```jail.conf``` file.\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nawk '{ printf "# "; print; }' /etc/fail2ban/jail.conf | sudo tee /etc/fail2ban/jail.local\r\n</code></pre>\r\n\r\n\r\nYou will want to evaluate the ```destemail```, ```sendername```, and ```mta``` settings if you wish to configure **email alerts**. The ```destemail``` parameter sets the email address that should receive ban messages. The ```sendername``` sets the value of the "From" field in the email. The ```mta``` parameter configures what mail service will be used to send mail. Again, add these to the jail.local file, under the [DEFAULT] header and set to the proper values if you wish to adjust them.\r\n\r\n*Note:* the mail service (```mta```) must be configured properly to send emails. [This tutorial](https://linuxconfig.org/configuring-gmail-as-sendmail-email-relay) can help you configure the ```sendmail``` service. *It is good practice to configure email alerts for most people do not check ```/var/log/auth.log``` file even once a month.*\r\n\r\n<pre class="language-none"><code class=" language-none">\r\n[DEFAULT]\r\n. . .\r\naction = $(action_)s\r\n. . .\r\n</code></pre>\r\n\r\nThis parameter configures the action that fail2ban takes when it wants to institute a ban. The value action_ is defined in the file shortly before this parameter. The default action is to simply configure the firewall to reject traffic from the offending host until the ban time elapses.\r\n\r\nIf you would like to configure email alerts, add or uncomment the action item to the jail.local file and change its value from action_ to action_mw. If you want the email to include the relevant log lines, you can change it to action_mwl. Make sure you have the appropriate mail settings configured if you choose to use mail alerts.\r\n\r\nWe're going to configure a auto-banning policy for SSH and Nginx, just as we described above. We want fail2ban to email us when an IP is banned.\r\n\r\nIf you don't already have it, you'll need nginx, since we're going to be monitoring its logs, and you'll need sendmail to mail us notifications. We'll also grab iptables-persistent to allow the server to automatically set up our firewall rules at boot. These can be acquired from Ubuntu's default repositories:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo apt-get update\r\nsudo apt-get install nginx sendmail iptables-persistent\r\n</code></pre>\r\n\r\nStop the fail2ban service for a moment so that we can establish a base firewall without the rules it adds:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo service fail2ban stop\r\n</code></pre>\r\n\r\nWhen that is finished, we should implement a default firewall.\r\n\r\nWe're going to tell it to allow established connections, traffic generated by the server itself, traffic destined for our SSH and web server ports. We will drop all other traffic. We can set this basic firewall up by typing:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo iptables -A INPUT -i lo -j ACCEPT\r\nsudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT\r\nsudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT\r\nsudo iptables -A INPUT -p tcp -m multiport --dports 80,443 -j ACCEPT\r\nsudo iptables -A INPUT -j DROP\r\n</code></pre>\r\n\r\nThese commands will implement the above policy. We can see our current firewall rules by typing:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo iptables -S\r\n</code></pre>\r\n\r\nYou can save the firewalls so that they survive a reboot by typing:\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo dpkg-reconfigure iptables-persistent\r\n</code></pre>\r\n\r\nAfterwards, you can restart fail2ban to implement the wrapping rules:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo service fail2ban start\r\n</code></pre>\r\n\r\nWe can see our current firewall rules by typing:\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo iptables -S\r\n</code></pre>\r\n\r\nIf you want to read more on how to set up firewall with fail2ban go [here](https://www.digitalocean.com/community/tutorials/how-to-protect-ssh-with-fail2ban-on-ubuntu-14-04).\r\n\r\nThe next step is optional.\r\n\r\n## Limit your SSH logins using GeoIP (optional)\r\n\r\nAs i mentioned before, you should take some actions to protect the server (primarily, against botnets, which scan almost all available ips and try to break into the server and take control). Most often you will see incoming [bruteforce attacks from Chinese bots](https://www.digitalocean.com/community/questions/is-anyone-else-being-brute-forced-by-chinese-ip-addresses).\r\n\r\n### Install\r\n\r\nInstall GeoIP using the following coman:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo apt update\r\nsudo apt install geoip-bin geoip-database\r\n</code></pre>\r\n\r\nMake sure it works by doing a simple test:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\n geoiplookup 8.8.8.8\r\n</code></pre>\r\n\r\nCreate the script to filter requests and cut unneeded. \r\nOn ubuntu you can see messages from sshd serrvice in ```/var/log/syslog``` file.\r\n\r\n### Configure\r\n\r\nSave this file in ```/usr/local/bin/sshfilter.sh```:\r\n<pre class="language-bash line-numbers"><code class=" language-bash line-numbers">\r\n#!/bin/bash\r\n\r\n# UPPERCASE space-separated country codes to ACCEPT\r\nALLOW_COUNTRIES="NZ AU"\r\n\r\nif [ $# -ne 1 ]; then\r\n  echo "Usage:  `basename $0` <ip>" 1>&2\r\n  exit 0 # return true in case of config issue\r\nfi\r\n\r\nCOUNTRY=`/usr/bin/geoiplookup $1 | awk -F ": " '{ print $2 }' | awk -F "," '{ print $1 }' | head -n 1`\r\n\r\n[[ $COUNTRY = "IP Address not found" || $ALLOW_COUNTRIES =~ $COUNTRY ]] && RESPONSE="ALLOW" || RESPONSE="DENY"\r\n\r\nif [ $RESPONSE = "ALLOW" ]\r\nthen\r\n  exit 0\r\nelse\r\n  logger "$RESPONSE sshd connection from $1 ($COUNTRY)"\r\n  exit 1\r\nfi\r\n</code></pre>\r\n\r\nEdit the ALLOW_COUNTRIES to include a list of country codes you want your SSH server to accept connections from. [Here](http://www.nationsonline.org/oneworld/country_code_list.htm) you can find country codes.\r\n\r\nThe last things we need to do is tell the ssh daemon (sshd) to deny all connections (by default) and to run this script to determine whether the connection should be allowed or not.\r\n\r\nIn /etc/hosts.deny add the line:\r\n<pre class="language-none"><code class=" language-none">\r\nsshd: ALL\r\n</code></pre>\r\n\r\n\r\nand in /etc/hosts.allow add the line\r\n<pre class="language-none"><code class=" language-none">\r\nsshd: ALL: aclexec /usr/local/bin/sshfilter.sh %a\r\n</code></pre>\r\n\r\n### Testing\r\n\r\nObviously you want to test that this is working before you are accidentally logged out of your system. On the console I can do a test with the 8.8.8.8 which I happen to know is from the US, and in my case should be DENIED access. So:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\n/usr/local/bin/sshfilter.sh 8.8.8.8\r\n</code></pre>\r\n\r\n\r\nThe script will not return anything visible, however in /var/log/messages I have the result:\r\n<pre class="language-none"><code class=" language-none">\r\nJun 26 17:02:37 pi root: DENY sshd connection from 8.8.8.8 (US)\r\n</code></pre>\r\n\r\n### Updating GeoIP\r\n\r\nIn order to make sure you are up-to-date with your GeoIP (free) country database, you will need to write another script which you can run as a monthly root cron job.\r\n\r\nPlease note that if you just installed the GeoIP database, or you have never manually updated it (it does not auto-update), then you should run the following script manually after installing it! The default database that gets installed is several years old and very inaccurate.\r\n\r\n<pre class="language-bash line-numbers"><code class=" language-bash line-numbers">\r\n#!/bin/bash\r\n\r\ncd /tmp\r\nwget -q https://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz\r\nif [ -f GeoIP.dat.gz ]\r\nthen\r\n    gzip -d GeoIP.dat.gz\r\n    rm -f /usr/share/GeoIP/GeoIP.dat\r\n    mv -f GeoIP.dat /usr/share/GeoIP/GeoIP.dat\r\nelse\r\n    echo "The GeoIP library could not be downloaded and updated"\r\nfi\r\n</code></pre>\r\n\r\n\r\n\r\n## Sources:\r\n\r\n1. [Initial Server Setup with Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-16-04)\r\n2. [Vim Basics Tutorial](https://www.howtoforge.com/vim-basics)\r\n3. [How To Protect SSH with Fail2Ban on Ubuntu 14.04](https://www.digitalocean.com/community/tutorials/how-to-protect-ssh-with-fail2ban-on-ubuntu-14-04)\r\n4. [Limit your SSH logins using GeoIP](https://www.axllent.org/docs/view/ssh-geoip/)	2017-09-12 13:17:21.066494+00	2017-11-04 12:19:15.094945+00	2017-09-12 13:16:40+00	published	This tutorial describes the shortcut to gaining essential security level for your fresh Ubuntu server. The reason why you should do so is that almost every ip address in the world is being bruteforced 24/7 by large botnets and amount of bots and sophistication of attacks are increasing dramatically. Nowadays the cyber security is paramount.	15
2	How to install and setup nginx server, increase page speed, set free ssl certificate [unfinished]	how-install-and-setup-nginx-server-increase-page-speed-set-free-ssl-certificate	<h3>Introduction</h3>\n<p>Nginx is one of the most popular web servers in the world and is responsible for hosting some of the largest and highest-traffic sites on the internet. It is more resource-friendly than Apache in most cases and can be used as a web server or a reverse proxy.</p>\n<p>This tutorial describes a fast way to setup nginx server, configuring the server for better performance and adding the ssl layer (https connection).</p>\n<h3>Prerequisites</h3>\n<p>I assume that you already have read my first tutorial, so you know how to login to your server via ssh <strong>not</strong> with<code>root</code>, create and edit files with <code>vim</code> and use root privileges with <code>sudo</code>.</p>\n<h3>Contents</h3>\n<p>This tutorial includes these three parts:</p>\n<ol>\n<li>Setting up nginx with server blocks (essential)</li>\n<li>Configuring nginx for better performance (recommended)</li>\n<li>Adding free SSL cert (https) for your site (optional)</li>\n</ol>\n<p>Let’s start with installing nginx and setting up server blocks.</p>\n<h2>1. Setting up nginx with server blocks (essential)</h2>\n<h3>Install nginx</h3>\n<p>Nginx is available in Ubuntu's default repositories, so the installation is rather straightforward.</p>\n<p>Since this is our first interaction with the <code>apt</code> packaging system in this session, we will update our local package index so that we have access to the most recent package listings. Afterwards, we can install <code>nginx</code>:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nsudo apt update\nsudo apt install nginx\n</code></pre>\n\n<h3>Adjust the Firewall</h3>\n<p>Before we can test Nginx, we need to reconfigure our firewall software to allow access to the service. Nginx registers itself as a service with <code>ufw</code>, our firewall, upon installation. This makes it rather easy to allow Nginx access.</p>\n<p>We can list the applications configurations that <code>ufw</code> knows how to work with by typing:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nsudo ufw app list\n</code></pre>\n\n<p>You should get a listing of the application profiles:</p>\n<pre><code class="language-none">Available applications:\n  Nginx Full\n  Nginx HTTP\n  Nginx HTTPS\n  OpenSSH\n</code></pre>\n\n<p>As you can see, there are three profiles available for Nginx:</p>\n<pre><code class="language-none">+ **Nginx Full**: This profile opens both port 80 (normal, unencrypted web traffic) and port 443 (TLS/SSL encrypted traffic)\n+ **Nginx HTTP**: This profile opens only port 80 (normal, unencrypted web traffic)\n+ **Nginx HTTPS**: This profile opens only port 443 (TLS/SSL encrypted traffic)\n</code></pre>\n\n<p>It is recommended that you enable the most restrictive profile that will still allow the traffic you've configured. Since we haven't configured SSL for our server yet, in this guide, we will only need to allow traffic on port 80.</p>\n<p>You can enable this by typing:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nsudo ufw allow 'Nginx HTTP'\n</code></pre>\n\n<p>You can verify the change by typing:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nsudo ufw status\n</code></pre>\n\n<p>You should see HTTP traffic allowed in the displayed output:</p>\n<pre><code class="language-none">Status: active\n\nTo                         Action      From\n--                         ------      ----\nOpenSSH                    ALLOW       Anywhere                  \nNginx HTTP                 ALLOW       Anywhere                  \nOpenSSH (v6)               ALLOW       Anywhere (v6)             \nNginx HTTP (v6)            ALLOW       Anywhere (v6)\n</code></pre>\n\n<h3>Check your Web Server</h3>\n<p>At the end of the installation process, Ubuntu 16.04 starts Nginx. The web server should already be up and running.</p>\n<p>We can check with the <code>systemd</code> init system to make sure the service is running by typing:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nsystemctl status nginx\n</code></pre>\n\n<pre><code class="language-none">● nginx.service - A high performance web server and a reverse proxy server\n   Loaded: loaded (/lib/systemd/system/nginx.service; enabled; vendor preset: enabled)\n   Active: active (running) since Mon 2016-04-18 16:14:00 EDT; 4min 2s ago\n Main PID: 12857 (nginx)\n   CGroup: /system.slice/nginx.service\n           ├─12857 nginx: master process /usr/sbin/nginx -g daemon on; master_process on\n           └─12858 nginx: worker process\n</code></pre>\n\n<p>As you can see above, the service appears to have started successfully. However, the best way to test this is to actually request a page from Nginx.</p>\n<p>You can access the default Nginx landing page to confirm that the software is running properly. You can access this through your server's domain name or IP address.</p>\n<p>If you do not have a domain name set up for your server, you can learn <a href="https://digitalocean.com/community/articles/how-to-set-up-a-host-name-with-digitalocean">how to set up a domain with DigitalOcean</a>.</p>\n<p>If you do not want to set up a domain name for your server, you can use your server's public IP address. If you do not know your server's IP address, you can get it a few different ways from the command line.</p>\n<p>Try typing this at your server's command prompt:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\\/.*$//'\n</code></pre>\n\n<p>You will get back a few lines. You can try each in your web browser to see if they work.</p>\n<p>When you have your server's IP address or domain, enter it into your browser's address bar:</p>\n<pre><code class="language-none">http://server_domain_or_IP\n</code></pre>\n\n<p>You should see the default Nginx landing page, which should have a heading like: “Welcome to nginx!”.</p>\n<p>This page is simply included with Nginx to show you that the server is running correctly.</p>\n<h3>Manage the Nginx Process</h3>\n<p>Now that you have your web server up and running, we can go over some basic management commands.</p>\n<p>There are several commands which you can use to manage your web server: </p>\n<ol>\n<li><code>start</code> - starts the web server if it’s stopped and config is OK</li>\n<li><code>stop</code> - stops the web server</li>\n<li><code>restart</code> - stops and then starts the web server</li>\n<li><code>reload</code> - reloads configs</li>\n<li><code>enable</code> - sets nginx to start when server boots; nginx is enabled by default</li>\n<li><code>disable</code> - sets nginx not to start at server boot.</li>\n</ol>\n<p>You should use these commands in this way:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nsudo systemctl start nginx\n</code></pre>\n\n<p>To test your nginx config before reload use</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nsudo nginx -t\n</code></pre>\n\n<p>If your server fails to start due to misconfiguration see last lines (command <code>G</code> in <code>vim</code>) of <code>/var/log/nginx/error.log</code> file.</p>\n<h3>Get Familiar with Important Nginx Files and Directories</h3>\n<p>Now that you know how to manage the service itself, you should take a few minutes to familiarize yourself with a few important directories and files.</p>\n<h4>Content</h4>\n<ul>\n<li><code>/var/www/html</code>: The actual web content, which by default only consists of the default Nginx page you saw earlier, is served out of the <code>/var/www/html</code> directory. This can be changed by altering Nginx configuration files.</li>\n</ul>\n<h4>Server Configuration</h4>\n<ul>\n<li>\n<p><code>/etc/nginx</code>: The nginx configuration directory. All of the Nginx configuration files reside here.</p>\n</li>\n<li>\n<p><code>/etc/nginx/nginx.conf</code>: The main Nginx configuration file. This can be modified to make changes to the Nginx global configuration.</p>\n</li>\n<li>\n<p><code>/etc/nginx/sites-available/</code>: The directory where per-site "server blocks" can be stored. Nginx will not use the configuration files found in this directory unless they are linked to the <code>sites-enabled</code> directory (see below). Typically, all server block configuration is done in this directory, and then enabled by linking to the other directory.</p>\n</li>\n<li>\n<p><code>/etc/nginx/sites-enabled/</code>: The directory where enabled per-site "server blocks" are stored. Typically, these are created by linking to configuration files found in the <code>sites-available</code> directory.</p>\n</li>\n<li>\n<p><code>/etc/nginx/snippets</code>: This directory contains configuration fragments that can be included elsewhere in the Nginx configuration. Potentially repeatable configuration segments are good candidates for refactoring into snippets.</p>\n</li>\n</ul>\n<h4>Server Logs</h4>\n<ul>\n<li><code>/var/log/nginx/access.log</code>: Every request to your web server is recorded in this log file unless Nginx is configured to do otherwise.</li>\n<li><code>/var/log/nginx/error.log</code>: Any Nginx errors will be recorded in this log.</li>\n</ul>\n<h3>Set Up Nginx Server Blocks (Virtual Hosts)</h3>\n<p>When using the Nginx web server, server blocks (similar to the virtual hosts in Apache) can be used to encapsulate configuration details and host more than one domain off of a single server.</p>\n<h4>Example Configuration</h4>\n<p>For demonstration purposes, we're going to set up two domains with our Nginx server. The domain names we'll use in this guide are <strong>example.com</strong> and <strong>test.com</strong>.</p>\n<h4>Set Up New Document Root Directories</h4>\n<p>By default, Nginx on Ubuntu 16.04 has one server block enabled by default. It is configured to serve documents out of a directory at <code>/var/www/html</code>.</p>\n<p>We will create a directory structure within <code>/var/www</code> for each of our sites. The actual web content will be placed in an <code>html</code> directory within these site-specific directories. This gives us some additional flexibility to create other directories associated with our sites as siblings to the <code>html</code> directory if necessary.</p>\n<p>We need to create these directories for each of our sites. The <code>-p</code> flag tells mkdir to create any necessary parent directories along the way:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nsudo mkdir -p /var/www/example.com/html\nsudo mkdir -p /var/www/test.com/html\n</code></pre>\n\n<p>Now that we have our directories, we will reassign ownership of the web directories to our normal user account. This will let us write to them without <code>sudo</code>.</p>\n<p><em>Note:</em> Depending on your needs, you might need to adjust the permissions or ownership of the folders again to allow certain access to the <strong>www-data</strong> user. For instance, dynamic sites will often need this. The specific permissions and ownership requirements entirely depend on what your configuration. Follow the recommendations for the specific technology you're using.</p>\n<p>We can use the <code>$USER</code> environmental variable to assign ownership to the account that we are currently signed in on (make sure you're not logged in as <code>root</code>). This will allow us to easily create or edit the content in this directory:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nsudo chown -R $USER:www-data /var/www/example.com/html\nsudo chown -R $USER:www-data /var/www/test.com/html\n</code></pre>\n\n<p>The permissions of our web roots should be correct already if you have not modified your <code>umask</code> value, but we can make sure by typing:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nsudo chmod -R 755 /var/www\n</code></pre>\n\n<p>Our directory structure is now configured and we can move on.</p>\n<h4>Create Sample Pages for Each Site</h4>\n<p>Now that we have our directory structure set up, let's create a default page for each of our sites so that we will have something to display.</p>\n<p>Create an <code>index.html</code> file in your first domain:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nvim  /var/www/example.com/html/index.html\n</code></pre>\n\n<p>Inside the file, we'll create a really basic file that indicates what site we are currently accessing. It will look like this:</p>\n<pre><code class="language-html">&lt;html&gt;\n    &lt;head&gt;\n        &lt;title&gt;Welcome to Example.com!&lt;/title&gt;\n    &lt;/head&gt;\n    &lt;body&gt;\n        &lt;h1&gt;Success!  The example.com server block is working!&lt;/h1&gt;\n    &lt;/body&gt;\n&lt;/html&gt;\n</code></pre>\n\n<p>Since the file for our second site is basically going to be the same, we can copy it over to our second document root like this:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\ncp /var/www/example.com/html/index.html /var/www/test.com/html/\n</code></pre>\n\n<p>Modify it so that it refers to our second domain:</p>\n<pre><code class="language-html">&lt;html&gt;\n    &lt;head&gt;\n        &lt;title&gt;Welcome to Test.com!&lt;/title&gt;\n    &lt;/head&gt;\n    &lt;body&gt;\n        &lt;h1&gt;Success!  The test.com server block is working!&lt;/h1&gt;\n    &lt;/body&gt;\n&lt;/html&gt;\n</code></pre>\n\n<h4>Create Server Block Files for Each Domain</h4>\n<p>Now that we have the content we wish to serve, we need to actually create the server blocks that will tell Nginx how to do this.</p>\n<p>By default, Nginx contains one server block called <code>default</code> which we can use as a template for our own configurations. We will begin by designing our first domain's server block, which we will then copy over for our second domain and make the necessary modifications.</p>\n<h5>Create the First Server Block File</h5>\n<p>Copy and open the new file you created in your text editor with <code>sudo</code> privileges</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nsudo cp /etc/nginx/sites-available/default /etc/nginx/sites-available/example.com\nsudo vim /etc/nginx/sites-available/example.com\n</code></pre>\n\n<p>Ignoring the commented lines, the file will look similar to this:</p>\n<pre><code class="language-none">server {\n        listen 80 default_server;\n        listen [::]:80 default_server;\n\n        root /var/www/html;\n        index index.html index.htm index.nginx-debian.html;\n\n        server_name _;\n\n        location / {\n                try_files $uri $uri/ =404;\n        }\n}\n</code></pre>\n\n<p>First, we need to look at the listen directives. <strong>Only one of our server blocks on the server can have the <code>default_server</code> option enabled.</strong> This specifies which block should serve a request if the <code>server_name</code> requested does not match any of the available server blocks. This shouldn't happen very frequently in real world scenarios since visitors will be accessing your site through your domain name.</p>\n<p>You can choose to designate one of your sites as the "default" by including the <code>default_server</code> option in the <code>listen</code> directive, or you can leave the default server block enabled, which will serve the content of the <code>/var/www/html directory</code> if the requested host cannot be found.</p>\n<p>In this guide, we'll leave the default server block in place to server non-matching requests, so we'll remove the <code>default_server</code> from this and the next server block. You can choose to add the option to whichever of your server blocks makes sense to you.</p>\n<pre><code class="language-none">server {\n        listen 80;\n        listen [::]:80;\n\n        . . .\n}\n</code></pre>\n\n<p><em>Note:</em> You can check that the default_server option is only enabled in a single active file by typing:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\ngrep -R default_server /etc/nginx/sites-enabled/\n</code></pre>\n\n<p>If matches are found uncommented in more than one file (shown in the leftmost column), Nginx will complain about an invalid configuration.</p>\n<p>The next thing we're going to have to adjust is the document <code>root</code>, specified by the root directive. Point it to the site's document root that you created:</p>\n<pre><code class="language-none">server {\n        listen 80;\n        listen [::]:80;\n\n        root /var/www/example.com/html;\n\n}\n</code></pre>\n\n<p>Next, we need to modify the <code>server_name</code> to match requests for our first domain. We can additionally add any aliases that we want to match. We will add a <code>www.example.com</code> alias to demonstrate.</p>\n<p>When you are finished, your file will look something like this:</p>\n<pre><code class="language-none">server {\n        listen 80;\n        listen [::]:80;\n\n        root /var/www/example.com/html;\n        index index.html index.htm index.nginx-debian.html;\n\n        server_name example.com www.example.com;\n\n        location / {\n                try_files $uri $uri/ =404;\n        }\n}\n</code></pre>\n\n<p>That is all we need for a basic configuration. Save and close the file to exit.</p>\n<h5>Create the Second Server Block File</h5>\n<p>Now that we have our initial server block configuration, we can use that as a basis for our second file. Copy it over to create a new file and open for editing:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nsudo cp /etc/nginx/sites-available/default /etc/nginx/sites-available/example.com\nsudo vim /etc/nginx/sites-available/example.com\n</code></pre>\n\n<p>Again, make sure that you do not use the <code>default_server</code> option for the <code>listen</code> directive in this file if you've already used it elsewhere. Adjust the <code>root</code> directive to point to your second domain's document root and adjust the <code>server_name</code> to match your second site's domain name (make sure to include any aliases).</p>\n<p>When you are finished, your file will likely look something like this:</p>\n<pre><code class="language-none">server {\n        listen 80;\n        listen [::]:80;\n\n        root /var/www/test.com/html;\n        index index.html index.htm index.nginx-debian.html;\n\n        server_name test.com www.test.com;\n\n        location / {\n                try_files $uri $uri/ =404;\n        }\n}\n</code></pre>\n\n<h5>Enable your Server Blocks and Restart Nginx</h5>\n<p>Now that we have our server block files, we need to enable them. We can do this by creating symbolic links from these files to the sites-enabled directory, which Nginx reads from during startup.</p>\n<p>We can create these links by typing:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nsudo ln -s /etc/nginx/sites-available/example.com /etc/nginx/sites-enabled/\nsudo ln -s /etc/nginx/sites-available/test.com /etc/nginx/sites-enabled/\n</code></pre>\n\n<p>These files are now in the enabled directory. We now have three server blocks enabled, which are configured to respond based on their <code>listen</code> directive and the <code>server_name</code> (you can read more about how Nginx processes these directives <a href="https://www.digitalocean.com/community/tutorials/understanding-nginx-server-and-location-block-selection-algorithms">here</a>):<br />\n+ <code>example.com</code>: Will respond to requests for <code>example.com</code> and <code>www.example.com</code><br />\n+ <code>test.com</code>: Will respond to requests for <code>test.com</code> and <code>www.test.com</code><br />\n+ <code>default</code>: Will respond to any requests on port 80 that do not match the other two blocks.</p>\n<p>In order to avoid a possible hash bucket memory problem that can arise from adding additional server names, we will go ahead and adjust a single value within our <code>/etc/nginx/nginx.conf</code> file. Open the file now:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nsudo vim /etc/nginx/nginx.conf\n</code></pre>\n\n<p>Within the file, find the <code>server_names_hash_bucket_size</code> directive. Remove the <code>#</code> symbol to uncomment the line:</p>\n<pre><code class="language-none">http {\n    . . .\n\n    server_names_hash_bucket_size 64;\n\n    . . .\n}\n</code></pre>\n\n<p>Next, test to make sure that there are no syntax errors in any of your Nginx files:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nsudo nginx -t\n</code></pre>\n\n<p>If no problems were found, restart Nginx to enable your changes:</p>\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\nsudo systemctl restart nginx\n</code></pre>\n\n<p>Nginx should now be serving both of your domain names.</p>\n<h5>Modify Your Local Hosts File for Testing (Optional)</h5>\n<p>If you have not been using domain names that you own and instead have been using dummy values, you can modify your local computer's configuration to let you to temporarily test your Nginx server block configuration.</p>\n<p>This will not allow other visitors to view your site correctly, but it will give you the ability to reach each site independently and test your configuration. This basically works by intercepting requests that would usually go to DNS to resolve domain names. Instead, we can set the IP addresses we want our local computer to go to when we request the domain names.</p>\n<h1>to be continued...</h1>	### Introduction\r\n\r\nNginx is one of the most popular web servers in the world and is responsible for hosting some of the largest and highest-traffic sites on the internet. It is more resource-friendly than Apache in most cases and can be used as a web server or a reverse proxy.\r\n\r\nThis tutorial describes a fast way to setup nginx server, configuring the server for better performance and adding the ssl layer (https connection).\r\n\r\n### Prerequisites\r\n\r\nI assume that you already have read my first tutorial, so you know how to login to your server via ssh **not** with```root```, create and edit files with ```vim``` and use root privileges with ```sudo```.\r\n\r\n### Contents\r\n\r\nThis tutorial includes these three parts:\r\n\r\n1. Setting up nginx with server blocks (essential)\r\n2. Configuring nginx for better performance (recommended)\r\n3. Adding free SSL cert (https) for your site (optional)\r\n\r\nLet’s start with installing nginx and setting up server blocks.\r\n\r\n## 1. Setting up nginx with server blocks (essential)\r\n\r\n### Install nginx\r\n\r\nNginx is available in Ubuntu's default repositories, so the installation is rather straightforward.\r\n\r\nSince this is our first interaction with the ```apt``` packaging system in this session, we will update our local package index so that we have access to the most recent package listings. Afterwards, we can install ```nginx```:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo apt update\r\nsudo apt install nginx\r\n</code></pre>\r\n\r\n### Adjust the Firewall\r\n\r\nBefore we can test Nginx, we need to reconfigure our firewall software to allow access to the service. Nginx registers itself as a service with ```ufw```, our firewall, upon installation. This makes it rather easy to allow Nginx access.\r\n\r\nWe can list the applications configurations that ```ufw``` knows how to work with by typing:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo ufw app list\r\n</code></pre>\r\n\r\nYou should get a listing of the application profiles:\r\n\r\n```language-none\r\nAvailable applications:\r\n  Nginx Full\r\n  Nginx HTTP\r\n  Nginx HTTPS\r\n  OpenSSH\r\n```\r\n\r\nAs you can see, there are three profiles available for Nginx:\r\n\r\n```language-none\r\n+ **Nginx Full**: This profile opens both port 80 (normal, unencrypted web traffic) and port 443 (TLS/SSL encrypted traffic)\r\n+ **Nginx HTTP**: This profile opens only port 80 (normal, unencrypted web traffic)\r\n+ **Nginx HTTPS**: This profile opens only port 443 (TLS/SSL encrypted traffic)\r\n```\r\n\r\nIt is recommended that you enable the most restrictive profile that will still allow the traffic you've configured. Since we haven't configured SSL for our server yet, in this guide, we will only need to allow traffic on port 80.\r\n\r\nYou can enable this by typing:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo ufw allow 'Nginx HTTP'\r\n</code></pre>\r\n\r\nYou can verify the change by typing:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo ufw status\r\n</code></pre>\r\n\r\nYou should see HTTP traffic allowed in the displayed output:\r\n\r\n```language-none\r\nStatus: active\r\n\r\nTo                         Action      From\r\n--                         ------      ----\r\nOpenSSH                    ALLOW       Anywhere                  \r\nNginx HTTP                 ALLOW       Anywhere                  \r\nOpenSSH (v6)               ALLOW       Anywhere (v6)             \r\nNginx HTTP (v6)            ALLOW       Anywhere (v6)\r\n```\r\n\r\n### Check your Web Server\r\n\r\nAt the end of the installation process, Ubuntu 16.04 starts Nginx. The web server should already be up and running.\r\n\r\nWe can check with the ```systemd``` init system to make sure the service is running by typing:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsystemctl status nginx\r\n</code></pre>\r\n\r\n```language-none\r\n● nginx.service - A high performance web server and a reverse proxy server\r\n   Loaded: loaded (/lib/systemd/system/nginx.service; enabled; vendor preset: enabled)\r\n   Active: active (running) since Mon 2016-04-18 16:14:00 EDT; 4min 2s ago\r\n Main PID: 12857 (nginx)\r\n   CGroup: /system.slice/nginx.service\r\n           ├─12857 nginx: master process /usr/sbin/nginx -g daemon on; master_process on\r\n           └─12858 nginx: worker process\r\n```\r\n\r\nAs you can see above, the service appears to have started successfully. However, the best way to test this is to actually request a page from Nginx.\r\n\r\nYou can access the default Nginx landing page to confirm that the software is running properly. You can access this through your server's domain name or IP address.\r\n\r\nIf you do not have a domain name set up for your server, you can learn [how to set up a domain with DigitalOcean](https://digitalocean.com/community/articles/how-to-set-up-a-host-name-with-digitalocean).\r\n\r\nIf you do not want to set up a domain name for your server, you can use your server's public IP address. If you do not know your server's IP address, you can get it a few different ways from the command line.\r\n\r\nTry typing this at your server's command prompt:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\\/.*$//'\r\n</code></pre>\r\n\r\nYou will get back a few lines. You can try each in your web browser to see if they work.\r\n\r\nWhen you have your server's IP address or domain, enter it into your browser's address bar:\r\n\r\n```language-none\r\nhttp://server_domain_or_IP\r\n```\r\n\r\nYou should see the default Nginx landing page, which should have a heading like: “Welcome to nginx!”.\r\n\r\nThis page is simply included with Nginx to show you that the server is running correctly.\r\n\r\n### Manage the Nginx Process\r\n\r\nNow that you have your web server up and running, we can go over some basic management commands.\r\n\r\nThere are several commands which you can use to manage your web server: \r\n\r\n1. ```start``` - starts the web server if it’s stopped and config is OK\r\n2.  ```stop``` - stops the web server\r\n3. ```restart``` - stops and then starts the web server\r\n4. ```reload``` - reloads configs\r\n5. ```enable``` - sets nginx to start when server boots; nginx is enabled by default\r\n6. ```disable``` - sets nginx not to start at server boot.\r\n\r\nYou should use these commands in this way:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo systemctl start nginx\r\n</code></pre>\r\n\r\nTo test your nginx config before reload use\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo nginx -t\r\n</code></pre>\r\n\r\nIf your server fails to start due to misconfiguration see last lines (command ```G``` in ```vim```) of ```/var/log/nginx/error.log``` file.\r\n\r\n### Get Familiar with Important Nginx Files and Directories\r\n\r\nNow that you know how to manage the service itself, you should take a few minutes to familiarize yourself with a few important directories and files.\r\n\r\n#### Content\r\n\r\n+ ```/var/www/html```: The actual web content, which by default only consists of the default Nginx page you saw earlier, is served out of the ```/var/www/html``` directory. This can be changed by altering Nginx configuration files.\r\n\r\n#### Server Configuration\r\n\r\n+ ```/etc/nginx```: The nginx configuration directory. All of the Nginx configuration files reside here.\r\n\r\n+ ```/etc/nginx/nginx.conf```: The main Nginx configuration file. This can be modified to make changes to the Nginx global configuration.\r\n\r\n+ ```/etc/nginx/sites-available/```: The directory where per-site "server blocks" can be stored. Nginx will not use the configuration files found in this directory unless they are linked to the ```sites-enabled``` directory (see below). Typically, all server block configuration is done in this directory, and then enabled by linking to the other directory.\r\n\r\n+ ```/etc/nginx/sites-enabled/```: The directory where enabled per-site "server blocks" are stored. Typically, these are created by linking to configuration files found in the ```sites-available``` directory.\r\n\r\n+ ```/etc/nginx/snippets```: This directory contains configuration fragments that can be included elsewhere in the Nginx configuration. Potentially repeatable configuration segments are good candidates for refactoring into snippets.\r\n\r\n#### Server Logs\r\n\r\n+ ```/var/log/nginx/access.log```: Every request to your web server is recorded in this log file unless Nginx is configured to do otherwise.\r\n+ ```/var/log/nginx/error.log```: Any Nginx errors will be recorded in this log.\r\n\r\n### Set Up Nginx Server Blocks (Virtual Hosts)\r\n\r\nWhen using the Nginx web server, server blocks (similar to the virtual hosts in Apache) can be used to encapsulate configuration details and host more than one domain off of a single server.\r\n\r\n#### Example Configuration\r\n\r\nFor demonstration purposes, we're going to set up two domains with our Nginx server. The domain names we'll use in this guide are **example.com** and **test.com**.\r\n\r\n#### Set Up New Document Root Directories\r\n\r\nBy default, Nginx on Ubuntu 16.04 has one server block enabled by default. It is configured to serve documents out of a directory at ```/var/www/html```.\r\n\r\nWe will create a directory structure within ```/var/www``` for each of our sites. The actual web content will be placed in an ```html``` directory within these site-specific directories. This gives us some additional flexibility to create other directories associated with our sites as siblings to the ```html``` directory if necessary.\r\n\r\nWe need to create these directories for each of our sites. The ```-p``` flag tells mkdir to create any necessary parent directories along the way:\r\n\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo mkdir -p /var/www/example.com/html\r\nsudo mkdir -p /var/www/test.com/html\r\n</code></pre>\r\n\r\nNow that we have our directories, we will reassign ownership of the web directories to our normal user account. This will let us write to them without ```sudo```.\r\n\r\n*Note:* Depending on your needs, you might need to adjust the permissions or ownership of the folders again to allow certain access to the **www-data** user. For instance, dynamic sites will often need this. The specific permissions and ownership requirements entirely depend on what your configuration. Follow the recommendations for the specific technology you're using.\r\n\r\nWe can use the ```$USER``` environmental variable to assign ownership to the account that we are currently signed in on (make sure you're not logged in as ```root```). This will allow us to easily create or edit the content in this directory:\r\n\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo chown -R $USER:www-data /var/www/example.com/html\r\nsudo chown -R $USER:www-data /var/www/test.com/html\r\n</code></pre>\r\n\r\nThe permissions of our web roots should be correct already if you have not modified your ```umask``` value, but we can make sure by typing:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo chmod -R 755 /var/www\r\n</code></pre>\r\n\r\nOur directory structure is now configured and we can move on.\r\n\r\n#### Create Sample Pages for Each Site\r\n\r\nNow that we have our directory structure set up, let's create a default page for each of our sites so that we will have something to display.\r\n\r\nCreate an ```index.html``` file in your first domain:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nvim  /var/www/example.com/html/index.html\r\n</code></pre>\r\n\r\nInside the file, we'll create a really basic file that indicates what site we are currently accessing. It will look like this:\r\n\r\n```language-html\r\n<html>\r\n    <head>\r\n        <title>Welcome to Example.com!</title>\r\n    </head>\r\n    <body>\r\n        <h1>Success!  The example.com server block is working!</h1>\r\n    </body>\r\n</html>\r\n```\r\nSince the file for our second site is basically going to be the same, we can copy it over to our second document root like this:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\ncp /var/www/example.com/html/index.html /var/www/test.com/html/\r\n</code></pre>\r\n\r\nModify it so that it refers to our second domain:\r\n\r\n```language-html\r\n<html>\r\n    <head>\r\n        <title>Welcome to Test.com!</title>\r\n    </head>\r\n    <body>\r\n        <h1>Success!  The test.com server block is working!</h1>\r\n    </body>\r\n</html>\r\n```\r\n\r\n#### Create Server Block Files for Each Domain\r\n\r\nNow that we have the content we wish to serve, we need to actually create the server blocks that will tell Nginx how to do this.\r\n\r\nBy default, Nginx contains one server block called ```default``` which we can use as a template for our own configurations. We will begin by designing our first domain's server block, which we will then copy over for our second domain and make the necessary modifications.\r\n\r\n##### Create the First Server Block File\r\n\r\nCopy and open the new file you created in your text editor with ```sudo``` privileges\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo cp /etc/nginx/sites-available/default /etc/nginx/sites-available/example.com\r\nsudo vim /etc/nginx/sites-available/example.com\r\n</code></pre>\r\n\r\n\r\nIgnoring the commented lines, the file will look similar to this:\r\n\r\n```language-none\r\nserver {\r\n        listen 80 default_server;\r\n        listen [::]:80 default_server;\r\n\r\n        root /var/www/html;\r\n        index index.html index.htm index.nginx-debian.html;\r\n\r\n        server_name _;\r\n\r\n        location / {\r\n                try_files $uri $uri/ =404;\r\n        }\r\n}\r\n```\r\n\r\nFirst, we need to look at the listen directives. **Only one of our server blocks on the server can have the ```default_server``` option enabled.** This specifies which block should serve a request if the ```server_name``` requested does not match any of the available server blocks. This shouldn't happen very frequently in real world scenarios since visitors will be accessing your site through your domain name.\r\n\r\nYou can choose to designate one of your sites as the "default" by including the ```default_server``` option in the ```listen``` directive, or you can leave the default server block enabled, which will serve the content of the ```/var/www/html directory``` if the requested host cannot be found.\r\n\r\nIn this guide, we'll leave the default server block in place to server non-matching requests, so we'll remove the ```default_server``` from this and the next server block. You can choose to add the option to whichever of your server blocks makes sense to you.\r\n\r\n```language-none\r\nserver {\r\n        listen 80;\r\n        listen [::]:80;\r\n\r\n        . . .\r\n}\r\n```\r\n\r\n*Note:* You can check that the default_server option is only enabled in a single active file by typing:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\ngrep -R default_server /etc/nginx/sites-enabled/\r\n</code></pre>\r\n\r\nIf matches are found uncommented in more than one file (shown in the leftmost column), Nginx will complain about an invalid configuration.\r\n\r\nThe next thing we're going to have to adjust is the document ```root```, specified by the root directive. Point it to the site's document root that you created:\r\n\r\n```language-none\r\nserver {\r\n        listen 80;\r\n        listen [::]:80;\r\n\r\n        root /var/www/example.com/html;\r\n\r\n}\r\n```\r\n\r\nNext, we need to modify the ```server_name``` to match requests for our first domain. We can additionally add any aliases that we want to match. We will add a ```www.example.com``` alias to demonstrate.\r\n\r\nWhen you are finished, your file will look something like this:\r\n\r\n```language-none\r\nserver {\r\n        listen 80;\r\n        listen [::]:80;\r\n\r\n        root /var/www/example.com/html;\r\n        index index.html index.htm index.nginx-debian.html;\r\n\r\n        server_name example.com www.example.com;\r\n\r\n        location / {\r\n                try_files $uri $uri/ =404;\r\n        }\r\n}\r\n```\r\n\r\nThat is all we need for a basic configuration. Save and close the file to exit.\r\n\r\n##### Create the Second Server Block File\r\n\r\nNow that we have our initial server block configuration, we can use that as a basis for our second file. Copy it over to create a new file and open for editing:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo cp /etc/nginx/sites-available/default /etc/nginx/sites-available/example.com\r\nsudo vim /etc/nginx/sites-available/example.com\r\n</code></pre>\r\n\r\nAgain, make sure that you do not use the ```default_server``` option for the ```listen``` directive in this file if you've already used it elsewhere. Adjust the ```root``` directive to point to your second domain's document root and adjust the ```server_name``` to match your second site's domain name (make sure to include any aliases).\r\n\r\nWhen you are finished, your file will likely look something like this:\r\n\r\n```language-none\r\nserver {\r\n        listen 80;\r\n        listen [::]:80;\r\n\r\n        root /var/www/test.com/html;\r\n        index index.html index.htm index.nginx-debian.html;\r\n\r\n        server_name test.com www.test.com;\r\n\r\n        location / {\r\n                try_files $uri $uri/ =404;\r\n        }\r\n}\r\n```\r\n\r\n##### Enable your Server Blocks and Restart Nginx\r\n\r\nNow that we have our server block files, we need to enable them. We can do this by creating symbolic links from these files to the sites-enabled directory, which Nginx reads from during startup.\r\n\r\nWe can create these links by typing:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo ln -s /etc/nginx/sites-available/example.com /etc/nginx/sites-enabled/\r\nsudo ln -s /etc/nginx/sites-available/test.com /etc/nginx/sites-enabled/\r\n</code></pre>\r\n\r\nThese files are now in the enabled directory. We now have three server blocks enabled, which are configured to respond based on their ```listen``` directive and the ```server_name``` (you can read more about how Nginx processes these directives [here](https://www.digitalocean.com/community/tutorials/understanding-nginx-server-and-location-block-selection-algorithms)):\r\n+ ```example.com```: Will respond to requests for ```example.com``` and ```www.example.com```\r\n+ ```test.com```: Will respond to requests for ```test.com``` and ```www.test.com```\r\n+ ```default```: Will respond to any requests on port 80 that do not match the other two blocks.\r\n\r\nIn order to avoid a possible hash bucket memory problem that can arise from adding additional server names, we will go ahead and adjust a single value within our ```/etc/nginx/nginx.conf``` file. Open the file now:\r\n\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo vim /etc/nginx/nginx.conf\r\n</code></pre>\r\n\r\nWithin the file, find the ```server_names_hash_bucket_size``` directive. Remove the ```# ``` symbol to uncomment the line:\r\n\r\n```language-none\r\nhttp {\r\n    . . .\r\n\r\n    server_names_hash_bucket_size 64;\r\n\r\n    . . .\r\n}\r\n```\r\n\r\nNext, test to make sure that there are no syntax errors in any of your Nginx files:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo nginx -t\r\n</code></pre>\r\n\r\nIf no problems were found, restart Nginx to enable your changes:\r\n\r\n<pre class="command-line language-bash" data-user="username" data-host="server"><code class=" language-bash">\r\nsudo systemctl restart nginx\r\n</code></pre>\r\n\r\nNginx should now be serving both of your domain names.\r\n\r\n##### Modify Your Local Hosts File for Testing (Optional)\r\n\r\nIf you have not been using domain names that you own and instead have been using dummy values, you can modify your local computer's configuration to let you to temporarily test your Nginx server block configuration.\r\n\r\nThis will not allow other visitors to view your site correctly, but it will give you the ability to reach each site independently and test your configuration. This basically works by intercepting requests that would usually go to DNS to resolve domain names. Instead, we can set the IP addresses we want our local computer to go to when we request the domain names.\r\n\r\n\r\n# to be continued...	2017-10-30 15:25:14.909795+00	2017-11-30 00:55:45.125553+00	2017-10-30 15:23:59+00	published	This tutorial describes a fast way to setup nginx server, configuring the server for better performance and adding ssl layer (https).	25
3	How to setup celery with django using redis as a message broker	how-setup-celery-django-using-redis-message-broker	<p>This tutorial describes how to setup celery tasks scheduler for django app with django’s admin interface for the purpose (tasks scheduling).</p>\n<p>This tutorial consists of 3 parts: installation, configuration and instructions what to do next.</p>\n<h2>Installation</h2>\n<p>Run the following commands in your venv:<br />\n<pre class="command-line language-bash" data-user="(env) user" data-host="server"><code class=" language-bash"><br />\npip install -U "celery[redis]"<br />\npip install django-celery-beat<br />\npip install django-celery-result<br />\n</code></pre></p>\n<h2>Configuration</h2>\n<p>Let’s create script with configs for celery. We have similar to the following project structure at the moment of writing this tutorial.</p>\n<pre><code class="language-bash">...\nmanage.py\napps\nbase\n- tasks\n- - task01.py\n- - task02.py\n- celeryconf.py\n...\n</code></pre>\n\n<p><strong>celeryconf.py</strong></p>\n<pre class="language-python line-numbers"><code class=" language-python line-numbers">\nimport os\nfrom celery import Celery\nfrom kombu import Queue, Exchange\napp = Celery('tasks')\ndefault_exchange = Exchange('default', type='direct')\napp.conf.task_queues = (\n    Queue('default', default_exchange, routing_key='default'),\n)\napp.conf.task_default_queue = 'default'\napp.conf.task_default_exchange = 'default'\napp.conf.task_default_exchange_type = 'direct'\napp.conf.task_default_routing_key = 'default'\napp.conf.task_queues = (\n    Queue('default', default_exchange, routing_key='default'),\n)\napp.conf.beat_scheduler = 'django_celery_beat.schedulers:DatabaseScheduler'\nos.environ.setdefault('DJANGO_SETTINGS_MODULE', 'base.settings')\napp.config_from_object('django.conf:settings', namespace='CELERY')\napp.autodiscover_tasks()\n# hack for celery beat\nimport django\ndjango.setup()\n</code></pre>\n\n<p><strong>tasks/<strong>init</strong>.py</strong><br />\n<pre class="language-python line-numbers"><code class=" language-python line-numbers"><br />\nfrom celery import shared_task<br />\nfrom celery.utils.log import get_task_logger<br />\nlogger = get_task_logger(<strong>name</strong>)</p>\n<p>@shared_task<br />\ndef parse_admitad_yml(channel_id=56):</p>\n<pre><code>from .parse_admitad_yml import ParseAdmitadYml\n\nlogger.info('Running parse_admitad_yml for channel_id %s', channel_id)\nparser = ParseAdmitadYml()\ntry:\n    parser.execute(channel_id)\nexcept Exception:\n    return 1\n\nreturn 0\n</code></pre>\n<p>@shared_task<br />\ndef create_things():</p>\n<pre><code>from .create_things import CreateThings\n\nlogger.info('Running create_things')\n\ntry:\n    create_things = CreateThings()\n    create_things.execute()\nexcept Exception:\n    return 1\n\nreturn 0\n</code></pre>\n<p>@shared_task<br />\ndef create_things_auto():<br />\n    from .create_things_auto import CreateThingsAuto</p>\n<pre><code>logger.info('Running create_things_auto')\n\ntry:\n    create_things_auto = CreateThingsAuto()\n    create_things_auto.execute()\nexcept Exception:\n    return 1\n\nreturn 0\n</code></pre>\n<p>@shared_task<br />\ndef add_pictures_to_things():<br />\n    from .add_pictures_to_things import AddPicturesToThings</p>\n<pre><code>logger.info('Running add_pictures_to_things')\n\ntry:\n    add_pictures_to_things = AddPicturesToThings()\n    add_pictures_to_things.execute()\nexcept Exception:\n    return 1\n\nreturn 0\n</code></pre>\n<p></code></pre></p>\n<p><strong>tasks/task01.py</strong><br />\n<pre class="language-python line-numbers"><code class=" language-python line-numbers"><br />\n# coding: utf-8<br />\nfrom django.core.management.base import NoArgsCommand<br />\nfrom django.utils.translation import activate<br />\nfrom admitad.models import Thing</p>\n<p>class CreateThings:<br />\n    """A class for a celery task"""<br />\n    def execute():<br />\n        Thing.create_shop_things()<br />\n</code></pre></p>\n<p>Start redis server with<br />\n<pre class="command-line language-bash" data-user="user" data-host="server"><code class=" language-bash"><br />\nredis-server<br />\n</code></pre></p>\n<p>Start a celery worker (executes the tasks) with the command:<br />\n<pre class="command-line language-bash" data-user="(env) user" data-host="server"><code class=" language-bash"><br />\ncelery -A base.celeryconf worker -l info<br />\n</code></pre></p>\n<p>Then start a celery beat (adds tasks to the celery  queue) with the command:<br />\n<pre class="command-line language-bash" data-user="(env) user" data-host="server"><code class=" language-bash"><br />\ncelery -A base.celeryconf beat -l info<br />\n</code></pre></p>\n<h3>The final words</h3>\n<p>If you completed the steps described above, you must have the celery setup for your django application up and running. All that lasts is to daemonize things. You should run the redis server, celery worker and beat in daemon mode (as background processes) for the task scheduling system to work using django admin interface. For more info on the subject see celery docs.</p>\n<h2>Sources:</h2>\n<ol>\n<li><a href="http://docs.celeryproject.org/en/latest/index.html">Celery 4.1.0 documentation</a></li>\n<li><a href="https://www.codingforentrepreneurs.com/blog/celery-redis-django/">Celery + Redis + Django</a></li>\n<li><a href="https://medium.com/@yehandjoe/celery-4-periodic-task-in-django-9f6b5a8c21c7">Celery 4 Periodic Task in Django</a></li>\n</ol>	This tutorial describes how to setup celery tasks scheduler for django app with django’s admin interface for the purpose (tasks scheduling).\r\n\r\nThis tutorial consists of 3 parts: installation, configuration and instructions what to do next.\r\n\r\n## Installation\r\n\r\nRun the following commands in your venv:\r\n<pre class="command-line language-bash" data-user="(env) user" data-host="server"><code class=" language-bash">\r\npip install -U "celery[redis]"\r\npip install django-celery-beat\r\npip install django-celery-result\r\n</code></pre>\r\n\r\n## Configuration\r\nLet’s create script with configs for celery. We have similar to the following project structure at the moment of writing this tutorial.\r\n\r\n```language-bash\r\n...\r\nmanage.py\r\napps\r\nbase\r\n- tasks\r\n- - task01.py\r\n- - task02.py\r\n- celeryconf.py\r\n...\r\n```\r\n\r\n**celeryconf.py**\r\n\r\n<pre class="language-python line-numbers"><code class=" language-python line-numbers">\r\nimport os\r\nfrom celery import Celery\r\nfrom kombu import Queue, Exchange\r\napp = Celery('tasks')\r\ndefault_exchange = Exchange('default', type='direct')\r\napp.conf.task_queues = (\r\n    Queue('default', default_exchange, routing_key='default'),\r\n)\r\napp.conf.task_default_queue = 'default'\r\napp.conf.task_default_exchange = 'default'\r\napp.conf.task_default_exchange_type = 'direct'\r\napp.conf.task_default_routing_key = 'default'\r\napp.conf.task_queues = (\r\n    Queue('default', default_exchange, routing_key='default'),\r\n)\r\napp.conf.beat_scheduler = 'django_celery_beat.schedulers:DatabaseScheduler'\r\nos.environ.setdefault('DJANGO_SETTINGS_MODULE', 'base.settings')\r\napp.config_from_object('django.conf:settings', namespace='CELERY')\r\napp.autodiscover_tasks()\r\n# hack for celery beat\r\nimport django\r\ndjango.setup()\r\n</code></pre>\r\n\r\n**tasks/__init__.py**\r\n<pre class="language-python line-numbers"><code class=" language-python line-numbers">\r\nfrom celery import shared_task\r\nfrom celery.utils.log import get_task_logger\r\nlogger = get_task_logger(__name__)\r\n\r\n\r\n@shared_task\r\ndef parse_admitad_yml(channel_id=56):\r\n\r\n    from .parse_admitad_yml import ParseAdmitadYml\r\n\r\n    logger.info('Running parse_admitad_yml for channel_id %s', channel_id)\r\n    parser = ParseAdmitadYml()\r\n    try:\r\n        parser.execute(channel_id)\r\n    except Exception:\r\n        return 1\r\n\r\n    return 0\r\n\r\n\r\n@shared_task\r\ndef create_things():\r\n\r\n    from .create_things import CreateThings\r\n\r\n    logger.info('Running create_things')\r\n\r\n    try:\r\n        create_things = CreateThings()\r\n        create_things.execute()\r\n    except Exception:\r\n        return 1\r\n\r\n    return 0\r\n\r\n\r\n@shared_task\r\ndef create_things_auto():\r\n    from .create_things_auto import CreateThingsAuto\r\n\r\n    logger.info('Running create_things_auto')\r\n\r\n    try:\r\n        create_things_auto = CreateThingsAuto()\r\n        create_things_auto.execute()\r\n    except Exception:\r\n        return 1\r\n\r\n    return 0\r\n\r\n\r\n@shared_task\r\ndef add_pictures_to_things():\r\n    from .add_pictures_to_things import AddPicturesToThings\r\n\r\n    logger.info('Running add_pictures_to_things')\r\n\r\n    try:\r\n        add_pictures_to_things = AddPicturesToThings()\r\n        add_pictures_to_things.execute()\r\n    except Exception:\r\n        return 1\r\n\r\n    return 0\r\n</code></pre>\r\n\r\n**tasks/task01.py**\r\n<pre class="language-python line-numbers"><code class=" language-python line-numbers">\r\n\\# coding: utf-8\r\nfrom django.core.management.base import NoArgsCommand\r\nfrom django.utils.translation import activate\r\nfrom admitad.models import Thing\r\n\r\n\r\nclass CreateThings:\r\n    """A class for a celery task"""\r\n    def execute():\r\n        Thing.create_shop_things()\r\n</code></pre>\r\n\r\nStart redis server with\r\n<pre class="command-line language-bash" data-user="user" data-host="server"><code class=" language-bash">\r\nredis-server\r\n</code></pre>\r\n\r\nStart a celery worker (executes the tasks) with the command:\r\n<pre class="command-line language-bash" data-user="(env) user" data-host="server"><code class=" language-bash">\r\ncelery -A base.celeryconf worker -l info\r\n</code></pre>\r\n\r\nThen start a celery beat (adds tasks to the celery  queue) with the command:\r\n<pre class="command-line language-bash" data-user="(env) user" data-host="server"><code class=" language-bash">\r\ncelery -A base.celeryconf beat -l info\r\n</code></pre>\r\n\r\n### The final words\r\n\r\nIf you completed the steps described above, you must have the celery setup for your django application up and running. All that lasts is to daemonize things. You should run the redis server, celery worker and beat in daemon mode (as background processes) for the task scheduling system to work using django admin interface. For more info on the subject see celery docs.\r\n\r\n## Sources:\r\n1. [Celery 4.1.0 documentation](http://docs.celeryproject.org/en/latest/index.html)\r\n2. [Celery + Redis + Django](https://www.codingforentrepreneurs.com/blog/celery-redis-django/)\r\n3. [Celery 4 Periodic Task in Django](https://medium.com/@yehandjoe/celery-4-periodic-task-in-django-9f6b5a8c21c7)	2017-12-08 16:09:59.183185+00	2017-12-09 07:14:41.861318+00	2017-12-08 15:58:48+00	published	This tutorial describes how to setup celery tasks scheduler for django app with django’s admin interface for the purpose (tasks scheduling).	10
\.


--
-- Name: post_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bloguser
--

SELECT pg_catalog.setval('public.post_post_id_seq', 4, true);


--
-- Data for Name: post_viewcount; Type: TABLE DATA; Schema: public; Owner: bloguser
--

COPY public.post_viewcount (id, ip_address, first_visit_date, post_id) FROM stdin;
1	188.170.83.22	2017-09-12 13:17:33.767895+00	1
2	92.100.98.191	2017-09-12 20:09:54.95467+00	1
3	92.61.69.223	2017-09-12 23:42:55.740898+00	1
4	37.144.93.220	2017-09-12 23:47:07.375902+00	1
5	66.102.9.22	2017-09-13 07:22:33.428016+00	1
6	66.102.9.24	2017-09-13 07:22:33.529699+00	1
7	188.170.83.59	2017-09-13 10:03:35.026344+00	1
8	95.55.182.195	2017-09-13 16:05:42.518146+00	1
9	188.170.82.219	2017-09-13 16:10:20.058941+00	1
10	34.207.98.73	2017-09-14 07:21:03.697924+00	1
11	188.170.75.143	2017-09-14 09:28:46.917628+00	1
12	89.223.50.13	2017-09-14 10:01:44.437257+00	1
13	188.170.74.51	2017-09-14 12:21:26.331462+00	1
14	82.137.166.104	2017-09-14 14:14:02.511246+00	1
15	188.170.81.228	2017-09-14 16:25:27.525418+00	1
16	208.101.7.44	2017-09-14 17:24:16.233535+00	1
17	188.170.73.167	2017-09-14 18:35:57.108925+00	1
18	178.71.30.50	2017-09-14 20:00:25.959943+00	1
19	188.170.80.102	2017-09-14 20:23:19.967994+00	1
20	93.100.144.24	2017-09-14 21:08:40.368895+00	1
21	188.170.80.162	2017-09-15 08:21:39.60808+00	1
22	66.249.69.205	2017-09-15 09:25:50.33449+00	1
23	82.137.166.102	2017-09-15 11:49:18.414221+00	1
24	66.249.64.205	2017-09-15 14:18:17.809282+00	1
25	178.70.248.143	2017-09-15 16:54:55.814508+00	1
26	108.168.151.16	2017-09-15 22:37:31.437925+00	1
27	208.101.7.46	2017-09-16 16:53:26.940014+00	1
28	66.249.66.21	2017-09-16 19:56:48.681748+00	1
29	78.37.185.184	2017-09-16 21:38:20.729076+00	1
30	178.70.192.216	2017-09-17 13:03:32.275813+00	1
31	78.37.148.127	2017-09-17 19:48:37.32129+00	1
32	81.24.120.102	2017-09-18 07:09:58.939384+00	1
33	66.249.79.50	2017-09-18 09:24:26.788326+00	1
34	5.45.207.32	2017-09-18 15:44:11.762615+00	1
35	66.249.65.91	2017-09-18 15:51:48.565989+00	1
36	188.170.72.122	2017-09-18 15:59:03.380011+00	1
37	92.100.107.209	2017-09-18 20:31:33.730715+00	1
38	192.99.67.14	2017-09-19 06:47:19.911725+00	1
39	188.170.83.93	2017-09-19 09:22:45.597021+00	1
40	188.170.81.19	2017-09-19 10:33:42.081733+00	1
41	178.252.71.238	2017-09-19 12:04:33.910781+00	1
42	69.58.178.56	2017-09-19 16:59:20.939819+00	1
43	88.198.66.230	2017-09-19 19:49:46.342288+00	1
44	223.62.188.30	2017-09-19 23:55:17.135603+00	1
45	188.170.72.62	2017-09-20 06:39:27.401326+00	1
46	37.9.113.77	2017-09-20 13:48:00.001042+00	1
47	74.94.105.181	2017-09-20 19:15:04.436089+00	1
48	5.133.198.153	2017-09-21 18:09:10.051367+00	1
49	87.250.224.39	2017-09-21 23:20:08.230205+00	1
50	91.122.124.181	2017-09-22 10:28:41.622349+00	1
51	178.70.251.19	2017-09-22 21:30:36.563294+00	1
52	180.76.15.134	2017-09-23 00:19:12.793941+00	1
53	178.236.139.87	2017-09-24 10:00:45.33576+00	1
54	95.90.211.167	2017-09-24 13:47:49.12983+00	1
55	78.37.145.90	2017-09-24 19:09:05.689642+00	1
56	77.78.200.2	2017-09-25 10:27:45.018654+00	1
57	86.84.154.86	2017-09-26 08:57:31.030995+00	1
58	188.143.208.20	2017-09-26 10:00:38.73537+00	1
59	188.170.75.179	2017-09-26 12:28:10.719687+00	1
60	92.100.241.226	2017-09-26 18:06:16.615524+00	1
61	95.55.1.203	2017-09-27 11:37:46.048978+00	1
62	87.250.224.37	2017-09-29 04:48:48.305377+00	1
63	92.100.255.165	2017-09-29 11:54:58.604775+00	1
64	91.122.127.217	2017-09-30 07:36:26.006795+00	1
65	66.249.66.209	2017-10-01 00:24:18.760989+00	1
66	66.249.66.207	2017-10-01 00:24:19.754983+00	1
67	178.154.171.15	2017-10-01 01:04:18.196775+00	1
68	66.249.66.205	2017-10-01 06:15:39.970018+00	1
69	91.90.161.162	2017-10-02 13:20:43.625251+00	1
70	92.100.240.224	2017-10-02 20:19:11.087433+00	1
71	66.249.65.153	2017-10-03 08:00:24.367759+00	1
72	5.157.29.42	2017-10-03 10:06:22.421253+00	1
73	66.249.73.79	2017-10-03 10:33:11.947036+00	1
74	31.28.10.50	2017-10-03 12:53:27.158358+00	1
75	66.249.65.151	2017-10-03 14:17:22.945055+00	1
76	95.108.181.88	2017-10-03 21:59:25.850101+00	1
77	178.69.39.181	2017-10-04 12:34:09.773539+00	1
78	92.100.242.3	2017-10-05 16:47:41.615164+00	1
79	123.243.74.70	2017-10-05 17:54:54.742958+00	1
80	187.36.75.128	2017-10-06 14:22:52.164222+00	1
81	177.66.191.242	2017-10-06 14:45:37.468969+00	1
82	2.49.149.145	2017-10-06 20:30:34.150555+00	1
83	178.71.235.69	2017-10-08 13:56:44.439209+00	1
84	47.185.225.37	2017-10-08 20:45:32.866593+00	1
85	66.249.69.207	2017-10-09 12:05:31.115245+00	1
86	94.72.62.225	2017-10-09 16:09:05.76995+00	1
87	178.71.23.187	2017-10-10 02:54:56.380988+00	1
88	188.170.75.1	2017-10-12 11:05:56.761926+00	1
89	196.52.2.10	2017-10-12 12:55:00.973512+00	1
90	207.46.13.157	2017-10-12 15:05:29.936958+00	1
91	95.55.191.169	2017-10-13 11:55:18.20751+00	1
92	66.249.64.209	2017-10-13 12:22:03.619033+00	1
93	76.167.229.101	2017-10-13 14:54:29.655184+00	1
94	66.249.64.207	2017-10-13 14:56:59.017234+00	1
95	178.2.3.192	2017-10-13 16:51:49.233756+00	1
96	95.220.116.225	2017-10-13 19:00:19.26747+00	1
97	5.45.207.10	2017-10-13 20:02:17.175639+00	1
98	78.37.186.42	2017-10-15 06:06:42.754687+00	1
99	46.236.26.114	2017-10-15 06:49:21.50719+00	1
100	185.20.6.86	2017-10-15 06:49:21.52524+00	1
101	178.33.169.7	2017-10-15 06:50:12.518909+00	1
102	62.210.101.170	2017-10-15 06:50:12.806964+00	1
103	180.76.15.26	2017-10-15 12:37:43.091446+00	1
104	185.146.212.80	2017-10-15 17:50:50.084544+00	1
105	178.71.235.109	2017-10-15 21:11:32.829362+00	1
106	180.76.15.28	2017-10-15 22:17:00.10776+00	1
107	162.210.196.130	2017-10-16 01:50:12.051234+00	1
108	78.37.184.172	2017-10-16 19:00:03.050641+00	1
109	212.237.181.195	2017-10-17 21:19:11.285277+00	1
110	167.114.174.95	2017-10-18 00:35:48.379984+00	1
111	92.47.159.66	2017-10-18 09:28:55.189789+00	1
112	145.249.146.45	2017-10-18 13:51:19.695012+00	1
113	178.71.28.185	2017-10-18 22:15:16.218533+00	1
114	46.148.120.33	2017-10-19 05:28:29.24786+00	1
115	188.170.81.35	2017-10-19 12:19:52.877739+00	1
116	92.100.106.30	2017-10-19 22:40:23.462972+00	1
117	95.67.88.20	2017-10-20 13:13:02.948916+00	1
118	188.170.74.240	2017-10-23 13:53:56.463846+00	1
119	46.229.218.232	2017-10-23 17:56:09.328228+00	1
120	139.62.209.28	2017-10-23 18:00:53.079419+00	1
121	78.37.143.80	2017-10-23 22:34:28.008432+00	1
122	36.84.13.75	2017-10-24 13:59:26.709844+00	1
123	173.8.35.109	2017-10-24 14:52:49.080094+00	1
124	95.55.181.198	2017-10-25 23:04:17.873269+00	1
125	188.170.82.165	2017-10-26 18:35:19.121802+00	1
126	78.37.180.214	2017-10-27 04:21:22.489412+00	1
127	188.170.73.117	2017-10-27 06:53:57.833048+00	1
128	91.122.138.137	2017-10-27 23:07:25.724705+00	1
129	188.170.82.224	2017-10-28 12:19:51.312748+00	1
130	188.170.74.221	2017-10-29 00:46:25.986201+00	1
131	178.71.28.216	2017-10-29 23:25:42.370476+00	1
132	107.201.58.98	2017-10-30 04:33:45.629791+00	1
133	78.140.196.162	2017-10-30 15:25:24.616463+00	2
134	173.193.17.200	2017-10-30 15:25:27.194239+00	2
135	78.37.135.123	2017-10-30 21:42:45.221568+00	2
136	78.37.135.123	2017-10-30 22:08:56.900095+00	1
137	120.220.21.48	2017-10-31 01:07:51.941794+00	2
138	120.220.21.48	2017-10-31 01:07:55.189069+00	1
139	188.170.83.7	2017-10-31 07:15:23.623728+00	2
140	188.170.83.7	2017-10-31 07:36:44.232929+00	1
141	188.170.83.143	2017-10-31 15:11:00.179045+00	2
142	188.170.83.143	2017-10-31 15:11:31.585081+00	1
143	188.170.83.121	2017-10-31 16:31:39.407617+00	2
144	188.170.83.121	2017-10-31 16:43:49.272574+00	1
145	66.249.79.151	2017-10-31 16:54:22.016209+00	2
146	5.18.234.126	2017-10-31 17:51:19.839322+00	1
147	5.18.234.126	2017-10-31 17:51:43.89008+00	2
148	46.228.15.213	2017-10-31 18:33:23.337949+00	2
149	46.228.15.213	2017-10-31 18:33:35.35788+00	1
150	217.236.245.39	2017-10-31 22:01:34.611577+00	1
151	188.170.72.169	2017-10-31 22:20:40.92301+00	2
152	188.170.72.169	2017-10-31 22:21:06.328172+00	1
153	66.249.69.47	2017-11-01 03:44:01.815498+00	1
154	69.58.178.57	2017-11-01 06:20:15.572755+00	2
155	69.58.178.57	2017-11-01 06:20:59.133042+00	1
156	145.255.233.146	2017-11-01 08:53:57.211897+00	2
157	142.59.140.207	2017-11-01 12:51:42.85786+00	2
158	91.209.128.56	2017-11-01 14:04:40.842586+00	1
159	91.209.128.56	2017-11-01 14:04:57.519632+00	2
160	178.66.63.9	2017-11-02 06:23:55.102011+00	2
161	178.66.63.9	2017-11-02 06:27:30.491494+00	1
162	5.45.207.10	2017-11-02 07:21:24.458836+00	2
163	188.170.81.223	2017-11-02 14:51:14.99141+00	2
164	178.71.35.241	2017-11-02 17:53:26.203671+00	2
165	217.73.142.196	2017-11-02 20:30:53.26421+00	1
166	188.170.80.194	2017-11-02 20:49:29.040462+00	2
167	176.221.15.122	2017-11-03 13:54:55.631035+00	2
168	176.221.15.122	2017-11-03 13:56:07.507279+00	1
169	178.70.244.130	2017-11-03 19:00:57.084889+00	1
170	178.70.244.130	2017-11-03 21:23:06.803822+00	2
171	92.221.128.79	2017-11-03 22:48:04.271627+00	1
172	91.122.50.138	2017-11-04 07:33:17.025871+00	2
173	91.122.50.138	2017-11-04 07:33:24.049969+00	1
174	69.58.178.58	2017-11-04 10:18:06.451756+00	2
175	69.58.178.58	2017-11-04 10:18:09.287047+00	1
176	188.170.73.178	2017-11-04 12:08:36.698242+00	2
177	188.170.73.178	2017-11-04 12:18:12.113191+00	1
178	95.55.146.47	2017-11-05 01:34:18.324339+00	2
179	83.143.245.4	2017-11-05 02:39:09.925026+00	1
180	95.55.146.47	2017-11-05 04:54:30.319631+00	1
181	178.154.200.21	2017-11-05 09:48:13.774477+00	2
182	176.32.189.238	2017-11-05 18:20:32.210702+00	2
183	176.32.189.238	2017-11-05 18:28:56.288311+00	1
184	178.66.63.34	2017-11-06 01:06:56.454373+00	2
185	178.66.63.34	2017-11-06 04:36:54.492766+00	1
186	178.140.196.180	2017-11-06 15:15:01.427044+00	1
187	178.154.200.21	2017-11-07 15:15:56.782046+00	1
188	178.71.235.97	2017-11-07 20:38:20.319247+00	2
189	63.110.243.242	2017-11-07 20:41:21.821735+00	1
190	178.71.235.97	2017-11-07 23:33:20.885463+00	1
191	188.170.83.62	2017-11-08 11:45:04.301562+00	2
192	184.153.15.194	2017-11-08 16:56:40.936412+00	2
193	92.100.137.9	2017-11-08 22:24:52.949919+00	1
194	188.170.75.185	2017-11-09 06:17:11.519891+00	2
195	92.100.137.9	2017-11-09 19:07:25.376443+00	2
196	188.170.72.121	2017-11-10 11:15:47.134427+00	1
197	137.74.203.194	2017-11-11 04:52:54.198337+00	2
198	185.14.186.245	2017-11-11 20:44:09.99191+00	2
199	185.14.186.245	2017-11-11 20:49:11.396457+00	1
200	128.234.237.148	2017-11-11 22:26:09.290837+00	1
201	62.44.135.179	2017-11-12 11:15:42.74773+00	1
202	178.69.36.179	2017-11-12 12:24:43.158951+00	2
203	178.69.36.179	2017-11-12 13:29:38.467546+00	1
204	46.42.135.85	2017-11-12 15:49:53.441528+00	2
205	66.249.79.68	2017-11-13 08:13:27.330933+00	1
206	5.35.58.221	2017-11-16 01:10:43.010252+00	1
207	188.170.74.175	2017-11-16 06:15:11.702234+00	2
208	188.32.253.117	2017-11-16 08:06:45.844418+00	1
209	81.28.194.14	2017-11-16 20:48:49.935532+00	1
210	178.69.60.102	2017-11-17 01:32:32.331561+00	2
211	176.77.2.46	2017-11-17 03:42:32.384651+00	2
212	84.92.231.237	2017-11-17 14:23:49.639316+00	2
213	95.108.181.88	2017-11-18 04:01:00.031353+00	2
214	64.124.138.166	2017-11-18 05:40:48.362792+00	1
215	66.249.66.82	2017-11-18 10:02:13.517338+00	2
216	95.24.5.231	2017-11-18 13:25:56.902902+00	2
217	95.55.183.226	2017-11-19 03:12:50.002742+00	1
218	85.191.221.135	2017-11-19 16:11:10.01047+00	1
219	66.249.64.207	2017-11-19 23:19:38.827914+00	2
220	66.249.66.81	2017-11-20 11:45:44.683064+00	1
221	157.55.39.37	2017-11-20 23:15:40.923628+00	1
222	211.115.79.122	2017-11-21 04:05:43.014945+00	1
223	211.115.79.122	2017-11-21 04:05:43.923025+00	2
224	176.193.158.210	2017-11-21 09:45:43.945987+00	2
225	93.54.45.207	2017-11-21 12:31:32.863172+00	1
226	95.55.119.238	2017-11-21 19:22:25.89272+00	1
227	64.124.138.166	2017-11-22 18:34:29.870679+00	2
228	112.211.19.148	2017-11-22 18:39:11.875857+00	1
229	109.61.32.41	2017-11-22 18:56:57.307527+00	1
230	61.177.20.67	2017-11-23 05:44:04.723233+00	2
231	61.177.20.67	2017-11-23 05:44:05.703522+00	1
232	91.122.82.118	2017-11-23 06:00:31.082352+00	2
233	91.122.82.118	2017-11-23 06:00:43.798881+00	1
234	207.46.13.54	2017-11-24 05:38:19.945137+00	2
235	188.170.81.75	2017-11-24 09:31:26.093745+00	1
236	157.55.39.83	2017-11-24 13:10:51.832637+00	1
237	195.190.102.30	2017-11-24 16:21:44.346338+00	1
238	188.170.74.157	2017-11-24 16:21:45.917944+00	1
239	31.134.134.229	2017-11-25 19:01:39.261365+00	1
240	180.76.15.18	2017-11-26 10:11:08.679299+00	1
241	178.67.255.143	2017-11-26 17:31:45.21188+00	2
242	178.67.255.143	2017-11-26 17:44:07.958654+00	1
243	95.215.45.52	2017-11-27 03:16:14.533071+00	2
244	141.8.142.25	2017-11-27 06:56:12.928507+00	1
245	188.170.75.196	2017-11-27 07:47:29.968407+00	2
246	188.170.75.196	2017-11-27 07:48:00.301676+00	1
247	188.170.82.10	2017-11-27 11:25:55.469061+00	1
248	47.196.1.68	2017-11-27 15:02:32.002281+00	1
249	164.132.161.81	2017-11-27 20:31:57.542473+00	1
250	94.142.27.81	2017-11-27 21:12:42.558592+00	1
251	94.142.27.81	2017-11-27 21:12:47.523741+00	2
252	180.76.15.27	2017-11-27 21:14:37.896202+00	1
253	178.252.127.226	2017-11-28 09:53:09.452215+00	1
254	71.112.171.87	2017-11-28 20:04:14.393048+00	2
255	188.170.75.160	2017-11-29 18:17:04.177655+00	1
256	207.46.13.177	2017-11-29 19:46:42.904343+00	2
257	78.37.141.244	2017-11-29 21:57:40.410779+00	1
258	78.37.141.244	2017-11-30 00:55:50.493345+00	2
259	188.170.72.102	2017-11-30 10:05:27.755287+00	1
260	5.18.243.241	2017-11-30 12:33:27.230452+00	2
261	93.187.185.214	2017-11-30 12:50:17.214307+00	1
262	78.37.131.40	2017-11-30 21:15:39.779285+00	2
263	78.37.131.40	2017-11-30 21:15:44.503501+00	1
264	94.25.229.20	2017-12-01 09:05:56.767957+00	2
265	217.66.152.213	2017-12-01 11:21:35.559467+00	1
266	217.66.152.213	2017-12-01 11:21:37.04842+00	2
267	91.122.182.123	2017-12-01 22:39:34.015959+00	2
268	47.196.1.68	2017-12-02 16:46:51.526371+00	2
269	95.55.182.227	2017-12-03 06:09:14.438941+00	2
270	217.182.132.181	2017-12-03 22:09:28.977753+00	2
271	84.52.118.15	2017-12-04 15:34:25.948787+00	1
272	84.52.118.15	2017-12-04 15:35:23.563511+00	2
273	78.73.29.132	2017-12-04 19:57:41.542718+00	1
274	37.9.113.123	2017-12-05 01:52:35.851956+00	2
275	178.154.171.59	2017-12-05 01:52:39.744746+00	1
276	217.182.132.178	2017-12-05 11:27:44.873273+00	1
277	188.243.64.137	2017-12-05 21:26:57.817656+00	1
278	101.109.108.129	2017-12-06 01:29:50.228647+00	1
279	84.52.118.15	2017-12-08 16:10:11.421942+00	3
280	52.90.33.223	2017-12-08 16:10:31.505249+00	3
281	217.66.157.209	2017-12-08 16:10:35.544021+00	3
282	108.168.151.15	2017-12-08 16:11:07.263158+00	3
283	188.170.74.128	2017-12-08 17:01:19.613632+00	3
284	188.170.80.195	2017-12-08 18:48:25.232145+00	3
285	66.249.64.207	2017-12-08 21:13:28.066653+00	3
286	91.122.83.63	2017-12-08 21:59:17.681844+00	3
287	91.122.83.63	2017-12-09 07:13:52.094833+00	1
288	5.228.47.99	2017-12-09 08:08:24.169684+00	1
289	188.170.80.175	2017-12-09 16:56:19.053002+00	3
290	40.77.167.94	2017-12-10 21:29:25.282026+00	1
291	95.55.145.117	2017-12-10 22:52:25.825628+00	3
292	95.55.145.117	2017-12-10 22:52:32.1311+00	2
293	188.170.73.5	2017-12-11 11:56:54.504787+00	3
294	5.45.207.10	2017-12-11 15:01:45.872788+00	3
295	217.66.159.69	2017-12-11 16:32:54.637532+00	3
296	91.122.83.157	2017-12-11 23:44:33.09329+00	3
297	211.115.79.122	2017-12-12 04:08:36.48015+00	3
298	138.75.147.87	2017-12-12 13:10:23.513102+00	1
299	178.71.21.228	2017-12-13 07:17:52.120202+00	3
300	66.249.66.207	2017-12-13 13:09:44.792456+00	2
301	88.201.200.59	2017-12-13 21:49:05.499419+00	1
302	81.157.61.122	2017-12-13 23:25:38.299674+00	1
303	47.196.48.165	2017-12-14 00:15:49.124804+00	2
304	91.122.82.53	2017-12-14 00:28:05.001808+00	2
305	91.122.82.53	2017-12-14 00:28:18.34927+00	3
306	107.150.37.100	2017-12-14 04:33:04.520978+00	1
307	107.150.37.100	2017-12-14 04:33:14.348532+00	2
308	188.32.18.237	2017-12-14 11:00:45.731673+00	1
309	61.177.20.67	2017-12-14 19:12:23.457125+00	3
310	186.67.23.122	2017-12-14 20:08:38.951987+00	1
311	1.34.112.65	2017-12-15 02:27:15.568071+00	1
312	178.70.247.79	2017-12-15 17:03:17.870674+00	3
313	178.70.247.79	2017-12-15 17:03:25.682672+00	2
314	178.70.247.79	2017-12-15 17:03:28.462034+00	1
315	88.198.94.196	2017-12-16 14:38:10.403902+00	2
316	88.198.94.196	2017-12-16 14:38:14.683187+00	1
317	5.18.239.106	2017-12-16 15:35:45.905831+00	1
318	137.74.207.102	2017-12-17 06:07:57.988688+00	3
319	162.158.111.184	2017-12-17 12:38:45.09287+00	1
320	172.69.54.162	2017-12-17 17:24:42.93783+00	3
321	162.158.75.229	2017-12-17 20:47:35.122817+00	3
322	188.114.102.19	2017-12-17 20:53:00.149141+00	3
323	141.101.77.119	2017-12-17 20:59:39.334599+00	2
324	188.114.102.19	2017-12-17 22:53:11.788927+00	1
325	141.101.76.139	2017-12-18 03:18:36.742281+00	2
326	141.101.76.139	2017-12-18 03:33:06.736324+00	1
327	162.158.238.158	2017-12-18 07:23:26.447618+00	3
328	172.69.22.179	2017-12-18 22:55:30.453463+00	1
329	162.158.74.6	2017-12-19 03:31:27.629278+00	1
330	172.69.22.179	2017-12-19 04:53:49.850876+00	2
331	188.114.102.43	2017-12-19 19:41:11.982656+00	3
332	172.69.62.145	2017-12-19 20:44:29.570735+00	1
333	172.68.65.201	2017-12-20 08:58:50.014503+00	3
334	172.69.62.79	2017-12-20 09:14:10.494539+00	2
335	162.158.155.23	2017-12-20 10:57:54.02885+00	2
336	172.68.174.67	2017-12-20 21:23:19.782651+00	1
337	141.101.99.32	2017-12-21 00:09:57.031597+00	2
338	188.114.102.247	2017-12-21 11:21:56.049475+00	1
339	162.158.179.241	2017-12-21 11:40:47.238351+00	1
340	162.158.102.253	2017-12-21 18:42:12.460272+00	1
341	162.158.102.229	2017-12-21 18:57:22.297389+00	1
342	162.158.102.229	2017-12-21 18:57:35.624898+00	3
343	172.69.69.7	2017-12-21 20:26:28.834917+00	1
344	188.114.102.145	2017-12-21 20:29:35.24658+00	3
345	188.114.102.163	2017-12-21 22:49:40.652065+00	3
346	188.114.102.163	2017-12-21 22:50:36.869277+00	2
347	188.114.102.163	2017-12-21 22:50:45.387869+00	1
348	198.41.230.7	2017-12-22 03:58:57.588861+00	3
349	172.69.70.104	2017-12-22 04:53:44.053769+00	2
350	173.245.48.108	2017-12-22 13:30:07.321744+00	1
351	141.101.104.212	2017-12-22 19:59:12.539946+00	2
352	162.158.154.112	2017-12-23 00:12:41.802561+00	3
353	172.69.69.181	2017-12-23 00:41:44.592136+00	2
354	162.158.102.241	2017-12-23 19:01:12.802266+00	3
355	162.158.138.37	2017-12-24 08:56:51.254466+00	3
356	162.158.154.148	2017-12-24 10:50:55.313712+00	3
357	162.158.154.148	2017-12-24 10:51:14.073732+00	2
358	188.114.102.217	2017-12-24 12:36:09.666177+00	3
359	162.158.111.76	2017-12-24 22:09:47.999397+00	3
360	188.114.103.32	2017-12-24 23:28:24.511526+00	3
361	188.114.103.32	2017-12-24 23:28:42.441065+00	1
362	162.158.102.175	2017-12-25 07:12:35.032524+00	3
363	141.101.76.241	2017-12-25 07:15:03.25887+00	3
364	188.114.103.20	2017-12-25 18:54:43.677232+00	1
365	188.114.102.79	2017-12-25 21:19:54.569168+00	3
366	188.114.102.79	2017-12-25 21:20:03.047386+00	1
367	172.69.54.138	2017-12-26 10:06:10.80179+00	3
368	141.101.77.227	2017-12-26 11:27:04.919651+00	1
369	172.68.65.213	2017-12-27 02:19:21.776768+00	1
370	172.69.54.12	2017-12-27 06:26:32.536593+00	1
371	162.158.166.92	2017-12-27 08:04:17.484908+00	1
372	172.68.174.85	2017-12-27 20:15:28.795134+00	3
373	162.158.165.253	2017-12-28 02:11:38.710314+00	1
374	141.101.105.225	2017-12-28 07:41:00.401923+00	1
375	141.101.105.225	2017-12-28 08:34:55.343019+00	3
376	162.158.102.163	2017-12-28 17:12:32.904048+00	3
377	172.68.10.187	2017-12-28 20:13:42.11973+00	3
378	172.68.51.37	2017-12-28 22:33:02.312205+00	1
379	162.158.234.97	2017-12-29 08:41:54.44236+00	1
380	162.158.134.199	2017-12-29 15:07:51.938403+00	1
381	198.41.242.32	2017-12-29 16:45:16.608503+00	1
382	162.158.75.43	2017-12-29 21:05:34.200082+00	1
383	188.114.103.14	2017-12-29 21:15:02.1247+00	1
384	188.114.103.14	2017-12-29 21:50:37.900312+00	4
385	108.162.216.97	2017-12-30 03:41:47.714806+00	2
386	162.158.202.157	2017-12-30 08:45:10.534733+00	2
387	188.114.102.49	2017-12-30 13:34:36.650759+00	4
388	141.101.104.236	2017-12-30 14:42:01.647164+00	1
389	141.101.98.85	2017-12-30 14:46:40.744297+00	1
390	162.158.155.23	2017-12-30 14:46:40.760309+00	1
391	172.68.254.238	2017-12-31 00:55:51.635275+00	2
392	172.68.65.141	2017-12-31 10:12:20.434555+00	4
393	172.69.70.164	2017-12-31 12:16:25.950138+00	3
394	172.68.174.55	2018-01-01 16:31:08.530756+00	2
395	172.68.174.61	2018-01-01 18:12:49.71423+00	3
396	162.158.92.139	2018-01-01 19:00:38.36028+00	1
397	162.158.154.82	2018-01-01 19:42:11.587701+00	1
398	141.101.76.97	2018-01-01 20:02:30.502432+00	3
399	162.158.154.64	2018-01-01 22:50:15.54158+00	4
400	162.158.154.64	2018-01-01 22:50:21.090366+00	3
401	141.101.104.158	2018-01-02 07:39:06.024372+00	4
402	162.158.146.139	2018-01-02 15:45:40.652863+00	3
403	162.158.146.139	2018-01-02 15:45:51.027364+00	2
404	162.158.146.139	2018-01-02 15:45:52.466495+00	4
405	172.68.174.13	2018-01-02 15:48:39.356682+00	1
406	141.101.105.9	2018-01-02 19:45:57.070938+00	2
407	141.101.105.9	2018-01-02 19:45:58.681089+00	3
408	141.101.105.9	2018-01-02 19:46:00.271548+00	4
409	172.68.174.79	2018-01-02 21:35:53.381323+00	4
410	141.101.107.111	2018-01-03 21:59:48.659074+00	3
411	141.101.107.111	2018-01-03 21:59:49.953688+00	4
412	141.101.107.111	2018-01-03 21:59:50.519718+00	2
413	188.114.103.44	2018-01-03 22:57:25.618533+00	4
414	172.68.143.63	2018-01-04 08:38:46.466405+00	1
415	162.158.146.163	2018-01-04 13:32:23.218767+00	2
416	162.158.146.109	2018-01-04 14:18:44.32635+00	1
417	162.158.93.24	2018-01-04 20:56:16.41595+00	4
418	172.68.142.92	2018-01-05 13:31:49.464207+00	1
419	172.68.25.181	2018-01-05 15:06:52.749903+00	1
420	172.68.46.182	2018-01-05 19:28:51.799656+00	4
421	172.68.46.182	2018-01-05 19:28:52.932552+00	2
422	172.68.46.182	2018-01-05 19:29:05.73741+00	3
423	172.68.245.160	2018-01-05 19:55:59.060108+00	4
424	162.158.89.4	2018-01-06 08:25:28.725605+00	4
425	172.68.244.249	2018-01-06 09:24:18.523461+00	3
426	162.158.89.142	2018-01-06 13:31:14.65195+00	1
427	162.158.79.74	2018-01-06 16:35:10.431585+00	3
428	141.101.77.203	2018-01-06 17:17:14.199025+00	1
429	141.101.97.74	2018-01-06 23:10:09.569502+00	1
430	162.158.88.35	2018-01-06 23:28:03.160247+00	4
431	141.101.104.182	2018-01-07 06:16:52.002063+00	4
432	172.68.182.61	2018-01-07 11:34:22.649787+00	1
433	172.68.102.79	2018-01-08 01:28:49.677544+00	4
434	172.68.253.176	2018-01-08 07:44:46.427296+00	3
435	141.101.77.179	2018-01-08 08:22:33.648925+00	1
436	188.114.102.37	2018-01-08 10:34:39.271249+00	3
437	172.68.132.236	2018-01-08 12:03:45.644377+00	1
438	162.158.182.139	2018-01-08 15:05:02.004103+00	1
439	172.68.10.205	2018-01-08 15:22:54.356879+00	4
440	172.68.244.189	2018-01-09 04:42:42.38264+00	3
441	162.158.93.72	2018-01-09 11:45:17.173022+00	4
442	172.68.245.214	2018-01-09 14:34:50.52196+00	4
443	172.68.246.203	2018-01-09 14:43:24.907701+00	3
444	172.68.239.86	2018-01-09 15:18:18.358254+00	3
445	162.158.74.168	2018-01-09 18:38:53.188024+00	4
446	162.158.91.56	2018-01-09 21:13:59.107781+00	4
447	162.158.183.50	2018-01-10 08:41:11.639855+00	4
448	162.158.89.124	2018-01-10 22:57:08.335212+00	3
449	162.158.92.157	2018-01-10 23:37:28.97168+00	4
450	162.158.183.8	2018-01-11 06:06:55.587073+00	4
451	172.68.11.218	2018-01-11 08:43:06.240683+00	2
452	108.162.229.85	2018-01-11 12:48:07.516278+00	3
453	108.162.212.164	2018-01-11 19:23:32.961798+00	1
454	141.101.69.216	2018-01-11 23:19:59.944172+00	2
455	103.31.5.56	2018-01-12 00:40:35.188752+00	1
456	172.69.54.78	2018-01-12 11:18:15.253684+00	1
457	162.158.150.61	2018-01-12 14:56:01.20638+00	1
458	172.68.211.67	2018-01-13 03:50:10.120729+00	1
459	141.101.77.197	2018-01-14 07:24:32.589964+00	4
460	172.68.254.111	2018-01-14 15:39:16.54346+00	2
461	162.158.182.157	2018-01-14 19:22:05.484703+00	1
462	108.162.215.211	2018-01-14 20:04:32.773914+00	1
463	162.158.138.7	2018-01-15 04:07:01.883659+00	1
464	162.158.165.241	2018-01-15 05:47:12.232195+00	1
465	162.158.165.151	2018-01-15 07:59:23.243299+00	3
466	162.158.182.169	2018-01-15 16:45:26.165379+00	4
467	162.158.91.182	2018-01-15 16:59:49.264992+00	4
468	162.158.88.59	2018-01-15 19:30:46.700584+00	4
469	162.158.93.18	2018-01-15 22:12:57.338932+00	4
470	103.31.4.235	2018-01-16 03:08:30.268559+00	4
471	172.68.11.176	2018-01-16 12:20:08.538142+00	1
472	162.158.167.159	2018-01-16 13:41:52.349557+00	3
473	172.68.133.213	2018-01-17 02:58:25.442962+00	1
474	172.68.133.213	2018-01-17 03:00:05.201567+00	2
475	172.68.62.229	2018-01-17 07:45:52.508111+00	1
476	172.68.47.51	2018-01-17 09:31:24.504517+00	3
477	141.101.77.245	2018-01-17 09:48:29.998043+00	1
478	172.68.245.166	2018-01-17 13:57:59.965831+00	4
479	162.158.126.49	2018-01-17 17:13:22.51108+00	1
480	162.158.91.98	2018-01-17 18:05:20.80634+00	4
481	188.114.110.13	2018-01-17 23:55:34.808672+00	1
482	162.158.183.86	2018-01-18 05:52:35.66334+00	4
483	172.68.245.244	2018-01-18 06:32:36.223761+00	4
484	162.158.183.8	2018-01-18 13:40:10.612808+00	3
485	66.249.66.155	2018-01-18 20:33:40.1219+00	4
486	108.162.221.235	2018-01-19 02:54:40.041148+00	4
487	162.158.92.211	2018-01-19 10:44:05.734129+00	1
488	172.68.244.153	2018-01-19 13:16:09.527896+00	4
489	172.68.102.109	2018-01-20 15:43:08.378961+00	1
490	162.158.92.229	2018-01-20 20:49:13.480958+00	4
491	162.158.165.139	2018-01-21 01:38:06.209975+00	2
492	162.158.90.159	2018-01-21 02:11:07.534625+00	1
493	162.158.111.106	2018-01-21 08:00:36.547255+00	1
494	162.158.92.175	2018-01-21 08:54:11.304195+00	1
495	162.158.165.169	2018-01-22 00:19:46.709801+00	1
496	172.68.182.97	2018-01-22 09:46:27.106058+00	4
497	172.68.244.141	2018-01-22 14:32:55.942872+00	2
498	162.158.146.67	2018-01-22 15:00:14.387757+00	4
499	162.158.91.146	2018-01-22 18:48:35.230242+00	4
500	162.158.91.146	2018-01-22 18:48:48.046886+00	3
501	162.158.79.86	2018-01-22 19:04:39.141793+00	2
502	162.158.78.139	2018-01-22 19:04:40.181348+00	3
503	173.245.54.22	2018-01-22 19:04:41.01579+00	4
504	162.158.78.133	2018-01-22 19:04:42.699104+00	1
505	162.158.90.69	2018-01-22 20:25:52.067107+00	4
506	162.158.90.69	2018-01-22 20:25:55.775934+00	3
507	162.158.90.69	2018-01-22 20:25:58.683547+00	2
508	162.158.90.69	2018-01-22 20:26:20.258812+00	1
509	162.158.91.92	2018-01-23 13:12:09.600996+00	3
510	162.158.182.229	2018-01-23 22:34:31.21665+00	3
511	172.68.11.74	2018-01-24 07:13:31.783673+00	4
512	172.68.11.212	2018-01-24 14:25:30.767308+00	2
513	162.158.90.75	2018-01-24 23:08:17.54399+00	1
514	172.68.206.61	2018-01-25 09:04:18.905782+00	3
515	172.68.144.100	2018-01-25 09:10:25.065406+00	3
516	162.158.90.87	2018-01-25 21:02:29.674938+00	4
517	162.158.90.87	2018-01-25 21:02:40.786621+00	2
518	162.158.92.67	2018-01-26 00:26:01.18772+00	1
519	162.158.238.79	2018-01-26 14:40:46.747936+00	1
520	162.158.166.80	2018-01-27 00:23:27.776586+00	4
521	162.158.166.80	2018-01-27 00:23:28.064329+00	2
522	162.158.166.80	2018-01-27 00:23:29.473925+00	3
523	162.158.93.96	2018-01-27 01:24:02.387583+00	1
524	162.158.255.121	2018-01-28 06:30:30.522441+00	1
525	162.158.92.133	2018-01-28 10:49:42.183324+00	1
526	188.114.110.199	2018-01-28 14:58:38.146878+00	1
527	172.68.102.79	2018-01-28 16:42:40.849443+00	3
528	141.101.77.185	2018-01-28 16:54:08.544794+00	3
529	172.68.102.91	2018-01-28 19:40:03.064583+00	3
530	172.68.244.183	2018-01-29 07:46:09.941729+00	2
531	141.101.98.205	2018-01-29 09:56:49.855783+00	3
532	162.158.92.163	2018-01-29 13:59:35.648121+00	1
533	162.158.167.39	2018-01-30 00:47:32.332746+00	2
534	172.68.146.11	2018-01-30 08:05:43.41006+00	3
535	141.101.104.68	2018-01-30 08:36:25.423221+00	1
536	172.68.102.49	2018-01-30 15:04:26.209361+00	3
537	162.158.146.37	2018-01-31 01:04:49.928308+00	3
538	162.158.167.243	2018-01-31 03:45:14.581613+00	3
539	172.68.114.19	2018-01-31 14:26:40.005857+00	3
540	141.101.98.193	2018-01-31 20:00:54.369945+00	3
541	172.68.144.112	2018-02-01 02:23:15.711203+00	3
542	172.68.10.13	2018-02-01 08:37:12.876993+00	4
543	172.68.10.13	2018-02-01 09:45:55.084013+00	1
544	172.68.143.195	2018-02-01 19:19:53.334293+00	1
545	162.158.166.194	2018-02-02 09:23:12.100616+00	3
546	162.158.93.60	2018-02-02 15:12:07.610638+00	1
547	162.158.182.55	2018-02-03 16:15:42.322436+00	4
548	162.158.182.55	2018-02-03 17:33:25.176808+00	3
549	172.68.65.165	2018-02-04 02:01:02.042364+00	3
550	108.162.210.157	2018-02-04 05:03:52.209142+00	1
551	172.68.144.4	2018-02-04 06:06:44.238661+00	3
552	172.68.11.194	2018-02-04 19:31:20.767899+00	3
553	172.68.186.25	2018-02-04 21:09:29.68282+00	3
554	162.158.89.58	2018-02-04 21:34:29.914497+00	1
555	162.158.166.98	2018-02-04 22:36:07.736372+00	1
556	172.69.62.19	2018-02-05 07:52:39.62135+00	1
557	172.68.186.31	2018-02-05 09:12:48.075919+00	3
558	162.158.167.159	2018-02-05 11:40:21.33763+00	1
559	162.158.155.71	2018-02-05 11:43:00.924301+00	1
560	162.158.222.25	2018-02-05 12:44:24.824254+00	1
561	162.158.91.206	2018-02-05 13:17:06.297655+00	1
562	162.158.91.20	2018-02-05 13:57:30.534921+00	1
563	162.158.93.48	2018-02-05 14:29:24.427716+00	1
564	141.101.99.122	2018-02-05 15:03:37.271316+00	1
565	172.68.245.52	2018-02-05 18:02:12.200486+00	1
566	188.114.110.253	2018-02-05 19:05:37.308194+00	1
567	162.158.91.8	2018-02-05 20:28:00.322077+00	4
568	162.158.167.51	2018-02-06 04:58:18.605019+00	1
569	162.158.58.114	2018-02-06 12:31:35.268024+00	1
570	172.68.94.139	2018-02-06 13:55:46.358043+00	1
571	108.162.246.122	2018-02-06 17:07:31.569943+00	1
572	162.158.92.121	2018-02-06 17:22:03.016714+00	3
573	172.68.58.206	2018-02-07 06:54:35.268817+00	3
574	162.158.146.79	2018-02-07 07:05:58.950787+00	1
575	108.162.216.55	2018-02-07 07:29:27.349993+00	1
576	188.114.110.163	2018-02-07 08:15:53.159179+00	3
577	162.158.88.23	2018-02-07 15:38:28.37677+00	1
578	172.69.62.19	2018-02-07 17:59:49.373761+00	3
579	108.162.238.110	2018-02-07 19:16:48.275789+00	1
580	172.68.58.194	2018-02-07 21:24:54.394506+00	1
581	108.162.229.181	2018-02-07 22:17:46.85108+00	1
582	162.158.74.72	2018-02-07 23:38:01.072396+00	4
583	141.101.105.39	2018-02-08 05:29:27.623774+00	3
584	141.101.105.39	2018-02-08 05:29:33.70489+00	2
585	141.101.105.39	2018-02-08 05:45:02.404673+00	1
586	172.68.144.124	2018-02-08 07:45:22.849476+00	3
587	162.158.238.49	2018-02-08 07:54:03.24144+00	1
588	162.158.111.52	2018-02-08 10:50:41.789569+00	1
589	141.101.98.253	2018-02-08 11:25:02.665645+00	3
590	162.158.165.193	2018-02-08 15:03:24.212817+00	1
591	108.162.216.139	2018-02-09 02:49:39.469764+00	1
592	141.101.96.165	2018-02-09 08:04:45.914913+00	3
593	108.162.249.211	2018-02-09 08:05:57.223158+00	1
594	108.162.229.205	2018-02-09 10:12:24.395504+00	3
595	172.68.245.52	2018-02-09 14:32:48.256035+00	3
596	141.101.69.144	2018-02-09 14:52:27.13866+00	3
597	162.158.63.205	2018-02-10 08:46:18.687125+00	1
598	141.101.77.53	2018-02-10 13:14:27.074711+00	3
599	162.158.182.127	2018-02-10 14:52:55.838319+00	3
600	162.158.182.127	2018-02-10 14:56:57.155287+00	4
601	162.158.74.36	2018-02-10 21:46:46.897982+00	1
602	162.158.166.8	2018-02-10 22:51:53.018165+00	3
603	172.68.144.94	2018-02-11 08:39:15.489958+00	3
604	162.158.182.199	2018-02-11 16:58:47.196308+00	4
605	172.68.245.202	2018-02-11 22:38:35.473609+00	4
606	172.68.144.58	2018-02-11 23:02:00.934281+00	4
607	172.68.144.58	2018-02-11 23:02:01.833391+00	2
608	172.68.144.58	2018-02-11 23:02:04.372518+00	3
609	141.101.102.91	2018-02-12 03:55:09.97292+00	1
610	108.162.229.229	2018-02-12 20:28:43.539659+00	1
611	198.41.226.163	2018-02-12 22:08:01.586741+00	2
612	162.158.90.117	2018-02-13 02:24:47.35401+00	1
613	162.158.90.117	2018-02-13 02:24:54.318444+00	4
614	162.158.92.85	2018-02-13 02:25:09.441134+00	3
615	162.158.92.85	2018-02-13 02:25:40.981391+00	2
616	172.69.69.187	2018-02-13 02:39:46.17032+00	3
617	172.69.69.187	2018-02-13 02:39:51.141681+00	2
618	172.69.69.187	2018-02-13 02:40:01.790291+00	4
619	141.101.69.168	2018-02-13 17:28:24.153314+00	1
620	172.69.62.91	2018-02-13 18:58:02.912503+00	4
621	108.162.221.79	2018-02-13 20:16:54.972703+00	3
622	141.101.96.149	2018-02-13 21:44:33.889166+00	3
623	108.162.249.49	2018-02-14 01:31:31.512654+00	3
624	162.158.150.85	2018-02-14 13:34:15.393495+00	1
625	141.101.105.51	2018-02-14 16:21:57.253934+00	1
626	173.245.54.10	2018-02-15 22:47:10.968671+00	4
627	162.158.63.7	2018-02-15 23:42:10.22907+00	1
628	172.68.58.50	2018-02-16 06:18:23.364515+00	3
629	108.162.221.235	2018-02-16 09:22:47.540037+00	3
630	172.68.246.227	2018-02-16 09:36:29.940527+00	3
631	108.162.216.121	2018-02-16 13:36:09.413181+00	1
632	162.158.75.91	2018-02-16 15:19:53.124888+00	1
633	172.68.144.106	2018-02-16 18:31:46.137083+00	3
634	162.158.91.50	2018-02-16 23:45:37.910229+00	1
635	172.69.71.21	2018-02-17 03:11:16.974883+00	1
636	162.158.62.96	2018-02-17 04:31:51.365374+00	1
637	172.69.54.156	2018-02-17 06:42:12.092644+00	4
638	108.162.229.103	2018-02-17 07:52:41.029455+00	1
639	141.101.107.69	2018-02-17 12:24:51.72103+00	3
640	162.158.202.67	2018-02-17 18:38:32.044478+00	1
641	162.158.165.79	2018-02-17 21:41:15.634588+00	1
642	172.69.70.164	2018-02-18 00:49:25.471469+00	1
643	173.245.52.160	2018-02-18 04:47:28.041686+00	3
644	162.158.166.92	2018-02-18 10:57:43.748832+00	4
645	162.158.79.38	2018-02-18 13:44:04.318306+00	2
646	162.158.111.172	2018-02-18 20:37:07.459114+00	3
647	172.68.144.220	2018-02-19 01:14:00.648532+00	3
648	172.68.222.13	2018-02-19 02:37:39.160722+00	1
649	197.234.242.25	2018-02-19 07:08:28.124565+00	1
650	172.68.150.43	2018-02-19 08:59:12.187413+00	1
651	141.101.98.55	2018-02-19 11:33:37.025212+00	1
652	172.68.186.19	2018-02-19 12:28:53.204946+00	1
653	162.158.166.200	2018-02-19 12:30:06.313805+00	3
654	141.101.77.101	2018-02-19 16:34:22.091834+00	2
655	162.158.111.154	2018-02-19 17:36:42.650302+00	3
656	162.158.165.55	2018-02-20 01:56:25.638466+00	3
657	162.158.134.169	2018-02-20 09:20:30.457953+00	1
658	141.101.107.141	2018-02-20 09:41:35.490186+00	3
659	162.158.79.242	2018-02-20 11:51:25.595943+00	3
660	198.41.230.73	2018-02-20 13:32:58.196602+00	1
661	162.158.78.121	2018-02-20 19:39:35.08827+00	1
662	172.68.65.171	2018-02-21 00:19:50.136666+00	1
663	198.41.230.13	2018-02-21 12:38:58.165191+00	1
664	172.68.186.55	2018-02-21 14:51:58.373403+00	1
665	108.162.216.181	2018-02-21 18:35:20.328039+00	1
666	172.68.51.109	2018-02-21 19:04:26.857536+00	1
667	162.158.91.116	2018-02-21 19:46:48.32383+00	1
668	108.162.216.199	2018-02-21 21:48:55.291389+00	3
669	108.162.216.55	2018-02-22 04:13:00.33386+00	2
670	162.158.75.253	2018-02-22 11:31:33.521898+00	1
671	162.158.90.135	2018-02-22 12:10:07.332164+00	1
672	162.158.122.9	2018-02-22 13:30:50.284511+00	2
673	162.158.122.9	2018-02-22 13:30:51.138188+00	3
674	162.158.122.9	2018-02-22 13:30:52.556501+00	4
675	141.101.96.170	2018-02-22 15:28:03.887135+00	3
676	172.68.198.31	2018-02-22 16:04:16.51158+00	1
677	172.68.51.97	2018-02-23 07:01:46.505701+00	1
678	173.245.48.60	2018-02-23 07:27:22.015679+00	3
679	162.158.155.59	2018-02-23 07:34:44.359592+00	1
680	172.68.144.28	2018-02-23 15:51:23.693854+00	1
681	172.68.142.62	2018-02-24 02:02:37.761927+00	3
682	162.158.79.38	2018-02-24 05:45:55.289472+00	3
683	172.69.69.151	2018-02-24 07:49:26.909067+00	2
684	172.68.174.79	2018-02-24 10:16:00.602199+00	3
685	172.68.47.33	2018-02-24 10:17:34.65076+00	1
686	141.101.107.15	2018-02-25 05:41:24.600737+00	1
687	172.69.54.18	2018-02-25 10:50:38.749957+00	1
688	162.158.134.181	2018-02-25 11:04:27.343898+00	1
689	172.68.182.37	2018-02-25 16:21:22.203742+00	1
690	172.69.23.60	2018-02-26 02:49:19.62719+00	4
691	162.158.138.67	2018-02-26 08:01:53.996763+00	1
692	172.68.244.159	2018-02-26 11:57:36.052192+00	3
693	172.69.23.60	2018-02-26 14:57:21.405596+00	3
694	172.68.245.100	2018-02-26 17:46:56.018367+00	1
695	172.68.189.52	2018-02-26 21:45:41.455683+00	2
696	162.158.146.49	2018-02-27 02:51:42.140035+00	1
697	162.158.2.169	2018-02-27 06:39:32.845448+00	3
698	141.101.105.9	2018-02-27 08:16:26.085654+00	1
699	162.158.92.223	2018-02-27 11:31:58.766786+00	3
700	172.69.71.21	2018-02-27 12:28:59.439321+00	4
701	162.158.126.25	2018-02-27 14:34:46.019323+00	3
702	162.158.90.21	2018-02-27 21:13:17.963559+00	4
703	162.158.90.21	2018-02-27 21:13:36.90977+00	3
704	162.158.90.21	2018-02-27 21:13:48.915325+00	2
705	162.158.90.21	2018-02-27 21:14:02.166536+00	1
706	162.158.91.92	2018-02-27 22:14:11.572656+00	1
707	172.68.58.110	2018-02-27 23:21:49.97193+00	1
708	172.68.58.254	2018-02-28 05:35:02.063115+00	1
709	108.162.221.157	2018-02-28 13:52:42.895026+00	1
710	162.158.90.225	2018-02-28 14:37:02.279422+00	1
711	162.158.154.160	2018-02-28 16:06:25.05334+00	3
712	188.114.110.169	2018-02-28 16:37:11.184069+00	1
713	108.162.215.199	2018-02-28 17:08:06.552412+00	1
714	162.158.79.26	2018-02-28 19:53:15.532995+00	1
715	162.158.134.79	2018-02-28 20:55:13.688303+00	1
716	172.68.239.122	2018-02-28 21:04:36.063522+00	1
717	172.69.23.42	2018-02-28 23:02:45.31896+00	3
718	108.162.215.103	2018-02-28 23:04:10.665894+00	3
719	141.101.98.121	2018-03-01 10:49:19.186762+00	1
720	141.101.98.145	2018-03-01 13:19:06.403052+00	1
721	162.158.63.145	2018-03-01 15:57:38.281508+00	1
722	162.158.91.68	2018-03-01 17:09:30.894863+00	1
723	108.162.219.7	2018-03-01 19:12:47.251141+00	3
724	162.158.78.73	2018-03-01 19:18:20.22182+00	4
725	162.158.90.183	2018-03-01 21:46:38.346127+00	1
726	108.162.212.194	2018-03-02 00:44:48.854141+00	1
727	108.162.246.80	2018-03-02 05:24:32.129948+00	1
728	172.69.22.209	2018-03-02 07:20:00.068037+00	3
729	172.69.22.119	2018-03-02 08:41:17.698567+00	3
730	162.158.91.248	2018-03-02 11:51:17.397095+00	1
731	108.162.241.211	2018-03-02 11:51:52.552092+00	1
732	108.162.216.19	2018-03-02 16:56:35.615505+00	1
733	162.158.126.37	2018-03-02 23:45:26.678474+00	1
734	162.158.238.121	2018-03-03 01:31:26.627948+00	3
735	162.158.6.241	2018-03-03 02:22:08.979671+00	1
736	108.162.229.115	2018-03-03 06:00:54.911808+00	4
737	108.162.229.115	2018-03-03 06:01:01.607763+00	3
738	108.162.229.115	2018-03-03 06:01:08.370916+00	2
739	172.68.34.97	2018-03-03 12:41:56.134658+00	1
740	108.162.229.115	2018-03-03 15:17:40.770818+00	1
741	162.158.89.190	2018-03-03 19:21:16.233847+00	1
742	162.158.142.109	2018-03-03 23:23:53.96806+00	1
743	162.158.30.55	2018-03-03 23:31:10.795712+00	3
744	162.158.91.32	2018-03-04 08:59:37.318838+00	1
745	172.69.71.27	2018-03-04 09:59:15.155577+00	3
746	172.68.186.85	2018-03-04 15:23:10.355304+00	1
747	172.69.33.26	2018-03-04 15:59:48.65943+00	3
748	172.68.10.169	2018-03-04 17:51:12.744836+00	3
749	162.158.202.151	2018-03-04 18:20:37.133964+00	1
750	172.69.23.36	2018-03-05 13:05:04.396686+00	1
751	141.101.99.68	2018-03-05 16:33:38.628564+00	1
752	108.162.221.97	2018-03-05 18:57:45.24667+00	1
753	172.68.25.31	2018-03-06 02:47:50.764926+00	1
754	172.68.46.248	2018-03-06 04:50:16.386143+00	1
755	162.158.88.89	2018-03-06 13:30:31.372946+00	1
756	162.158.150.55	2018-03-06 18:21:03.398868+00	1
757	162.158.111.64	2018-03-07 04:50:44.893695+00	1
758	162.158.78.85	2018-03-07 06:37:34.714703+00	2
759	162.158.154.76	2018-03-07 11:33:36.530286+00	1
760	108.162.210.157	2018-03-07 17:40:38.43386+00	4
761	162.158.79.200	2018-03-07 19:30:23.390842+00	4
762	162.158.222.91	2018-03-07 21:05:46.641228+00	3
763	172.69.62.67	2018-03-07 21:14:30.358196+00	3
764	162.158.88.35	2018-03-07 21:53:37.227943+00	1
765	162.158.243.86	2018-03-08 03:34:30.885781+00	1
766	162.158.154.130	2018-03-08 08:11:01.278094+00	3
767	172.69.70.110	2018-03-08 15:28:19.653915+00	1
768	141.101.88.7	2018-03-08 22:55:02.698515+00	1
769	172.68.46.206	2018-03-09 02:07:45.461763+00	1
770	141.101.76.205	2018-03-09 08:54:34.69325+00	3
771	141.101.76.229	2018-03-09 15:16:12.44302+00	1
772	162.158.91.14	2018-03-09 15:19:09.9488+00	4
773	162.158.91.14	2018-03-09 15:19:12.976276+00	2
774	162.158.91.14	2018-03-09 15:19:14.980985+00	3
775	162.158.58.24	2018-03-10 06:49:54.847529+00	1
776	172.68.58.230	2018-03-10 09:49:13.880311+00	1
777	141.101.99.194	2018-03-11 02:16:42.868944+00	1
778	108.162.241.151	2018-03-11 02:43:17.259638+00	1
779	162.158.238.31	2018-03-11 05:53:26.130104+00	4
780	172.68.132.140	2018-03-11 13:49:38.353429+00	4
781	172.68.62.31	2018-03-11 16:25:02.059392+00	1
782	188.114.110.25	2018-03-11 20:24:10.551652+00	1
783	172.69.69.235	2018-03-11 21:09:37.774141+00	1
784	162.158.214.43	2018-03-12 00:18:35.615374+00	1
785	108.162.238.14	2018-03-12 05:50:27.746336+00	1
786	141.101.99.104	2018-03-12 07:13:51.980013+00	3
787	162.158.78.49	2018-03-12 12:13:42.516885+00	1
788	172.68.54.103	2018-03-12 21:59:42.85154+00	1
789	172.69.70.104	2018-03-13 04:30:14.855749+00	1
790	141.101.88.55	2018-03-13 13:06:53.789032+00	1
791	162.158.183.44	2018-03-13 17:20:27.869699+00	1
792	162.158.165.157	2018-03-14 03:47:30.905493+00	1
793	141.101.69.42	2018-03-14 14:14:57.611119+00	4
794	141.101.69.42	2018-03-14 14:15:11.308486+00	3
795	141.101.69.42	2018-03-14 14:15:25.284719+00	2
796	162.158.222.103	2018-03-14 16:52:40.561816+00	1
797	141.101.69.210	2018-03-14 17:47:17.238851+00	1
798	172.68.34.79	2018-03-14 22:20:27.220187+00	1
799	172.68.63.92	2018-03-15 00:23:01.988073+00	1
800	172.68.253.134	2018-03-15 06:30:16.332555+00	3
801	172.69.22.83	2018-03-15 13:02:11.85772+00	3
802	172.68.144.184	2018-03-15 16:04:50.601268+00	1
803	172.68.25.235	2018-03-15 20:38:23.027901+00	1
804	162.158.214.55	2018-03-16 00:46:59.246916+00	3
805	162.158.78.97	2018-03-16 03:23:16.026469+00	4
806	162.158.78.97	2018-03-16 03:23:16.468441+00	3
807	162.158.78.97	2018-03-16 03:23:16.918038+00	2
808	172.68.186.49	2018-03-16 13:06:09.21326+00	1
809	172.68.58.152	2018-03-17 02:34:07.833242+00	1
810	162.158.222.7	2018-03-17 15:51:14.502947+00	1
811	141.101.97.85	2018-03-17 17:32:10.313936+00	1
812	172.68.141.193	2018-03-17 19:49:07.177079+00	1
813	162.158.22.67	2018-03-17 21:54:45.153137+00	1
814	172.68.255.137	2018-03-18 06:35:55.029006+00	3
815	141.101.98.7	2018-03-18 09:36:58.571072+00	1
816	172.68.63.14	2018-03-18 12:34:03.590153+00	1
817	172.69.62.187	2018-03-18 12:58:03.191075+00	4
818	172.68.10.67	2018-03-18 16:01:54.299013+00	1
819	172.68.141.163	2018-03-18 21:35:49.125683+00	1
820	162.158.92.139	2018-03-18 22:31:11.667011+00	4
821	173.245.48.60	2018-03-18 22:34:18.456427+00	1
822	162.158.179.109	2018-03-18 22:55:09.895378+00	1
823	172.68.174.79	2018-03-19 05:02:13.044741+00	1
824	162.158.238.13	2018-03-19 11:47:04.645211+00	1
825	172.68.255.179	2018-03-19 12:11:45.358315+00	1
826	172.68.25.217	2018-03-19 12:35:19.286223+00	1
827	188.114.110.61	2018-03-19 15:53:54.847964+00	1
828	162.158.75.241	2018-03-19 15:57:33.794926+00	1
829	162.158.75.31	2018-03-19 16:39:23.032725+00	1
830	162.158.63.211	2018-03-19 16:41:39.061773+00	1
831	141.101.107.129	2018-03-19 21:54:53.805694+00	1
832	172.68.51.211	2018-03-19 22:31:01.841618+00	1
833	188.114.110.229	2018-03-19 22:55:39.75206+00	1
834	172.69.142.19	2018-03-20 00:12:51.162117+00	1
835	141.101.99.110	2018-03-20 05:22:24.183835+00	3
836	172.68.254.195	2018-03-20 09:22:37.123799+00	1
837	141.101.99.44	2018-03-20 09:31:57.092467+00	3
838	172.68.253.236	2018-03-20 11:40:17.349348+00	3
839	108.162.210.103	2018-03-20 14:30:01.619074+00	1
840	172.68.51.193	2018-03-20 17:18:47.143506+00	1
841	162.158.142.91	2018-03-20 17:45:05.577246+00	1
842	162.158.93.42	2018-03-20 18:00:14.900833+00	1
843	162.158.79.122	2018-03-20 18:09:22.004796+00	1
844	162.158.142.43	2018-03-20 18:16:36.808006+00	1
845	162.158.202.7	2018-03-20 18:28:46.656956+00	1
846	162.158.122.69	2018-03-20 19:12:17.986055+00	3
847	172.68.141.223	2018-03-20 20:36:57.64169+00	1
848	141.101.104.182	2018-03-20 21:24:43.365658+00	3
849	172.68.126.43	2018-03-21 11:01:44.433277+00	1
850	172.68.254.93	2018-03-21 12:28:20.331007+00	3
851	172.68.51.61	2018-03-21 13:03:09.994523+00	1
852	172.68.174.49	2018-03-21 13:45:03.916304+00	3
853	198.41.230.241	2018-03-21 14:05:37.564449+00	1
854	172.68.50.211	2018-03-21 14:14:33.111645+00	1
855	162.158.38.253	2018-03-21 14:21:06.2748+00	1
856	108.162.219.163	2018-03-21 15:29:51.21239+00	3
857	162.158.202.109	2018-03-21 16:24:22.876316+00	1
858	172.68.46.26	2018-03-21 16:31:31.269392+00	1
859	172.68.174.109	2018-03-21 17:50:35.005859+00	1
860	162.158.214.49	2018-03-21 18:57:34.542184+00	1
861	162.158.89.106	2018-03-21 23:30:52.632308+00	1
862	162.158.93.162	2018-03-22 00:39:17.276933+00	4
863	162.158.93.162	2018-03-22 00:39:21.894025+00	3
864	162.158.93.162	2018-03-22 00:39:27.025381+00	2
865	162.158.93.162	2018-03-22 00:39:35.899141+00	1
866	172.68.144.166	2018-03-22 06:32:41.66511+00	3
867	162.158.154.172	2018-03-22 10:52:37.765243+00	1
868	172.68.226.43	2018-03-22 10:58:44.820243+00	3
869	162.158.154.52	2018-03-22 11:31:06.696622+00	1
870	162.158.166.128	2018-03-22 15:03:58.204285+00	1
871	162.158.38.37	2018-03-22 20:36:22.149347+00	1
872	162.158.90.237	2018-03-23 05:28:29.642405+00	2
873	162.158.90.237	2018-03-23 05:28:31.47279+00	3
874	162.158.90.237	2018-03-23 05:28:33.563257+00	4
875	172.68.47.63	2018-03-23 07:26:41.356454+00	1
876	172.68.254.165	2018-03-23 08:36:29.56736+00	3
877	162.158.89.52	2018-03-23 11:16:35.126603+00	1
878	162.158.154.142	2018-03-23 13:33:43.622529+00	1
879	108.162.241.199	2018-03-23 14:14:21.070377+00	1
880	162.158.134.127	2018-03-23 15:35:05.869208+00	1
881	162.158.202.169	2018-03-23 17:39:57.668273+00	1
882	172.68.47.51	2018-03-23 19:35:09.204127+00	1
883	172.68.6.115	2018-03-23 19:37:07.664637+00	1
884	141.101.88.37	2018-03-23 20:56:35.234322+00	4
885	162.158.78.61	2018-03-24 02:46:49.604405+00	2
886	108.162.250.38	2018-03-24 04:27:35.731186+00	1
887	108.162.219.97	2018-03-24 15:25:38.594507+00	1
888	162.158.30.49	2018-03-24 18:05:09.405885+00	1
889	108.162.229.37	2018-03-24 19:31:25.559657+00	1
890	162.158.155.89	2018-03-24 22:13:22.16984+00	1
891	141.101.77.185	2018-03-24 22:45:50.625794+00	4
892	141.101.77.185	2018-03-24 23:01:40.123562+00	1
893	162.158.59.187	2018-03-24 23:31:11.491255+00	1
894	172.68.51.187	2018-03-25 00:39:57.888905+00	1
895	188.114.110.85	2018-03-25 08:43:18.858901+00	1
896	162.158.243.32	2018-03-25 13:53:18.003236+00	3
897	198.41.238.73	2018-03-25 20:55:01.133686+00	1
898	162.158.63.193	2018-03-26 00:43:11.333477+00	1
899	162.158.26.43	2018-03-26 05:47:25.524226+00	1
900	172.68.50.133	2018-03-26 11:48:07.221738+00	1
901	162.158.74.78	2018-03-26 12:57:48.138572+00	4
902	162.158.74.78	2018-03-26 12:57:57.495716+00	3
903	162.158.74.78	2018-03-26 12:58:06.771199+00	2
904	162.158.74.78	2018-03-26 12:58:16.90398+00	1
905	141.101.88.121	2018-03-26 13:20:09.227615+00	1
906	141.101.77.89	2018-03-26 13:47:25.580226+00	1
907	188.114.110.241	2018-03-26 15:27:35.680867+00	1
908	162.158.74.60	2018-03-26 18:07:04.96858+00	1
909	108.162.241.145	2018-03-26 20:47:05.781011+00	3
910	188.114.110.79	2018-03-26 23:14:43.793889+00	3
911	162.158.179.175	2018-03-27 01:00:41.8804+00	3
912	162.158.146.187	2018-03-27 01:04:57.472621+00	1
913	108.162.221.139	2018-03-27 03:03:38.734674+00	3
914	172.68.58.212	2018-03-27 04:44:07.69014+00	1
915	172.68.174.79	2018-03-27 06:19:54.491101+00	2
916	141.101.99.140	2018-03-27 07:08:42.936773+00	1
917	108.162.216.169	2018-03-27 11:33:12.898347+00	1
918	162.158.75.37	2018-03-27 14:34:12.018263+00	1
919	141.101.88.127	2018-03-27 15:24:09.071749+00	1
920	172.68.65.159	2018-03-27 15:31:57.472197+00	1
921	108.162.216.103	2018-03-27 17:54:02.78368+00	1
922	172.68.238.139	2018-03-27 21:02:14.927533+00	1
923	172.68.226.91	2018-03-27 22:30:18.130378+00	1
924	162.158.91.236	2018-03-27 23:03:26.382441+00	1
925	172.68.253.194	2018-03-28 00:18:16.801564+00	4
926	172.68.254.87	2018-03-28 03:40:26.403694+00	1
927	162.158.154.238	2018-03-28 04:35:37.127795+00	1
928	162.158.90.9	2018-03-28 04:44:41.453646+00	2
929	162.158.90.9	2018-03-28 04:44:47.266288+00	4
930	162.158.90.9	2018-03-28 04:44:51.18393+00	3
931	172.68.253.56	2018-03-28 07:10:31.872504+00	1
932	188.114.110.115	2018-03-28 07:17:17.141826+00	1
933	162.158.90.147	2018-03-28 07:30:29.157567+00	1
934	141.101.107.21	2018-03-28 08:29:04.745042+00	1
935	172.68.198.79	2018-03-28 12:29:56.954792+00	1
936	141.101.77.119	2018-03-28 13:02:24.550185+00	1
937	198.41.231.8	2018-03-28 14:15:19.999544+00	3
938	162.158.89.130	2018-03-28 14:26:43.195578+00	1
939	162.158.38.103	2018-03-28 14:40:39.540304+00	1
940	173.245.52.70	2018-03-28 16:29:03.368769+00	1
941	108.162.219.67	2018-03-28 16:53:08.267054+00	1
942	172.68.58.230	2018-03-28 16:57:10.633122+00	3
943	172.68.143.141	2018-03-28 21:43:53.46736+00	3
944	172.68.254.81	2018-03-29 06:32:04.610889+00	1
945	141.101.88.169	2018-03-29 08:45:11.779616+00	1
946	141.101.77.11	2018-03-29 09:00:10.477274+00	1
947	162.158.92.7	2018-03-29 09:33:24.06135+00	1
948	172.68.238.115	2018-03-29 10:26:49.102511+00	3
949	172.69.130.43	2018-03-29 12:50:13.663347+00	1
950	162.158.79.44	2018-03-29 14:32:15.083392+00	3
951	108.162.216.13	2018-03-29 15:36:04.914333+00	1
952	162.158.88.245	2018-03-29 18:25:47.824884+00	1
953	162.158.78.199	2018-03-29 19:11:57.248934+00	1
954	141.101.77.47	2018-03-29 20:44:13.907165+00	1
955	141.101.105.111	2018-03-29 21:40:59.73087+00	2
956	141.101.88.193	2018-03-30 00:22:29.610491+00	4
957	172.68.54.43	2018-03-30 01:11:30.685871+00	1
958	141.101.99.74	2018-03-30 04:09:44.213704+00	1
959	172.68.255.65	2018-03-30 05:34:11.47506+00	1
960	141.101.107.33	2018-03-30 06:09:17.526427+00	1
961	188.114.111.20	2018-03-30 07:42:39.4081+00	1
962	141.101.107.147	2018-03-30 07:45:25.186054+00	1
963	162.158.10.25	2018-03-30 13:23:01.187832+00	1
964	162.158.134.85	2018-03-30 18:47:20.767162+00	3
965	162.158.74.48	2018-03-30 20:51:08.404728+00	1
966	141.101.98.193	2018-03-30 21:08:56.381074+00	1
967	172.68.198.115	2018-03-30 21:15:23.850865+00	1
968	162.158.88.95	2018-03-30 22:20:57.584051+00	1
969	198.41.231.8	2018-03-30 23:42:20.483159+00	1
970	173.245.52.160	2018-03-30 23:50:47.252102+00	1
971	162.158.178.204	2018-03-31 02:37:20.888564+00	1
972	162.158.202.85	2018-03-31 07:31:35.155195+00	1
973	162.158.234.25	2018-03-31 10:40:27.752916+00	1
974	172.68.254.238	2018-03-31 12:32:40.539961+00	1
975	162.158.179.145	2018-03-31 12:44:08.77554+00	1
976	162.158.243.50	2018-03-31 14:38:02.815784+00	1
977	172.68.253.140	2018-03-31 16:05:25.229361+00	1
978	162.158.122.33	2018-04-01 04:59:48.90704+00	1
979	108.162.212.152	2018-04-01 05:57:43.534409+00	1
980	162.158.202.97	2018-04-01 06:39:56.452818+00	1
981	162.158.238.151	2018-04-01 07:24:08.071509+00	1
982	162.158.178.234	2018-04-01 09:49:25.35663+00	3
983	172.68.234.61	2018-04-01 10:24:26.754117+00	1
984	162.158.178.36	2018-04-01 10:39:43.66043+00	4
985	162.158.178.36	2018-04-01 10:39:44.785056+00	2
986	162.158.178.36	2018-04-01 10:39:45.579898+00	3
987	162.158.88.143	2018-04-01 11:35:12.169985+00	3
988	172.68.255.11	2018-04-01 12:15:39.323205+00	1
989	141.101.107.183	2018-04-01 13:55:37.228859+00	1
990	162.158.154.178	2018-04-01 14:19:45.058368+00	1
991	141.101.76.175	2018-04-01 14:33:34.882757+00	1
992	188.114.110.103	2018-04-01 17:12:57.840654+00	1
993	162.158.126.115	2018-04-01 17:22:57.854265+00	1
994	188.114.110.217	2018-04-01 20:01:04.071511+00	1
995	162.158.154.250	2018-04-01 20:15:34.09194+00	1
996	172.68.46.104	2018-04-01 21:44:44.420587+00	1
997	162.158.178.234	2018-04-02 00:31:06.290247+00	1
998	198.41.238.43	2018-04-02 01:40:36.862112+00	1
999	172.68.26.92	2018-04-02 03:37:48.671334+00	1
1000	162.158.155.47	2018-04-02 04:40:05.49248+00	1
1001	162.158.88.173	2018-04-02 10:45:32.485348+00	1
1002	162.158.179.19	2018-04-02 13:29:14.425551+00	1
1003	172.69.22.17	2018-04-02 16:02:33.657775+00	3
1004	172.68.51.121	2018-04-02 17:28:39.594833+00	1
1005	172.68.245.40	2018-04-02 18:24:39.648737+00	4
1006	172.68.211.247	2018-04-02 18:53:22.884097+00	1
1007	172.68.154.13	2018-04-02 19:44:16.276261+00	3
1008	188.114.110.211	2018-04-02 20:00:24.09659+00	1
1009	162.158.214.67	2018-04-02 20:55:46.193197+00	1
1010	172.69.69.97	2018-04-03 01:44:56.851786+00	1
1011	162.158.38.217	2018-04-03 03:37:23.835125+00	1
1012	141.101.107.171	2018-04-03 03:44:16.278784+00	1
1013	162.158.179.49	2018-04-03 04:39:08.950625+00	1
1014	162.158.90.189	2018-04-03 08:30:18.641663+00	1
1015	162.158.154.94	2018-04-03 08:59:43.005931+00	1
1016	172.68.11.74	2018-04-03 10:31:24.205044+00	3
1017	108.162.241.73	2018-04-03 12:45:20.260478+00	1
1018	141.101.99.86	2018-04-03 12:55:17.811004+00	1
1019	141.101.69.108	2018-04-03 13:02:17.588644+00	1
1020	172.68.238.175	2018-04-03 13:30:42.968236+00	1
1021	162.158.224.151	2018-04-03 13:33:18.042404+00	1
1022	162.158.88.131	2018-04-03 13:34:19.857765+00	1
1023	162.158.88.143	2018-04-03 14:10:20.7536+00	1
1024	197.234.242.139	2018-04-03 14:30:18.11788+00	1
1025	108.162.212.14	2018-04-03 15:01:49.480261+00	1
1026	172.69.206.31	2018-04-03 15:07:10.752175+00	1
1027	108.162.229.79	2018-04-03 17:05:12.06732+00	1
1028	172.68.244.75	2018-04-03 18:46:01.369371+00	1
1029	162.158.88.215	2018-04-03 20:02:44.29289+00	1
1030	141.101.88.163	2018-04-03 20:21:12.091429+00	1
1031	162.158.74.30	2018-04-03 20:54:29.435612+00	1
1032	172.68.58.56	2018-04-03 21:38:44.647879+00	1
1033	172.69.68.234	2018-04-03 22:24:07.547463+00	1
1034	162.158.79.242	2018-04-03 23:25:47.547161+00	4
1035	141.101.107.249	2018-04-04 08:37:13.18257+00	3
1036	162.158.154.118	2018-04-04 09:14:40.33151+00	1
1037	141.101.76.127	2018-04-04 09:52:02.541782+00	1
1038	172.68.254.250	2018-04-04 11:07:12.888044+00	1
1039	162.158.79.122	2018-04-04 14:11:55.118918+00	3
1040	162.158.238.103	2018-04-04 15:04:44.944837+00	1
1041	162.158.134.223	2018-04-04 17:56:34.673782+00	1
1042	162.158.88.107	2018-04-04 19:50:30.724465+00	3
1043	162.158.111.88	2018-04-04 22:21:06.10043+00	1
1044	141.101.107.219	2018-04-05 04:48:13.610663+00	1
1045	162.158.179.205	2018-04-05 05:51:45.216707+00	1
1046	162.158.93.36	2018-04-05 08:27:51.201224+00	1
1047	172.69.78.37	2018-04-05 09:31:08.802397+00	1
1048	172.69.138.55	2018-04-05 10:26:08.937262+00	1
1049	162.158.234.103	2018-04-05 11:23:27.561701+00	1
1050	172.68.238.67	2018-04-05 11:36:31.094127+00	1
1051	141.101.98.163	2018-04-05 11:49:40.904959+00	1
1052	162.158.92.145	2018-04-05 14:42:13.903209+00	1
1053	173.245.54.40	2018-04-05 15:07:13.671503+00	3
1054	198.41.231.26	2018-04-05 15:47:01.783407+00	1
1055	172.68.27.69	2018-04-05 18:38:15.691847+00	1
1056	108.162.216.241	2018-04-05 18:56:31.170333+00	1
1057	141.101.107.237	2018-04-05 19:12:23.498149+00	1
1058	162.158.91.164	2018-04-05 19:15:34.339261+00	1
1059	172.69.126.103	2018-04-05 20:29:18.029683+00	1
1060	108.162.212.80	2018-04-05 21:45:14.054729+00	1
1061	108.162.229.43	2018-04-06 00:25:46.483863+00	3
1062	162.158.155.53	2018-04-06 06:00:29.566193+00	3
1063	172.68.142.236	2018-04-06 07:59:33.548942+00	1
1064	141.101.98.235	2018-04-06 12:42:37.585254+00	1
1065	188.114.110.79	2018-04-06 12:53:38.131334+00	1
1066	172.69.90.7	2018-04-06 14:23:06.857857+00	1
1067	162.158.88.41	2018-04-06 16:01:41.961288+00	1
1068	162.158.126.61	2018-04-06 16:04:22.848317+00	1
1069	162.158.202.139	2018-04-06 19:03:41.484564+00	1
1070	162.158.75.97	2018-04-06 19:39:59.114604+00	1
1071	188.114.110.187	2018-04-06 19:52:42.670664+00	1
1072	108.162.212.206	2018-04-06 19:54:37.278371+00	3
1073	172.68.47.81	2018-04-07 04:06:51.643701+00	1
1074	162.158.134.31	2018-04-07 05:58:49.260767+00	1
1075	172.68.198.67	2018-04-07 10:49:29.676425+00	1
1076	172.68.26.206	2018-04-07 12:16:59.036192+00	1
1077	141.101.104.158	2018-04-07 16:23:01.050346+00	1
1078	172.69.54.132	2018-04-07 17:44:25.455927+00	1
1079	172.69.42.115	2018-04-07 20:35:13.043197+00	1
1080	108.162.216.91	2018-04-07 21:19:12.532999+00	3
1081	162.158.79.26	2018-04-07 22:49:23.18875+00	3
1082	162.158.38.199	2018-04-07 23:34:56.140993+00	4
1083	162.158.38.199	2018-04-07 23:35:22.370824+00	2
1084	162.158.38.199	2018-04-07 23:35:32.970865+00	3
1085	172.68.47.123	2018-04-08 02:32:21.463367+00	3
1086	172.69.62.151	2018-04-08 02:38:29.943438+00	1
1087	141.101.104.224	2018-04-08 03:21:18.142454+00	1
1088	162.158.88.47	2018-04-08 06:06:28.562557+00	1
1089	162.158.88.47	2018-04-08 06:13:32.297632+00	4
1090	162.158.2.169	2018-04-08 06:13:51.578944+00	1
1091	162.158.91.62	2018-04-08 07:23:11.949686+00	1
1092	162.158.238.73	2018-04-08 07:34:10.814785+00	1
1093	172.68.211.109	2018-04-08 07:53:10.794492+00	1
1094	172.68.62.73	2018-04-08 09:01:06.474726+00	1
1095	162.158.202.211	2018-04-08 10:13:10.990902+00	1
1096	162.158.78.199	2018-04-08 11:26:28.96458+00	3
1097	172.68.198.13	2018-04-08 14:22:38.229102+00	1
1098	162.158.91.212	2018-04-08 19:30:50.392443+00	1
1099	162.158.91.212	2018-04-08 19:31:05.811256+00	2
1100	162.158.91.212	2018-04-08 19:31:16.560254+00	3
1101	162.158.91.212	2018-04-08 19:31:22.290324+00	4
1102	172.68.143.51	2018-04-09 00:24:52.492541+00	1
1103	141.101.99.116	2018-04-09 04:58:22.626456+00	1
1104	141.101.104.110	2018-04-09 08:54:11.199057+00	1
1105	172.68.142.140	2018-04-09 13:06:27.281712+00	4
1106	172.68.238.229	2018-04-09 14:43:57.739226+00	1
1107	172.69.194.31	2018-04-09 16:25:33.828021+00	3
1108	173.245.54.16	2018-04-09 16:59:45.10467+00	1
1109	162.158.210.73	2018-04-09 17:16:02.187283+00	1
1110	162.158.63.247	2018-04-09 17:24:40.934338+00	3
1111	172.68.65.123	2018-04-09 18:56:10.771957+00	2
1112	162.158.62.252	2018-04-09 19:49:06.932591+00	1
1113	172.69.33.104	2018-04-10 02:04:09.218816+00	1
1114	108.162.229.13	2018-04-10 03:43:56.281471+00	3
1115	172.68.133.123	2018-04-10 04:44:38.610724+00	1
1116	141.101.104.188	2018-04-10 07:50:44.697784+00	1
1117	172.69.126.103	2018-04-10 08:27:30.094973+00	3
1118	162.158.255.109	2018-04-10 09:46:12.676043+00	1
1119	172.68.244.21	2018-04-10 11:18:03.225594+00	1
1120	162.158.222.97	2018-04-10 13:48:04.652314+00	1
1121	162.158.89.172	2018-04-10 14:33:38.047522+00	3
1122	162.158.74.150	2018-04-10 16:39:25.088766+00	1
1123	172.68.62.91	2018-04-10 17:30:23.137921+00	1
1124	172.69.54.6	2018-04-10 19:16:57.347708+00	1
1125	172.68.34.61	2018-04-10 19:29:46.998185+00	1
1126	141.101.98.181	2018-04-10 19:59:25.875026+00	1
1127	141.101.76.31	2018-04-10 22:24:54.194408+00	1
1128	141.101.107.213	2018-04-10 22:52:05.949499+00	1
1129	103.22.200.165	2018-04-11 04:19:00.8546+00	3
1130	108.162.226.80	2018-04-11 05:41:43.108035+00	1
1131	103.22.200.249	2018-04-11 06:27:43.778171+00	1
1132	108.162.226.248	2018-04-11 07:56:21.775387+00	1
1133	172.68.234.97	2018-04-11 09:26:28.224019+00	1
1134	162.158.134.43	2018-04-11 11:59:10.2124+00	1
1135	141.101.77.107	2018-04-11 12:31:06.777223+00	1
1136	108.162.237.97	2018-04-11 13:29:07.437462+00	1
1137	162.158.118.175	2018-04-11 13:34:29.479103+00	3
1138	172.68.63.56	2018-04-11 15:11:32.118082+00	1
1139	108.162.226.194	2018-04-11 15:21:36.379626+00	1
1140	108.162.216.109	2018-04-11 16:06:42.779859+00	1
1141	172.69.54.48	2018-04-11 16:09:14.89672+00	1
1142	172.68.245.154	2018-04-11 19:52:48.146889+00	3
1143	162.158.93.120	2018-04-11 20:07:01.209861+00	1
1144	172.68.154.55	2018-04-11 20:55:49.71692+00	1
1145	162.158.238.19	2018-04-11 20:57:21.361544+00	1
1146	108.162.229.187	2018-04-11 21:14:41.567469+00	4
1147	172.69.206.37	2018-04-11 23:01:47.971329+00	3
1148	162.158.75.235	2018-04-11 23:53:30.870537+00	1
1149	108.162.226.128	2018-04-12 04:07:37.864977+00	4
1150	172.68.238.103	2018-04-12 05:46:32.071066+00	3
1151	162.158.154.40	2018-04-12 09:10:44.277363+00	1
1152	162.158.154.166	2018-04-12 09:29:26.805339+00	1
1153	141.101.98.139	2018-04-12 09:31:40.152355+00	1
1154	172.68.63.26	2018-04-12 10:42:08.430751+00	1
1155	141.101.99.218	2018-04-12 11:43:03.334658+00	1
1156	141.101.99.80	2018-04-12 13:45:26.382327+00	1
1157	162.158.91.254	2018-04-12 14:53:42.151639+00	1
1158	141.101.76.217	2018-04-12 14:55:51.117394+00	1
1159	173.245.52.148	2018-04-12 15:51:05.263968+00	1
1160	141.101.76.199	2018-04-12 20:34:21.616939+00	1
1161	172.68.34.31	2018-04-12 20:59:55.099303+00	1
1162	172.68.141.7	2018-04-13 04:11:32.475215+00	1
1163	162.158.146.115	2018-04-13 04:18:21.286535+00	1
1164	172.68.254.129	2018-04-13 04:46:46.026937+00	1
1165	172.68.253.62	2018-04-13 05:09:07.955631+00	1
1166	141.101.88.139	2018-04-13 06:57:37.091162+00	3
1167	141.101.77.41	2018-04-13 07:17:21.88095+00	1
1168	162.158.202.157	2018-04-13 08:45:29.101335+00	1
1169	141.101.98.67	2018-04-13 09:10:01.441859+00	3
1170	172.68.110.109	2018-04-13 10:03:49.257875+00	3
1171	162.158.222.79	2018-04-13 12:28:55.724083+00	1
1172	172.68.246.119	2018-04-13 13:29:35.283945+00	1
1173	172.69.62.61	2018-04-13 14:02:56.74676+00	1
1174	162.158.59.85	2018-04-13 16:40:00.160378+00	1
1175	172.68.51.133	2018-04-13 18:07:39.324834+00	1
1176	141.101.97.83	2018-04-13 19:44:41.033807+00	1
1177	162.158.89.40	2018-04-13 20:08:04.634668+00	1
1178	172.68.143.81	2018-04-13 20:48:56.764432+00	1
1179	172.68.46.32	2018-04-14 02:37:44.645906+00	1
1180	162.158.134.145	2018-04-14 09:18:33.066859+00	1
1181	162.158.90.3	2018-04-14 09:43:44.347706+00	2
1182	108.162.238.92	2018-04-14 16:22:02.67769+00	1
1183	188.114.111.38	2018-04-14 18:38:27.946238+00	3
1184	141.101.96.165	2018-04-14 20:40:58.672383+00	1
1185	162.158.58.36	2018-04-14 20:45:03.601784+00	1
1186	162.158.154.22	2018-04-14 20:58:34.906708+00	1
1187	162.158.93.114	2018-04-14 23:17:51.332426+00	1
1188	172.68.141.25	2018-04-14 23:42:18.101096+00	3
1189	108.162.221.199	2018-04-14 23:43:15.545583+00	1
1190	172.68.25.157	2018-04-15 01:12:48.460043+00	1
1191	162.158.88.83	2018-04-15 06:12:17.737256+00	1
1192	162.158.2.151	2018-04-15 07:39:20.301563+00	1
1193	103.22.200.87	2018-04-15 10:36:41.190489+00	3
1194	172.68.110.97	2018-04-15 10:54:29.037983+00	1
1195	141.101.104.170	2018-04-15 11:17:22.31954+00	1
1196	162.158.119.26	2018-04-15 14:05:23.66587+00	1
1197	141.101.88.19	2018-04-15 14:19:14.967343+00	1
1198	162.158.38.145	2018-04-15 17:47:27.153099+00	1
1199	141.101.76.115	2018-04-15 20:15:04.473823+00	1
1200	172.69.62.73	2018-04-15 21:00:20.969933+00	1
1201	141.101.107.165	2018-04-15 21:08:32.062318+00	1
1202	172.68.141.55	2018-04-15 21:13:55.958374+00	1
1203	108.162.241.229	2018-04-16 00:36:22.998299+00	1
1204	108.162.241.229	2018-04-16 04:28:42.483289+00	4
1205	108.162.241.229	2018-04-16 04:59:22.04609+00	3
1206	162.158.88.155	2018-04-16 12:41:53.872471+00	1
1207	162.158.89.232	2018-04-16 12:45:15.241179+00	1
1208	162.158.89.136	2018-04-16 14:04:24.777701+00	1
1209	172.68.238.151	2018-04-16 14:19:20.805289+00	1
1210	108.162.241.97	2018-04-16 15:57:50.964022+00	3
1211	162.158.62.102	2018-04-16 16:14:24.981967+00	3
1212	141.101.107.81	2018-04-16 16:15:56.574623+00	1
1213	162.158.134.151	2018-04-16 16:50:48.379828+00	1
1214	162.158.238.163	2018-04-16 17:10:20.807841+00	1
1215	172.68.206.115	2018-04-16 18:29:17.369087+00	1
1216	162.158.210.55	2018-04-16 19:51:35.574173+00	1
1217	141.101.96.148	2018-04-16 20:38:32.545235+00	1
1218	198.41.230.139	2018-04-16 20:55:42.168366+00	1
1219	108.162.238.254	2018-04-16 22:07:49.483677+00	1
1220	162.158.89.226	2018-04-16 22:45:58.76318+00	1
1221	172.69.23.24	2018-04-16 23:16:52.761528+00	3
1222	141.101.102.103	2018-04-17 00:14:32.132372+00	1
1223	141.101.99.50	2018-04-17 04:37:17.037279+00	1
1224	172.69.226.44	2018-04-17 06:54:41.674255+00	4
1225	162.158.111.118	2018-04-17 07:09:21.610357+00	1
1226	162.158.79.182	2018-04-17 07:10:03.477759+00	1
1227	162.158.78.55	2018-04-17 07:11:30.66668+00	1
1228	162.158.79.170	2018-04-17 07:12:32.909329+00	1
1229	173.245.54.46	2018-04-17 07:16:21.801317+00	1
1230	162.158.89.220	2018-04-17 13:10:21.755703+00	1
1231	162.158.88.239	2018-04-17 13:50:29.879078+00	1
1232	162.158.134.175	2018-04-17 15:12:57.396744+00	1
1233	162.158.238.37	2018-04-17 16:21:08.279315+00	1
1234	108.162.221.19	2018-04-17 17:05:22.807053+00	1
1235	172.68.143.207	2018-04-17 19:56:48.033988+00	3
1236	108.162.210.241	2018-04-17 20:02:28.163126+00	1
1237	162.158.10.19	2018-04-17 20:39:09.08381+00	1
1238	188.114.110.247	2018-04-17 22:23:26.705484+00	1
1239	172.69.62.97	2018-04-17 23:08:28.905922+00	3
1240	162.158.74.138	2018-04-18 00:08:58.16201+00	1
1241	162.158.79.80	2018-04-18 02:33:08.397565+00	1
1242	162.158.79.230	2018-04-18 05:40:46.541401+00	1
1243	162.158.155.5	2018-04-18 06:39:02.834032+00	1
1244	172.68.65.93	2018-04-18 07:16:25.572692+00	1
1245	162.158.238.91	2018-04-18 07:16:55.274011+00	1
1246	141.101.77.59	2018-04-18 09:27:22.997605+00	1
1247	172.68.10.91	2018-04-18 09:56:04.036417+00	1
1248	162.158.93.150	2018-04-18 15:16:26.662565+00	1
1249	141.101.99.200	2018-04-18 16:00:35.699463+00	3
1250	162.158.118.61	2018-04-18 18:43:32.647429+00	1
1251	141.101.77.191	2018-04-18 19:10:57.584677+00	1
1252	172.68.34.103	2018-04-18 21:04:54.797667+00	3
1253	172.68.90.97	2018-04-19 02:31:25.483673+00	1
1254	141.101.96.160	2018-04-19 07:06:32.388219+00	1
1255	173.245.54.52	2018-04-19 08:42:30.345982+00	1
1256	162.158.202.145	2018-04-19 11:41:49.616816+00	1
1257	172.68.254.123	2018-04-19 12:09:11.188989+00	1
1258	172.68.246.179	2018-04-19 12:53:52.384874+00	1
1259	108.162.216.199	2018-04-19 14:11:04.839658+00	1
1260	172.68.10.133	2018-04-19 14:56:07.378369+00	4
1261	162.158.122.159	2018-04-19 18:36:05.727635+00	1
1262	197.234.242.55	2018-04-19 19:00:24.590027+00	1
1263	108.162.241.241	2018-04-20 02:49:02.550455+00	1
1264	162.158.118.145	2018-04-20 04:32:47.412113+00	1
1265	162.158.88.107	2018-04-20 05:53:27.152901+00	1
1266	172.69.226.98	2018-04-20 09:37:16.935252+00	3
1267	172.68.238.193	2018-04-20 12:34:22.680394+00	3
1268	108.162.238.104	2018-04-20 13:02:13.128335+00	1
1269	108.162.229.97	2018-04-20 13:19:25.861164+00	4
1270	108.162.229.97	2018-04-20 13:19:30.852501+00	3
1271	108.162.229.97	2018-04-20 13:19:35.843039+00	2
1272	172.68.54.25	2018-04-20 13:42:17.435708+00	1
1273	172.68.10.19	2018-04-20 15:11:39.749031+00	3
1274	141.101.76.241	2018-04-20 18:12:37.920206+00	1
1275	172.69.50.19	2018-04-20 18:39:10.983023+00	1
1276	172.68.238.85	2018-04-20 18:39:19.621897+00	1
1277	162.158.58.48	2018-04-20 18:48:56.772896+00	1
1278	172.68.65.69	2018-04-21 03:38:10.543319+00	1
1279	162.158.79.152	2018-04-21 05:02:16.925781+00	1
1280	141.101.99.170	2018-04-21 05:17:26.770599+00	3
1281	172.68.63.20	2018-04-21 10:08:07.542974+00	1
1282	162.158.79.176	2018-04-21 10:40:58.734331+00	3
1283	172.69.130.55	2018-04-21 13:05:13.509684+00	1
1284	172.68.10.103	2018-04-21 13:27:34.925385+00	1
1285	172.68.10.103	2018-04-21 13:27:56.036854+00	4
1286	172.69.62.43	2018-04-21 15:30:00.838443+00	1
1287	172.68.65.201	2018-04-21 15:51:52.526254+00	1
1288	162.158.78.187	2018-04-21 20:04:40.544596+00	1
1289	172.68.238.115	2018-04-21 20:08:05.460437+00	4
1290	172.68.238.115	2018-04-21 20:08:07.776035+00	2
1291	108.162.215.163	2018-04-21 20:32:28.485563+00	1
1292	108.162.215.163	2018-04-21 20:41:37.720769+00	4
1293	162.158.89.46	2018-04-21 21:35:54.071794+00	1
1294	172.68.59.33	2018-04-22 05:13:24.640691+00	1
1295	172.68.255.29	2018-04-22 06:30:09.878691+00	3
1296	162.158.111.10	2018-04-22 10:35:52.94314+00	1
1297	162.158.118.121	2018-04-22 11:08:30.881065+00	1
1298	172.68.51.223	2018-04-22 12:03:44.268326+00	1
1299	162.158.91.104	2018-04-22 13:23:25.07724+00	3
1300	172.68.246.113	2018-04-22 13:40:19.571842+00	3
1301	162.158.42.7	2018-04-22 14:05:34.023098+00	1
1302	188.114.110.55	2018-04-22 14:35:48.509516+00	1
1303	162.158.91.146	2018-04-22 17:04:35.136933+00	1
1304	172.68.65.237	2018-04-22 18:09:11.950902+00	1
1305	172.69.62.49	2018-04-22 21:12:50.0782+00	4
1306	141.101.99.68	2018-04-22 23:17:20.856904+00	2
1307	141.101.99.68	2018-04-22 23:17:26.490868+00	3
1308	141.101.99.68	2018-04-22 23:17:27.757346+00	4
1309	162.158.63.103	2018-04-23 00:52:53.364642+00	1
1310	173.245.48.102	2018-04-23 01:56:24.063142+00	1
1311	141.101.105.141	2018-04-23 02:32:16.565471+00	1
1312	162.158.79.26	2018-04-23 04:26:10.675893+00	4
1313	108.162.226.140	2018-04-23 05:46:46.826098+00	3
1314	103.22.200.93	2018-04-23 11:05:46.782912+00	3
1315	108.162.226.158	2018-04-23 11:08:12.068149+00	1
1316	172.68.65.9	2018-04-23 12:33:17.210141+00	2
1317	172.68.253.152	2018-04-23 14:10:10.356593+00	1
1318	172.68.54.73	2018-04-23 14:45:43.250878+00	1
1319	172.68.54.49	2018-04-23 14:51:34.064855+00	1
1320	141.101.76.187	2018-04-23 17:32:36.773794+00	1
1321	162.158.186.57	2018-04-23 18:34:01.848222+00	1
1322	162.158.63.19	2018-04-23 18:56:03.46426+00	1
1323	173.245.52.142	2018-04-24 02:33:07.832444+00	1
1324	103.22.200.105	2018-04-24 03:36:23.904491+00	1
1325	108.162.241.103	2018-04-24 04:16:50.823892+00	1
1326	172.68.246.47	2018-04-24 09:35:53.818755+00	1
1327	172.69.194.61	2018-04-24 10:10:02.393547+00	1
1328	162.158.179.223	2018-04-24 10:17:39.451667+00	1
1329	172.68.51.67	2018-04-24 17:30:26.76855+00	1
1330	162.158.222.91	2018-04-24 18:34:25.476907+00	1
1331	141.101.98.115	2018-04-24 18:45:29.242649+00	1
1332	162.158.118.211	2018-04-25 00:19:26.551367+00	1
1333	172.68.150.37	2018-04-25 01:17:07.71126+00	2
1334	172.68.150.37	2018-04-25 01:17:13.042188+00	1
1335	172.68.150.37	2018-04-25 01:17:25.621097+00	3
1336	172.68.150.37	2018-04-25 01:17:39.883011+00	4
1337	108.162.216.115	2018-04-25 03:59:49.252256+00	1
1338	172.69.54.144	2018-04-25 06:18:14.383668+00	1
1339	141.101.97.61	2018-04-25 07:56:36.352404+00	1
1340	162.158.89.166	2018-04-25 09:25:45.016847+00	1
1341	103.22.200.201	2018-04-25 09:45:10.759398+00	1
1342	141.101.88.145	2018-04-25 16:30:52.419358+00	1
1343	162.158.255.175	2018-04-25 17:44:47.164675+00	1
1344	197.234.242.157	2018-04-25 18:49:00.534151+00	1
1345	162.158.38.205	2018-04-25 20:18:43.700431+00	1
1346	162.158.255.199	2018-04-25 21:51:07.587203+00	1
1347	162.158.146.199	2018-04-26 02:22:14.457205+00	1
1348	172.69.33.236	2018-04-26 02:39:42.883025+00	1
1349	173.245.52.64	2018-04-26 03:13:32.831484+00	1
1350	162.158.146.187	2018-04-26 04:21:34.222755+00	3
1351	108.162.221.55	2018-04-26 05:40:22.835433+00	1
1352	172.68.50.151	2018-04-26 08:06:43.046618+00	1
1353	162.158.179.175	2018-04-26 08:07:58.345689+00	1
1354	162.158.222.13	2018-04-26 09:01:52.142605+00	1
1355	141.101.99.110	2018-04-26 09:03:55.294985+00	1
1356	162.158.111.148	2018-04-26 12:26:36.371259+00	1
1357	108.162.226.152	2018-04-26 12:37:13.432578+00	3
1358	162.158.91.56	2018-04-26 12:47:13.498129+00	1
1359	141.101.98.139	2018-04-26 14:24:12.551968+00	2
1360	162.158.92.19	2018-04-26 18:35:28.538506+00	3
1361	162.158.90.207	2018-04-26 20:38:06.090491+00	1
1362	172.68.58.8	2018-04-26 23:55:10.130552+00	3
1363	172.68.254.141	2018-04-27 02:24:36.90224+00	1
1364	162.158.119.32	2018-04-27 04:55:49.526523+00	1
1365	108.162.229.199	2018-04-27 05:58:28.942722+00	1
1366	172.69.158.49	2018-04-27 06:28:50.837963+00	3
1367	108.162.226.20	2018-04-27 08:09:04.76382+00	3
1368	162.158.238.145	2018-04-27 10:38:54.573692+00	1
1369	162.158.119.8	2018-04-27 11:51:41.840916+00	1
1370	173.245.52.190	2018-04-27 12:54:10.498631+00	3
1371	141.101.99.56	2018-04-27 14:06:40.264553+00	1
1372	162.158.238.133	2018-04-27 14:47:45.084483+00	3
1373	188.114.110.157	2018-04-27 14:55:11.914133+00	1
1374	172.68.62.241	2018-04-27 16:02:53.240525+00	1
1375	162.158.75.157	2018-04-27 16:15:44.773858+00	1
1376	172.68.206.85	2018-04-27 17:23:46.127492+00	1
1377	172.68.218.79	2018-04-27 19:23:55.742321+00	1
1378	108.162.219.151	2018-04-27 19:23:56.27975+00	1
1379	172.69.50.37	2018-04-28 00:30:46.106843+00	1
1380	172.69.23.90	2018-04-28 00:58:56.579699+00	1
1381	162.158.88.251	2018-04-28 07:53:52.35971+00	3
1382	162.158.155.83	2018-04-28 13:21:48.776428+00	1
1383	172.68.11.68	2018-04-28 13:36:17.150638+00	1
1384	172.68.246.221	2018-04-28 16:00:10.115685+00	1
1385	172.68.246.221	2018-04-28 16:05:21.141547+00	2
1386	198.41.230.49	2018-04-28 16:28:18.736011+00	1
1387	172.69.70.194	2018-04-28 20:21:10.689861+00	1
1388	198.41.226.145	2018-04-28 20:48:31.063515+00	1
1389	172.69.69.127	2018-04-28 21:13:23.889936+00	1
1390	103.22.200.117	2018-04-28 22:37:15.971551+00	1
1391	172.69.146.19	2018-04-28 22:40:11.257622+00	1
1392	172.68.254.147	2018-04-29 02:10:21.245926+00	1
1393	141.101.98.211	2018-04-29 03:44:34.542059+00	1
1394	172.69.70.62	2018-04-29 06:32:04.946869+00	1
1395	162.158.118.79	2018-04-29 07:11:23.548672+00	1
1396	162.158.238.157	2018-04-29 08:23:20.299338+00	1
1397	172.68.254.153	2018-04-29 12:48:10.459761+00	1
1398	172.68.253.242	2018-04-29 13:56:05.353395+00	1
1399	162.158.255.121	2018-04-29 17:25:22.28318+00	4
1400	162.158.255.121	2018-04-29 17:25:22.491199+00	3
1401	162.158.255.121	2018-04-29 17:25:23.145552+00	2
1402	188.114.110.223	2018-04-29 22:56:43.017241+00	1
1403	108.162.229.157	2018-04-30 05:28:04.758244+00	2
1404	172.68.245.64	2018-04-30 07:07:31.653159+00	1
1405	172.68.50.115	2018-04-30 08:09:32.143282+00	2
1406	162.158.155.101	2018-04-30 11:19:02.909138+00	1
1407	172.68.94.67	2018-04-30 11:19:30.799465+00	1
1408	162.158.92.229	2018-04-30 11:33:17.682508+00	3
1409	162.158.92.229	2018-04-30 11:33:41.778+00	1
1410	141.101.99.164	2018-04-30 11:34:13.956036+00	1
1411	141.101.107.117	2018-04-30 11:34:15.559249+00	1
1412	172.68.65.57	2018-04-30 11:34:26.192914+00	1
1413	162.158.88.251	2018-04-30 12:47:32.193086+00	1
1414	162.158.222.31	2018-04-30 12:54:52.673032+00	3
1415	172.68.78.91	2018-04-30 14:56:48.056158+00	1
1416	108.162.221.151	2018-04-30 16:04:37.51376+00	3
1417	162.158.154.244	2018-04-30 16:11:56.961028+00	1
1418	108.162.221.247	2018-04-30 17:25:23.983573+00	1
1419	162.158.63.247	2018-04-30 18:21:22.999077+00	1
1420	108.162.237.55	2018-04-30 23:03:43.349911+00	1
1421	162.158.202.55	2018-05-01 01:28:41.031459+00	1
1422	162.158.202.13	2018-05-01 02:04:07.984541+00	1
1423	198.41.230.85	2018-05-01 02:26:59.925327+00	1
1424	162.158.2.49	2018-05-01 03:26:35.512205+00	1
1425	162.158.214.85	2018-05-01 05:17:34.961591+00	3
1426	162.158.90.81	2018-05-01 07:14:48.116414+00	1
1427	172.68.255.155	2018-05-01 08:29:13.342314+00	1
1428	172.69.194.55	2018-05-01 09:42:49.055897+00	1
1429	141.101.77.65	2018-05-01 10:45:33.801044+00	1
1430	162.158.186.39	2018-05-01 14:14:41.016424+00	1
1431	172.68.206.13	2018-05-01 14:20:22.975567+00	1
1432	162.158.74.162	2018-05-01 15:10:11.694315+00	1
1433	162.158.166.188	2018-05-01 15:51:59.569441+00	1
1434	162.158.178.222	2018-05-01 16:01:39.995099+00	1
1435	172.69.6.43	2018-05-01 16:34:25.21899+00	1
1436	108.162.238.44	2018-05-01 16:40:02.714739+00	3
1437	162.158.122.123	2018-05-01 17:47:19.463607+00	1
1438	162.158.150.79	2018-05-01 19:30:51.64229+00	1
1439	173.245.52.154	2018-05-01 19:38:23.532764+00	1
1440	108.162.221.37	2018-05-01 21:19:06.701336+00	1
1441	172.68.189.232	2018-05-02 01:46:37.07079+00	3
1442	162.158.88.119	2018-05-02 04:29:44.027598+00	1
1443	172.68.253.50	2018-05-02 06:12:50.348935+00	1
1444	141.101.99.194	2018-05-02 07:16:44.622305+00	3
1445	172.69.70.14	2018-05-02 08:09:19.864952+00	3
1446	162.158.90.231	2018-05-02 08:45:46.062609+00	1
1447	172.68.94.169	2018-05-02 09:05:56.531492+00	1
1448	141.101.107.135	2018-05-02 10:50:28.499032+00	1
1449	108.162.221.187	2018-05-02 12:09:35.393484+00	1
1450	162.158.155.41	2018-05-02 12:33:27.42821+00	1
1451	162.158.92.247	2018-05-02 13:09:04.927558+00	1
1452	162.158.178.60	2018-05-02 17:06:07.66056+00	1
1453	141.101.76.133	2018-05-02 17:42:07.541319+00	1
1454	198.41.238.31	2018-05-02 23:16:30.307022+00	1
1455	198.41.230.133	2018-05-03 02:18:30.324346+00	1
1456	172.68.254.244	2018-05-03 03:13:18.389885+00	1
1457	172.69.186.25	2018-05-03 04:48:20.908207+00	3
1458	103.22.200.195	2018-05-03 05:02:40.279659+00	1
1459	162.158.42.25	2018-05-03 05:43:02.343521+00	1
1460	172.68.141.205	2018-05-03 08:15:58.981717+00	1
1461	172.68.94.85	2018-05-03 10:04:11.929158+00	1
1462	172.69.70.128	2018-05-03 11:44:45.65117+00	1
1463	162.158.134.163	2018-05-03 12:33:08.156036+00	1
1464	172.69.6.13	2018-05-03 15:59:37.739314+00	1
1465	108.162.237.181	2018-05-03 16:01:32.757625+00	1
1466	108.162.226.86	2018-05-03 16:46:06.148368+00	1
1467	172.69.70.44	2018-05-03 19:31:09.71268+00	1
1468	162.158.118.115	2018-05-04 00:52:07.594234+00	1
1469	172.69.170.85	2018-05-04 04:14:51.749063+00	1
1470	162.158.42.13	2018-05-04 05:40:45.025554+00	1
1471	197.234.242.37	2018-05-04 07:54:08.729937+00	1
1472	172.68.254.9	2018-05-04 10:06:01.93104+00	1
1473	108.162.246.116	2018-05-04 10:37:52.578963+00	1
1474	108.162.245.85	2018-05-04 10:37:52.605868+00	1
1475	108.162.245.13	2018-05-04 10:37:53.61399+00	1
1476	162.158.89.124	2018-05-04 10:42:53.128112+00	1
1477	162.158.38.157	2018-05-04 10:49:02.56703+00	1
1478	162.158.179.31	2018-05-04 11:00:54.109801+00	1
1479	141.101.104.32	2018-05-04 12:52:48.796383+00	1
1480	172.68.6.67	2018-05-04 14:54:57.341554+00	1
1481	172.68.142.206	2018-05-04 18:37:02.981866+00	1
1482	198.41.230.103	2018-05-04 19:23:01.565078+00	1
1483	162.158.58.72	2018-05-04 22:27:47.195999+00	1
1484	108.162.212.188	2018-05-04 22:54:01.496259+00	3
1485	172.68.154.85	2018-05-04 23:10:28.396993+00	1
1486	172.69.22.71	2018-05-05 03:02:58.68623+00	1
1487	162.158.90.123	2018-05-05 05:41:54.716272+00	1
1488	172.68.189.58	2018-05-05 05:47:39.584596+00	1
1489	141.101.99.38	2018-05-05 06:11:35.128857+00	1
1490	172.68.255.89	2018-05-05 08:01:40.915514+00	1
1491	162.158.91.134	2018-05-05 09:02:21.498494+00	1
1492	162.158.91.134	2018-05-05 09:02:39.479062+00	4
1493	162.158.91.134	2018-05-05 09:02:47.529441+00	3
1494	141.101.98.43	2018-05-05 09:20:22.733175+00	1
1495	172.68.246.95	2018-05-05 15:39:23.127273+00	4
1496	172.68.54.19	2018-05-05 17:03:03.699779+00	1
1497	172.68.51.163	2018-05-05 19:12:55.250464+00	1
1498	162.158.111.124	2018-05-06 00:06:37.374618+00	1
1499	162.158.79.56	2018-05-06 08:23:42.190744+00	3
1500	172.68.254.69	2018-05-06 08:53:45.602684+00	1
1501	172.69.194.55	2018-05-06 13:22:58.271079+00	2
1502	162.158.91.8	2018-05-06 15:50:24.634126+00	1
1503	172.68.62.115	2018-05-06 21:14:17.311583+00	1
1504	172.68.65.171	2018-05-06 23:35:26.200644+00	2
1505	172.68.133.27	2018-05-07 01:43:33.7898+00	4
1506	172.68.253.44	2018-05-07 04:48:38.430181+00	1
1507	141.101.85.182	2018-05-07 04:59:49.718322+00	3
1508	162.158.89.178	2018-05-07 10:12:07.357295+00	1
1509	162.158.93.90	2018-05-07 12:32:14.703906+00	1
1510	172.69.62.85	2018-05-07 13:17:17.511842+00	3
1511	172.68.238.7	2018-05-07 17:25:05.083354+00	1
1512	162.158.88.167	2018-05-07 18:10:41.489016+00	1
1513	162.158.89.196	2018-05-07 20:14:25.877976+00	1
1514	172.68.143.207	2018-05-07 20:34:54.245805+00	4
1515	141.101.107.249	2018-05-07 21:40:42.768593+00	1
1516	162.158.146.127	2018-05-08 02:57:26.893186+00	1
1517	172.68.255.47	2018-05-08 03:41:26.915997+00	1
1518	172.68.133.15	2018-05-08 10:24:11.838659+00	1
1519	108.162.216.151	2018-05-08 14:16:27.925659+00	1
1520	108.162.212.230	2018-05-08 15:18:35.882621+00	1
1521	172.69.138.37	2018-05-08 15:22:47.558781+00	3
1522	162.158.89.64	2018-05-08 16:01:53.467643+00	1
1523	172.68.47.201	2018-05-08 23:34:03.355029+00	1
1524	172.68.98.7	2018-05-09 00:36:42.328337+00	1
1525	162.158.6.247	2018-05-09 01:08:49.86921+00	3
1526	141.101.69.78	2018-05-09 01:12:30.180792+00	1
1527	172.68.253.200	2018-05-09 03:56:08.779979+00	1
1528	108.162.226.104	2018-05-09 05:18:47.168286+00	1
1529	162.158.90.237	2018-05-09 10:30:17.070126+00	1
1530	162.158.90.129	2018-05-09 11:28:45.248874+00	1
1531	172.68.62.37	2018-05-09 15:19:16.719958+00	3
1532	172.68.51.43	2018-05-09 16:44:32.398665+00	1
1533	162.158.90.249	2018-05-09 19:22:59.024301+00	1
1534	162.158.118.67	2018-05-10 02:05:30.195535+00	1
1535	172.69.94.13	2018-05-10 04:53:30.335773+00	1
1536	141.101.88.181	2018-05-10 07:45:09.607514+00	1
1537	162.158.154.16	2018-05-10 09:49:29.117316+00	1
1538	172.68.245.64	2018-05-10 15:23:03.259117+00	3
1539	162.158.92.49	2018-05-10 17:00:27.061139+00	1
1540	172.69.62.157	2018-05-10 19:07:59.901574+00	4
1541	172.69.62.157	2018-05-10 19:08:00.386284+00	3
1542	172.69.62.157	2018-05-10 19:08:00.507812+00	2
1543	172.69.62.157	2018-05-10 19:08:31.431407+00	1
1544	162.158.92.103	2018-05-10 22:37:53.994849+00	2
1545	162.158.92.103	2018-05-10 22:38:20.267613+00	3
1546	162.158.92.103	2018-05-10 22:38:37.77693+00	4
1547	172.69.186.31	2018-05-11 04:29:51.120146+00	3
1548	162.158.214.67	2018-05-11 06:33:09.968558+00	3
1549	162.158.90.177	2018-05-11 07:58:28.120936+00	1
1550	141.101.99.230	2018-05-11 11:29:06.37727+00	1
1551	162.158.202.181	2018-05-11 14:11:43.673148+00	1
1552	141.101.98.229	2018-05-11 15:45:43.773128+00	1
1553	141.101.99.158	2018-05-11 16:08:56.862211+00	1
1554	198.41.230.79	2018-05-11 17:38:08.785886+00	1
1555	162.158.222.19	2018-05-11 20:49:24.684033+00	1
1556	162.158.179.103	2018-05-12 05:03:25.045916+00	1
1557	162.158.91.200	2018-05-12 09:29:22.639267+00	1
1558	172.68.62.79	2018-05-12 09:56:38.323396+00	1
1559	108.162.215.205	2018-05-12 14:16:41.48865+00	1
1560	162.158.78.229	2018-05-12 15:48:24.169663+00	1
1561	172.68.186.25	2018-05-12 22:03:38.059821+00	1
1562	172.69.142.7	2018-05-13 03:43:03.813783+00	1
1563	162.158.2.181	2018-05-13 08:14:16.258907+00	1
1564	162.158.102.211	2018-05-13 15:05:23.491341+00	1
1565	172.68.132.110	2018-05-13 15:43:50.191474+00	1
1566	172.69.42.67	2018-05-13 16:27:34.438854+00	1
1567	141.101.88.187	2018-05-13 16:41:11.808434+00	1
1568	172.69.202.25	2018-05-13 19:12:34.297196+00	1
1569	162.158.91.152	2018-05-13 20:52:19.33463+00	4
1570	172.68.65.219	2018-05-14 01:18:29.002079+00	1
1571	172.69.186.55	2018-05-14 01:59:51.364049+00	3
1572	172.68.253.68	2018-05-14 04:17:19.660667+00	1
1573	172.68.239.86	2018-05-14 07:14:32.304614+00	1
1574	162.158.178.90	2018-05-14 08:11:57.567074+00	1
1575	172.68.146.197	2018-05-14 08:34:08.075492+00	1
1576	162.158.30.37	2018-05-14 09:09:03.899451+00	1
1577	172.69.226.86	2018-05-14 09:29:51.491798+00	1
1578	162.158.88.71	2018-05-14 11:52:46.321456+00	1
1579	141.101.107.63	2018-05-14 13:10:34.442472+00	3
1580	141.101.96.157	2018-05-14 13:36:07.084408+00	1
1581	172.68.51.217	2018-05-14 16:12:16.456817+00	1
1582	108.162.216.91	2018-05-14 17:42:18.727292+00	1
1583	162.158.122.135	2018-05-14 20:07:58.045108+00	1
1584	173.245.48.162	2018-05-14 20:18:26.193882+00	1
1585	162.158.75.49	2018-05-14 23:36:59.287506+00	1
1586	197.234.242.169	2018-05-15 01:12:03.749167+00	3
1587	172.68.239.152	2018-05-15 05:39:27.346684+00	3
1588	162.158.30.43	2018-05-15 05:40:07.117828+00	1
1589	162.158.202.31	2018-05-15 06:52:44.738521+00	1
1590	141.101.107.69	2018-05-15 08:18:39.782941+00	1
1591	172.68.254.93	2018-05-15 10:20:12.128988+00	1
1592	162.158.30.7	2018-05-15 10:37:32.62155+00	1
1593	172.68.244.219	2018-05-15 10:53:25.815381+00	1
1594	162.158.119.92	2018-05-15 12:04:10.902627+00	3
1595	172.68.65.111	2018-05-15 12:17:23.142883+00	3
1596	162.158.42.25	2018-05-15 12:40:56.360334+00	3
1597	162.158.146.145	2018-05-15 12:59:46.784642+00	2
1598	162.158.202.193	2018-05-15 13:09:32.930828+00	1
1599	108.162.221.235	2018-05-15 14:46:19.275156+00	1
1600	162.158.210.79	2018-05-15 17:39:46.052111+00	1
1601	162.158.74.210	2018-05-15 20:15:16.247238+00	1
1602	162.158.62.198	2018-05-16 03:55:53.322305+00	1
1603	162.158.118.169	2018-05-16 04:35:41.722841+00	1
1604	141.101.88.151	2018-05-16 04:52:53.4687+00	1
1605	162.158.78.211	2018-05-16 05:44:42.168214+00	1
1606	141.101.96.149	2018-05-16 07:31:36.558255+00	1
1607	141.101.88.103	2018-05-16 08:01:20.599414+00	1
1608	172.68.146.71	2018-05-16 09:10:52.642836+00	1
1609	172.68.255.167	2018-05-16 09:19:48.370038+00	1
1610	162.158.158.84	2018-05-16 14:13:45.846962+00	1
1611	162.158.75.205	2018-05-16 14:24:40.417816+00	1
1612	173.245.54.10	2018-05-16 14:30:52.353325+00	1
1613	162.158.186.81	2018-05-16 14:30:57.076626+00	1
1614	108.162.241.7	2018-05-16 15:42:31.84466+00	1
1615	162.158.103.20	2018-05-16 16:42:41.374955+00	1
1616	172.68.154.19	2018-05-16 16:45:22.057248+00	1
1617	162.158.210.25	2018-05-16 17:59:21.532141+00	1
1618	108.162.210.127	2018-05-16 20:47:01.346213+00	1
1619	162.158.102.157	2018-05-16 22:04:16.747357+00	1
1620	172.68.144.250	2018-05-17 04:04:59.507136+00	1
1621	141.101.107.63	2018-05-17 08:08:31.69001+00	1
1622	103.22.200.69	2018-05-17 09:22:34.680009+00	3
1623	162.158.90.243	2018-05-17 10:56:43.682213+00	1
1624	198.41.230.67	2018-05-17 12:02:20.788563+00	3
1625	162.158.75.205	2018-05-17 13:55:09.165172+00	4
1626	162.158.210.49	2018-05-17 14:05:28.229347+00	1
1627	162.158.38.163	2018-05-17 14:09:27.885516+00	1
1628	172.69.42.37	2018-05-17 19:43:35.678795+00	1
1629	172.68.189.190	2018-05-17 22:24:16.135199+00	1
1630	162.158.154.106	2018-05-17 22:25:04.332462+00	1
1631	108.162.241.181	2018-05-18 02:20:14.244119+00	1
1632	162.158.90.207	2018-05-18 06:02:12.066927+00	2
1633	108.162.221.85	2018-05-18 07:20:23.472376+00	2
1634	172.68.186.13	2018-05-18 07:25:12.359832+00	1
1635	172.69.138.43	2018-05-18 08:12:36.326611+00	4
1636	162.158.165.229	2018-05-18 08:36:21.67671+00	1
1637	162.158.165.199	2018-05-18 10:01:26.031492+00	1
1638	141.101.99.182	2018-05-18 10:46:22.344042+00	1
1639	172.68.186.31	2018-05-18 11:01:24.753054+00	1
1640	172.68.51.79	2018-05-18 11:20:38.732868+00	1
1641	172.68.146.191	2018-05-18 11:36:19.434459+00	1
1642	162.158.2.175	2018-05-18 13:55:54.452393+00	1
1643	172.69.69.79	2018-05-18 15:37:52.612823+00	4
1644	162.158.7.62	2018-05-18 16:03:45.902542+00	1
1645	162.158.93.6	2018-05-18 16:35:25.563553+00	1
1646	162.158.90.171	2018-05-18 18:30:34.344183+00	1
1647	172.69.70.122	2018-05-18 20:19:19.53428+00	1
1648	172.69.69.91	2018-05-18 21:01:02.076606+00	1
1649	172.69.69.229	2018-05-18 21:34:39.127184+00	1
1650	172.69.70.134	2018-05-18 22:47:16.288489+00	1
1651	103.22.200.147	2018-05-18 23:18:02.996479+00	1
1652	141.101.88.253	2018-05-19 02:16:00.992388+00	1
1653	172.68.10.19	2018-05-19 06:51:14.34457+00	1
1654	162.158.18.31	2018-05-19 14:31:31.904335+00	1
1655	162.158.165.109	2018-05-19 16:30:14.264044+00	1
1656	162.158.155.233	2018-05-19 18:06:07.186602+00	1
1657	162.158.89.220	2018-05-19 19:23:37.702879+00	4
1658	172.69.194.37	2018-05-19 20:30:28.833747+00	4
1659	108.162.241.187	2018-05-19 21:27:51.808669+00	1
1660	162.158.154.184	2018-05-19 23:41:44.354291+00	1
1661	173.245.48.138	2018-05-20 00:16:50.366787+00	1
1662	172.68.146.29	2018-05-20 03:33:32.877035+00	1
1663	162.158.103.104	2018-05-20 11:39:23.497419+00	1
1664	172.68.146.131	2018-05-20 13:27:42.933658+00	1
1665	162.158.165.37	2018-05-20 14:08:58.940866+00	1
1666	162.158.90.87	2018-05-20 18:03:16.42353+00	1
1667	141.101.88.193	2018-05-20 18:22:23.32716+00	1
1668	141.101.88.91	2018-05-20 19:28:01.810266+00	1
1669	108.162.221.133	2018-05-20 20:57:26.768317+00	1
1670	162.158.90.57	2018-05-20 22:56:00.758585+00	1
1671	162.158.74.222	2018-05-21 04:22:48.992205+00	1
1672	162.158.134.13	2018-05-21 04:32:58.927796+00	1
1673	162.158.79.56	2018-05-21 05:14:42.013627+00	4
1674	162.158.79.56	2018-05-21 05:15:15.734658+00	2
1675	141.101.97.63	2018-05-21 10:34:16.310436+00	1
1676	172.68.141.241	2018-05-21 17:36:42.12907+00	1
1677	188.114.111.50	2018-05-21 20:54:21.327544+00	1
1678	162.158.78.7	2018-05-21 21:29:06.962997+00	3
1679	172.68.143.249	2018-05-21 23:21:47.75344+00	1
\.


--
-- Name: post_viewcount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bloguser
--

SELECT pg_catalog.setval('public.post_viewcount_id_seq', 1679, true);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: post_post_pkey; Type: CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.post_post
    ADD CONSTRAINT post_post_pkey PRIMARY KEY (id);


--
-- Name: post_post_slug_key; Type: CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.post_post
    ADD CONSTRAINT post_post_slug_key UNIQUE (slug);


--
-- Name: post_post_title_key; Type: CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.post_post
    ADD CONSTRAINT post_post_title_key UNIQUE (title);


--
-- Name: post_viewcount_pkey; Type: CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.post_viewcount
    ADD CONSTRAINT post_viewcount_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: bloguser
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: bloguser
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: bloguser
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: bloguser
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: bloguser
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: bloguser
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: bloguser
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: bloguser
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: bloguser
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: bloguser
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: bloguser
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: bloguser
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: bloguser
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: post_post_slug_56a89051_like; Type: INDEX; Schema: public; Owner: bloguser
--

CREATE INDEX post_post_slug_56a89051_like ON public.post_post USING btree (slug varchar_pattern_ops);


--
-- Name: post_post_title_d798caad_like; Type: INDEX; Schema: public; Owner: bloguser
--

CREATE INDEX post_post_title_d798caad_like ON public.post_post USING btree (title varchar_pattern_ops);


--
-- Name: post_viewcount_post_id_05e1eaf9; Type: INDEX; Schema: public; Owner: bloguser
--

CREATE INDEX post_viewcount_post_id_05e1eaf9 ON public.post_viewcount USING btree (post_id);


--
-- Name: auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_viewcount_post_id_05e1eaf9_fk_post_post_id; Type: FK CONSTRAINT; Schema: public; Owner: bloguser
--

ALTER TABLE ONLY public.post_viewcount
    ADD CONSTRAINT post_viewcount_post_id_05e1eaf9_fk_post_post_id FOREIGN KEY (post_id) REFERENCES public.post_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

