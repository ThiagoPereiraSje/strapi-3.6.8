--
-- PostgreSQL database dump
--

-- Dumped from database version 12.10 (Debian 12.10-1.pgdg110+1)
-- Dumped by pg_dump version 12.10 (Debian 12.10-1.pgdg110+1)

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

ALTER TABLE IF EXISTS ONLY public.landing_pages_components DROP CONSTRAINT IF EXISTS landing_page_id_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_section_teches_components DROP CONSTRAINT IF EXISTS components_page_section_tech_id_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_section_reviews_components DROP CONSTRAINT IF EXISTS components_page_section_review_id_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_section_modules_components DROP CONSTRAINT IF EXISTS components_page_section_module_id_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_section_faqs_components DROP CONSTRAINT IF EXISTS components_page_section_faq_id_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_section_concepts_components DROP CONSTRAINT IF EXISTS components_page_section_concept_id_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_price_boxes_components DROP CONSTRAINT IF EXISTS components_page_price_box_id_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_headers_components DROP CONSTRAINT IF EXISTS components_page_header_id_fk;
ALTER TABLE IF EXISTS ONLY public.authors_components DROP CONSTRAINT IF EXISTS author_id_fk;
ALTER TABLE IF EXISTS ONLY public."users-permissions_user" DROP CONSTRAINT IF EXISTS "users-permissions_user_username_unique";
ALTER TABLE IF EXISTS ONLY public."users-permissions_user" DROP CONSTRAINT IF EXISTS "users-permissions_user_pkey";
ALTER TABLE IF EXISTS ONLY public."users-permissions_role" DROP CONSTRAINT IF EXISTS "users-permissions_role_type_unique";
ALTER TABLE IF EXISTS ONLY public."users-permissions_role" DROP CONSTRAINT IF EXISTS "users-permissions_role_pkey";
ALTER TABLE IF EXISTS ONLY public."users-permissions_permission" DROP CONSTRAINT IF EXISTS "users-permissions_permission_pkey";
ALTER TABLE IF EXISTS ONLY public.upload_file DROP CONSTRAINT IF EXISTS upload_file_pkey;
ALTER TABLE IF EXISTS ONLY public.upload_file_morph DROP CONSTRAINT IF EXISTS upload_file_morph_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_webhooks DROP CONSTRAINT IF EXISTS strapi_webhooks_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_users_roles DROP CONSTRAINT IF EXISTS strapi_users_roles_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_role DROP CONSTRAINT IF EXISTS strapi_role_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_role DROP CONSTRAINT IF EXISTS strapi_role_name_unique;
ALTER TABLE IF EXISTS ONLY public.strapi_role DROP CONSTRAINT IF EXISTS strapi_role_code_unique;
ALTER TABLE IF EXISTS ONLY public.strapi_permission DROP CONSTRAINT IF EXISTS strapi_permission_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_administrator DROP CONSTRAINT IF EXISTS strapi_administrator_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_administrator DROP CONSTRAINT IF EXISTS strapi_administrator_email_unique;
ALTER TABLE IF EXISTS ONLY public.landing_pages DROP CONSTRAINT IF EXISTS landing_pages_pkey;
ALTER TABLE IF EXISTS ONLY public.landing_pages_components DROP CONSTRAINT IF EXISTS landing_pages_components_pkey;
ALTER TABLE IF EXISTS ONLY public.i18n_locales DROP CONSTRAINT IF EXISTS i18n_locales_pkey;
ALTER TABLE IF EXISTS ONLY public.i18n_locales DROP CONSTRAINT IF EXISTS i18n_locales_code_unique;
ALTER TABLE IF EXISTS ONLY public.core_store DROP CONSTRAINT IF EXISTS core_store_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_tech_icons DROP CONSTRAINT IF EXISTS components_page_tech_icons_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_social_links DROP CONSTRAINT IF EXISTS components_page_social_links_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_teches DROP CONSTRAINT IF EXISTS components_page_section_teches_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_teches_components DROP CONSTRAINT IF EXISTS components_page_section_teches_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_reviews DROP CONSTRAINT IF EXISTS components_page_section_reviews_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_reviews_components DROP CONSTRAINT IF EXISTS components_page_section_reviews_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_modules DROP CONSTRAINT IF EXISTS components_page_section_modules_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_modules_components DROP CONSTRAINT IF EXISTS components_page_section_modules_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_faqs DROP CONSTRAINT IF EXISTS components_page_section_faqs_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_faqs_components DROP CONSTRAINT IF EXISTS components_page_section_faqs_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_concepts DROP CONSTRAINT IF EXISTS components_page_section_concepts_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_concepts_components DROP CONSTRAINT IF EXISTS components_page_section_concepts_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_agenda DROP CONSTRAINT IF EXISTS components_page_section_agenda_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_aboutuses DROP CONSTRAINT IF EXISTS components_page_section_aboutuses_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_aboutuses__authors DROP CONSTRAINT IF EXISTS components_page_section_aboutuses__authors_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_about_projects DROP CONSTRAINT IF EXISTS components_page_section_about_projects_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_reviews DROP CONSTRAINT IF EXISTS components_page_reviews_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_questions DROP CONSTRAINT IF EXISTS components_page_questions_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_price_boxes DROP CONSTRAINT IF EXISTS components_page_price_boxes_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_price_boxes_components DROP CONSTRAINT IF EXISTS components_page_price_boxes_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_modules DROP CONSTRAINT IF EXISTS components_page_modules_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_headers DROP CONSTRAINT IF EXISTS components_page_headers_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_headers_components DROP CONSTRAINT IF EXISTS components_page_headers_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_concepts DROP CONSTRAINT IF EXISTS components_page_concepts_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_buttons DROP CONSTRAINT IF EXISTS components_page_buttons_pkey;
ALTER TABLE IF EXISTS ONLY public.authors DROP CONSTRAINT IF EXISTS authors_pkey;
ALTER TABLE IF EXISTS ONLY public.authors_components DROP CONSTRAINT IF EXISTS authors_components_pkey;
ALTER TABLE IF EXISTS public."users-permissions_user" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."users-permissions_role" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."users-permissions_permission" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.upload_file_morph ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.upload_file ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_users_roles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_role ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_permission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_administrator ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.landing_pages_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.landing_pages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.i18n_locales ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.core_store ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_tech_icons ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_social_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_teches_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_teches ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_reviews_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_reviews ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_modules_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_modules ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_faqs_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_faqs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_concepts_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_concepts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_agenda ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_aboutuses__authors ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_aboutuses ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_about_projects ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_reviews ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_questions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_price_boxes_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_price_boxes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_modules ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_headers_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_headers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_concepts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_buttons ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.authors_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.authors ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS public."users-permissions_user_id_seq";
DROP TABLE IF EXISTS public."users-permissions_user";
DROP SEQUENCE IF EXISTS public."users-permissions_role_id_seq";
DROP TABLE IF EXISTS public."users-permissions_role";
DROP SEQUENCE IF EXISTS public."users-permissions_permission_id_seq";
DROP TABLE IF EXISTS public."users-permissions_permission";
DROP SEQUENCE IF EXISTS public.upload_file_morph_id_seq;
DROP TABLE IF EXISTS public.upload_file_morph;
DROP SEQUENCE IF EXISTS public.upload_file_id_seq;
DROP TABLE IF EXISTS public.upload_file;
DROP SEQUENCE IF EXISTS public.strapi_webhooks_id_seq;
DROP TABLE IF EXISTS public.strapi_webhooks;
DROP SEQUENCE IF EXISTS public.strapi_users_roles_id_seq;
DROP TABLE IF EXISTS public.strapi_users_roles;
DROP SEQUENCE IF EXISTS public.strapi_role_id_seq;
DROP TABLE IF EXISTS public.strapi_role;
DROP SEQUENCE IF EXISTS public.strapi_permission_id_seq;
DROP TABLE IF EXISTS public.strapi_permission;
DROP SEQUENCE IF EXISTS public.strapi_administrator_id_seq;
DROP TABLE IF EXISTS public.strapi_administrator;
DROP SEQUENCE IF EXISTS public.landing_pages_id_seq;
DROP SEQUENCE IF EXISTS public.landing_pages_components_id_seq;
DROP TABLE IF EXISTS public.landing_pages_components;
DROP TABLE IF EXISTS public.landing_pages;
DROP SEQUENCE IF EXISTS public.i18n_locales_id_seq;
DROP TABLE IF EXISTS public.i18n_locales;
DROP SEQUENCE IF EXISTS public.core_store_id_seq;
DROP TABLE IF EXISTS public.core_store;
DROP SEQUENCE IF EXISTS public.components_page_tech_icons_id_seq;
DROP TABLE IF EXISTS public.components_page_tech_icons;
DROP SEQUENCE IF EXISTS public.components_page_social_links_id_seq;
DROP TABLE IF EXISTS public.components_page_social_links;
DROP SEQUENCE IF EXISTS public.components_page_section_teches_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_section_teches_components_id_seq;
DROP TABLE IF EXISTS public.components_page_section_teches_components;
DROP TABLE IF EXISTS public.components_page_section_teches;
DROP SEQUENCE IF EXISTS public.components_page_section_reviews_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_section_reviews_components_id_seq;
DROP TABLE IF EXISTS public.components_page_section_reviews_components;
DROP TABLE IF EXISTS public.components_page_section_reviews;
DROP SEQUENCE IF EXISTS public.components_page_section_modules_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_section_modules_components_id_seq;
DROP TABLE IF EXISTS public.components_page_section_modules_components;
DROP TABLE IF EXISTS public.components_page_section_modules;
DROP SEQUENCE IF EXISTS public.components_page_section_faqs_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_section_faqs_components_id_seq;
DROP TABLE IF EXISTS public.components_page_section_faqs_components;
DROP TABLE IF EXISTS public.components_page_section_faqs;
DROP SEQUENCE IF EXISTS public.components_page_section_concepts_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_section_concepts_components_id_seq;
DROP TABLE IF EXISTS public.components_page_section_concepts_components;
DROP TABLE IF EXISTS public.components_page_section_concepts;
DROP SEQUENCE IF EXISTS public.components_page_section_agenda_id_seq;
DROP TABLE IF EXISTS public.components_page_section_agenda;
DROP SEQUENCE IF EXISTS public.components_page_section_aboutuses_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_section_aboutuses__authors_id_seq;
DROP TABLE IF EXISTS public.components_page_section_aboutuses__authors;
DROP TABLE IF EXISTS public.components_page_section_aboutuses;
DROP SEQUENCE IF EXISTS public.components_page_section_about_projects_id_seq;
DROP TABLE IF EXISTS public.components_page_section_about_projects;
DROP SEQUENCE IF EXISTS public.components_page_reviews_id_seq;
DROP TABLE IF EXISTS public.components_page_reviews;
DROP SEQUENCE IF EXISTS public.components_page_questions_id_seq;
DROP TABLE IF EXISTS public.components_page_questions;
DROP SEQUENCE IF EXISTS public.components_page_price_boxes_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_price_boxes_components_id_seq;
DROP TABLE IF EXISTS public.components_page_price_boxes_components;
DROP TABLE IF EXISTS public.components_page_price_boxes;
DROP SEQUENCE IF EXISTS public.components_page_modules_id_seq;
DROP TABLE IF EXISTS public.components_page_modules;
DROP SEQUENCE IF EXISTS public.components_page_headers_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_headers_components_id_seq;
DROP TABLE IF EXISTS public.components_page_headers_components;
DROP TABLE IF EXISTS public.components_page_headers;
DROP SEQUENCE IF EXISTS public.components_page_concepts_id_seq;
DROP TABLE IF EXISTS public.components_page_concepts;
DROP SEQUENCE IF EXISTS public.components_page_buttons_id_seq;
DROP TABLE IF EXISTS public.components_page_buttons;
DROP SEQUENCE IF EXISTS public.authors_id_seq;
DROP SEQUENCE IF EXISTS public.authors_components_id_seq;
DROP TABLE IF EXISTS public.authors_components;
DROP TABLE IF EXISTS public.authors;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: authors; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.authors (
    id integer NOT NULL,
    name character varying(255),
    role character varying(255),
    description text,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    published_at timestamp with time zone
);


ALTER TABLE public.authors OWNER TO strapi;

--
-- Name: authors_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.authors_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    author_id integer NOT NULL
);


ALTER TABLE public.authors_components OWNER TO strapi;

--
-- Name: authors_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.authors_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_components_id_seq OWNER TO strapi;

--
-- Name: authors_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.authors_components_id_seq OWNED BY public.authors_components.id;


--
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_id_seq OWNER TO strapi;

--
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;


--
-- Name: components_page_buttons; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_buttons (
    id integer NOT NULL,
    label character varying(255),
    url character varying(255)
);


ALTER TABLE public.components_page_buttons OWNER TO strapi;

--
-- Name: components_page_buttons_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_buttons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_buttons_id_seq OWNER TO strapi;

--
-- Name: components_page_buttons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_buttons_id_seq OWNED BY public.components_page_buttons.id;


--
-- Name: components_page_concepts; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_concepts (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_concepts OWNER TO strapi;

--
-- Name: components_page_concepts_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_concepts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_concepts_id_seq OWNER TO strapi;

--
-- Name: components_page_concepts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_concepts_id_seq OWNED BY public.components_page_concepts.id;


--
-- Name: components_page_headers; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_headers (
    id integer NOT NULL,
    title character varying(255),
    description character varying(255)
);


ALTER TABLE public.components_page_headers OWNER TO strapi;

--
-- Name: components_page_headers_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_headers_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_header_id integer NOT NULL
);


ALTER TABLE public.components_page_headers_components OWNER TO strapi;

--
-- Name: components_page_headers_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_headers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_headers_components_id_seq OWNER TO strapi;

--
-- Name: components_page_headers_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_headers_components_id_seq OWNED BY public.components_page_headers_components.id;


--
-- Name: components_page_headers_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_headers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_headers_id_seq OWNER TO strapi;

--
-- Name: components_page_headers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_headers_id_seq OWNED BY public.components_page_headers.id;


--
-- Name: components_page_modules; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_modules (
    id integer NOT NULL,
    title character varying(255),
    subtitle character varying(255),
    description text
);


ALTER TABLE public.components_page_modules OWNER TO strapi;

--
-- Name: components_page_modules_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_modules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_modules_id_seq OWNER TO strapi;

--
-- Name: components_page_modules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_modules_id_seq OWNED BY public.components_page_modules.id;


--
-- Name: components_page_price_boxes; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_price_boxes (
    id integer NOT NULL,
    "totalPrice" integer,
    "numberInstallments" integer,
    "priceInstallment" integer,
    benefits text
);


ALTER TABLE public.components_page_price_boxes OWNER TO strapi;

--
-- Name: components_page_price_boxes_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_price_boxes_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_price_box_id integer NOT NULL
);


ALTER TABLE public.components_page_price_boxes_components OWNER TO strapi;

--
-- Name: components_page_price_boxes_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_price_boxes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_price_boxes_components_id_seq OWNER TO strapi;

--
-- Name: components_page_price_boxes_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_price_boxes_components_id_seq OWNED BY public.components_page_price_boxes_components.id;


--
-- Name: components_page_price_boxes_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_price_boxes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_price_boxes_id_seq OWNER TO strapi;

--
-- Name: components_page_price_boxes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_price_boxes_id_seq OWNED BY public.components_page_price_boxes.id;


--
-- Name: components_page_questions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_questions (
    id integer NOT NULL,
    question text,
    answer text
);


ALTER TABLE public.components_page_questions OWNER TO strapi;

--
-- Name: components_page_questions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_questions_id_seq OWNER TO strapi;

--
-- Name: components_page_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_questions_id_seq OWNED BY public.components_page_questions.id;


--
-- Name: components_page_reviews; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_reviews (
    id integer NOT NULL,
    name character varying(255),
    text text
);


ALTER TABLE public.components_page_reviews OWNER TO strapi;

--
-- Name: components_page_reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_reviews_id_seq OWNER TO strapi;

--
-- Name: components_page_reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_reviews_id_seq OWNED BY public.components_page_reviews.id;


--
-- Name: components_page_section_about_projects; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_about_projects (
    id integer NOT NULL,
    title character varying(255),
    description text
);


ALTER TABLE public.components_page_section_about_projects OWNER TO strapi;

--
-- Name: components_page_section_about_projects_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_about_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_about_projects_id_seq OWNER TO strapi;

--
-- Name: components_page_section_about_projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_about_projects_id_seq OWNED BY public.components_page_section_about_projects.id;


--
-- Name: components_page_section_aboutuses; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_aboutuses (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_section_aboutuses OWNER TO strapi;

--
-- Name: components_page_section_aboutuses__authors; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_aboutuses__authors (
    id integer NOT NULL,
    components_page_section_aboutus_id integer,
    author_id integer
);


ALTER TABLE public.components_page_section_aboutuses__authors OWNER TO strapi;

--
-- Name: components_page_section_aboutuses__authors_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_aboutuses__authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_aboutuses__authors_id_seq OWNER TO strapi;

--
-- Name: components_page_section_aboutuses__authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_aboutuses__authors_id_seq OWNED BY public.components_page_section_aboutuses__authors.id;


--
-- Name: components_page_section_aboutuses_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_aboutuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_aboutuses_id_seq OWNER TO strapi;

--
-- Name: components_page_section_aboutuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_aboutuses_id_seq OWNED BY public.components_page_section_aboutuses.id;


--
-- Name: components_page_section_agenda; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_agenda (
    id integer NOT NULL,
    title character varying(255),
    description text
);


ALTER TABLE public.components_page_section_agenda OWNER TO strapi;

--
-- Name: components_page_section_agenda_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_agenda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_agenda_id_seq OWNER TO strapi;

--
-- Name: components_page_section_agenda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_agenda_id_seq OWNED BY public.components_page_section_agenda.id;


--
-- Name: components_page_section_concepts; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_concepts (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_section_concepts OWNER TO strapi;

--
-- Name: components_page_section_concepts_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_concepts_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_section_concept_id integer NOT NULL
);


ALTER TABLE public.components_page_section_concepts_components OWNER TO strapi;

--
-- Name: components_page_section_concepts_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_concepts_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_concepts_components_id_seq OWNER TO strapi;

--
-- Name: components_page_section_concepts_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_concepts_components_id_seq OWNED BY public.components_page_section_concepts_components.id;


--
-- Name: components_page_section_concepts_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_concepts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_concepts_id_seq OWNER TO strapi;

--
-- Name: components_page_section_concepts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_concepts_id_seq OWNED BY public.components_page_section_concepts.id;


--
-- Name: components_page_section_faqs; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_faqs (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_section_faqs OWNER TO strapi;

--
-- Name: components_page_section_faqs_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_faqs_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_section_faq_id integer NOT NULL
);


ALTER TABLE public.components_page_section_faqs_components OWNER TO strapi;

--
-- Name: components_page_section_faqs_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_faqs_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_faqs_components_id_seq OWNER TO strapi;

--
-- Name: components_page_section_faqs_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_faqs_components_id_seq OWNED BY public.components_page_section_faqs_components.id;


--
-- Name: components_page_section_faqs_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_faqs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_faqs_id_seq OWNER TO strapi;

--
-- Name: components_page_section_faqs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_faqs_id_seq OWNED BY public.components_page_section_faqs.id;


--
-- Name: components_page_section_modules; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_modules (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_section_modules OWNER TO strapi;

--
-- Name: components_page_section_modules_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_modules_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_section_module_id integer NOT NULL
);


ALTER TABLE public.components_page_section_modules_components OWNER TO strapi;

--
-- Name: components_page_section_modules_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_modules_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_modules_components_id_seq OWNER TO strapi;

--
-- Name: components_page_section_modules_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_modules_components_id_seq OWNED BY public.components_page_section_modules_components.id;


--
-- Name: components_page_section_modules_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_modules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_modules_id_seq OWNER TO strapi;

--
-- Name: components_page_section_modules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_modules_id_seq OWNED BY public.components_page_section_modules.id;


--
-- Name: components_page_section_reviews; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_reviews (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_section_reviews OWNER TO strapi;

--
-- Name: components_page_section_reviews_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_reviews_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_section_review_id integer NOT NULL
);


ALTER TABLE public.components_page_section_reviews_components OWNER TO strapi;

--
-- Name: components_page_section_reviews_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_reviews_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_reviews_components_id_seq OWNER TO strapi;

--
-- Name: components_page_section_reviews_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_reviews_components_id_seq OWNED BY public.components_page_section_reviews_components.id;


--
-- Name: components_page_section_reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_reviews_id_seq OWNER TO strapi;

--
-- Name: components_page_section_reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_reviews_id_seq OWNED BY public.components_page_section_reviews.id;


--
-- Name: components_page_section_teches; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_teches (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_section_teches OWNER TO strapi;

--
-- Name: components_page_section_teches_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_teches_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_section_tech_id integer NOT NULL
);


ALTER TABLE public.components_page_section_teches_components OWNER TO strapi;

--
-- Name: components_page_section_teches_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_teches_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_teches_components_id_seq OWNER TO strapi;

--
-- Name: components_page_section_teches_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_teches_components_id_seq OWNED BY public.components_page_section_teches_components.id;


--
-- Name: components_page_section_teches_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_teches_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_teches_id_seq OWNER TO strapi;

--
-- Name: components_page_section_teches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_teches_id_seq OWNED BY public.components_page_section_teches.id;


--
-- Name: components_page_social_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_social_links (
    id integer NOT NULL,
    title character varying(255),
    url character varying(255)
);


ALTER TABLE public.components_page_social_links OWNER TO strapi;

--
-- Name: components_page_social_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_social_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_social_links_id_seq OWNER TO strapi;

--
-- Name: components_page_social_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_social_links_id_seq OWNED BY public.components_page_social_links.id;


--
-- Name: components_page_tech_icons; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_tech_icons (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_tech_icons OWNER TO strapi;

--
-- Name: components_page_tech_icons_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_tech_icons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_tech_icons_id_seq OWNER TO strapi;

--
-- Name: components_page_tech_icons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_tech_icons_id_seq OWNED BY public.components_page_tech_icons.id;


--
-- Name: core_store; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.core_store OWNER TO strapi;

--
-- Name: core_store_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_store_id_seq OWNER TO strapi;

--
-- Name: core_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;


--
-- Name: i18n_locales; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.i18n_locales (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.i18n_locales OWNER TO strapi;

--
-- Name: i18n_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.i18n_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locales_id_seq OWNER TO strapi;

--
-- Name: i18n_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.i18n_locales_id_seq OWNED BY public.i18n_locales.id;


--
-- Name: landing_pages; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.landing_pages (
    id integer NOT NULL,
    title character varying(255),
    description text,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    published_at timestamp with time zone
);


ALTER TABLE public.landing_pages OWNER TO strapi;

--
-- Name: landing_pages_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.landing_pages_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    landing_page_id integer NOT NULL
);


ALTER TABLE public.landing_pages_components OWNER TO strapi;

--
-- Name: landing_pages_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.landing_pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.landing_pages_components_id_seq OWNER TO strapi;

--
-- Name: landing_pages_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.landing_pages_components_id_seq OWNED BY public.landing_pages_components.id;


--
-- Name: landing_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.landing_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.landing_pages_id_seq OWNER TO strapi;

--
-- Name: landing_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.landing_pages_id_seq OWNED BY public.landing_pages.id;


--
-- Name: strapi_administrator; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "registrationToken" character varying(255),
    "isActive" boolean,
    blocked boolean,
    "preferedLanguage" character varying(255)
);


ALTER TABLE public.strapi_administrator OWNER TO strapi;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_administrator_id_seq OWNER TO strapi;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;


--
-- Name: strapi_permission; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_permission (
    id integer NOT NULL,
    action character varying(255) NOT NULL,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_permission OWNER TO strapi;

--
-- Name: strapi_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_permission_id_seq OWNER TO strapi;

--
-- Name: strapi_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_permission_id_seq OWNED BY public.strapi_permission.id;


--
-- Name: strapi_role; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_role OWNER TO strapi;

--
-- Name: strapi_role_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_role_id_seq OWNER TO strapi;

--
-- Name: strapi_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_role_id_seq OWNED BY public.strapi_role.id;


--
-- Name: strapi_users_roles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_users_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);


ALTER TABLE public.strapi_users_roles OWNER TO strapi;

--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_users_roles_id_seq OWNER TO strapi;

--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_users_roles_id_seq OWNED BY public.strapi_users_roles.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: upload_file; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.upload_file OWNER TO strapi;

--
-- Name: upload_file_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_id_seq OWNER TO strapi;

--
-- Name: upload_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;


--
-- Name: upload_file_morph; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);


ALTER TABLE public.upload_file_morph OWNER TO strapi;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_morph_id_seq OWNER TO strapi;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;


--
-- Name: users-permissions_permission; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer,
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_permission" OWNER TO strapi;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_permission_id_seq" OWNER TO strapi;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;


--
-- Name: users-permissions_role; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255),
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_role" OWNER TO strapi;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_role_id_seq" OWNER TO strapi;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;


--
-- Name: users-permissions_user; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "confirmationToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public."users-permissions_user" OWNER TO strapi;

--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_user_id_seq" OWNER TO strapi;

--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;


--
-- Name: authors id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);


--
-- Name: authors_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.authors_components ALTER COLUMN id SET DEFAULT nextval('public.authors_components_id_seq'::regclass);


--
-- Name: components_page_buttons id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_buttons ALTER COLUMN id SET DEFAULT nextval('public.components_page_buttons_id_seq'::regclass);


--
-- Name: components_page_concepts id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_concepts ALTER COLUMN id SET DEFAULT nextval('public.components_page_concepts_id_seq'::regclass);


--
-- Name: components_page_headers id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_headers ALTER COLUMN id SET DEFAULT nextval('public.components_page_headers_id_seq'::regclass);


--
-- Name: components_page_headers_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_headers_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_headers_components_id_seq'::regclass);


--
-- Name: components_page_modules id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_modules ALTER COLUMN id SET DEFAULT nextval('public.components_page_modules_id_seq'::regclass);


--
-- Name: components_page_price_boxes id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_price_boxes ALTER COLUMN id SET DEFAULT nextval('public.components_page_price_boxes_id_seq'::regclass);


--
-- Name: components_page_price_boxes_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_price_boxes_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_price_boxes_components_id_seq'::regclass);


--
-- Name: components_page_questions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_questions ALTER COLUMN id SET DEFAULT nextval('public.components_page_questions_id_seq'::regclass);


--
-- Name: components_page_reviews id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_reviews ALTER COLUMN id SET DEFAULT nextval('public.components_page_reviews_id_seq'::regclass);


--
-- Name: components_page_section_about_projects id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_about_projects ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_about_projects_id_seq'::regclass);


--
-- Name: components_page_section_aboutuses id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_aboutuses ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_aboutuses_id_seq'::regclass);


--
-- Name: components_page_section_aboutuses__authors id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_aboutuses__authors ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_aboutuses__authors_id_seq'::regclass);


--
-- Name: components_page_section_agenda id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_agenda ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_agenda_id_seq'::regclass);


--
-- Name: components_page_section_concepts id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_concepts ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_concepts_id_seq'::regclass);


--
-- Name: components_page_section_concepts_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_concepts_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_concepts_components_id_seq'::regclass);


--
-- Name: components_page_section_faqs id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_faqs ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_faqs_id_seq'::regclass);


--
-- Name: components_page_section_faqs_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_faqs_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_faqs_components_id_seq'::regclass);


--
-- Name: components_page_section_modules id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_modules ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_modules_id_seq'::regclass);


--
-- Name: components_page_section_modules_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_modules_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_modules_components_id_seq'::regclass);


--
-- Name: components_page_section_reviews id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_reviews ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_reviews_id_seq'::regclass);


--
-- Name: components_page_section_reviews_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_reviews_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_reviews_components_id_seq'::regclass);


--
-- Name: components_page_section_teches id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_teches ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_teches_id_seq'::regclass);


--
-- Name: components_page_section_teches_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_teches_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_teches_components_id_seq'::regclass);


--
-- Name: components_page_social_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_social_links ALTER COLUMN id SET DEFAULT nextval('public.components_page_social_links_id_seq'::regclass);


--
-- Name: components_page_tech_icons id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_tech_icons ALTER COLUMN id SET DEFAULT nextval('public.components_page_tech_icons_id_seq'::regclass);


--
-- Name: core_store id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);


--
-- Name: i18n_locales id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locales ALTER COLUMN id SET DEFAULT nextval('public.i18n_locales_id_seq'::regclass);


--
-- Name: landing_pages id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.landing_pages ALTER COLUMN id SET DEFAULT nextval('public.landing_pages_id_seq'::regclass);


--
-- Name: landing_pages_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.landing_pages_components ALTER COLUMN id SET DEFAULT nextval('public.landing_pages_components_id_seq'::regclass);


--
-- Name: strapi_administrator id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);


--
-- Name: strapi_permission id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_permission ALTER COLUMN id SET DEFAULT nextval('public.strapi_permission_id_seq'::regclass);


--
-- Name: strapi_role id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_role ALTER COLUMN id SET DEFAULT nextval('public.strapi_role_id_seq'::regclass);


--
-- Name: strapi_users_roles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_users_roles ALTER COLUMN id SET DEFAULT nextval('public.strapi_users_roles_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: upload_file id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);


--
-- Name: upload_file_morph id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);


--
-- Name: users-permissions_permission id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);


--
-- Name: users-permissions_role id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);


--
-- Name: users-permissions_user id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.authors (id, name, role, description, created_by, updated_by, created_at, updated_at, published_at) FROM stdin;
1	Willian Justen	Instrutor	Desenvolvedor Front-end há mais de 10 anos, tendo trabalhado em grandes empresas como Toptal, Globo.com e Huge. Tenho um blog com mais de 200 mil views por mês, além de ter diversos cursos na Udemy, alcançando a incrível marca de mais de 200 mil alunos!	1	1	2022-04-19 11:20:25.565+00	2022-04-19 14:02:36.472+00	2022-04-19 11:20:25.565+00
2	Guilherme Louro	Instrutor	Desenvolvedor Fullstack há muitos anos, com conhecimento em diversas linguagens de programação. Já liderou grandes projetos e trabalha atualmente na Personare, um dos maiores portais de autoconhecimento do Brasil. Nas horas vagas é o criador e mantenedor do Netfla, site de notícias do Flamengo com mais de meio milhão de views por mês!	1	1	2022-04-19 11:22:48.505+00	2022-04-19 14:03:02.007+00	2022-04-19 11:22:48.505+00
3	Marcos Oliveira	Designer	Front-End e UI Designer há alguns anos. Atualmente trabalha na Lukin Co. Já participou de diversos tipos de projetos, na área da saúde, streaming e varejo. Sempre dividido entre design e programação. No tempo livre sempre está envolvido com a comunidade, organizando eventos e meetups.	1	1	2022-04-19 11:25:26.573+00	2022-04-19 14:03:08.191+00	2022-04-19 11:25:26.573+00
\.


--
-- Data for Name: authors_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.authors_components (id, field, "order", component_type, component_id, author_id) FROM stdin;
1	socialLinks	1	components_page_social_links	1	1
2	socialLinks	2	components_page_social_links	2	1
3	socialLinks	1	components_page_social_links	3	2
4	socialLinks	2	components_page_social_links	4	2
5	socialLinks	1	components_page_social_links	5	3
6	socialLinks	2	components_page_social_links	6	3
7	socialLinks	3	components_page_social_links	7	3
\.


--
-- Data for Name: components_page_buttons; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_buttons (id, label, url) FROM stdin;
1	Comprar	https://www.udemy.com/course/react-avancado/?couponCode=PROMOABR22
3	Comprar	https://www.udemy.com/course/react-avancado/?couponCode=PROMOABR22
2	Comprar o curso	https://www.udemy.com/course/react-avancado/?couponCode=PROMOABR22
\.


--
-- Data for Name: components_page_concepts; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_concepts (id, title) FROM stdin;
1	Boas práticas com ReactJS
2	Boas práticas com Styled
3	Boas práticas com Testes
4	Server Side Rendering (SSR)
5	Static Site Generation (SSG)
6	Rotas simples e dinâmicas
7	Funcionamento do GraphQL
8	Queries e Mutations
9	Filtros e paginações
10	Criar componentes do zero
11	Utilizar componentes third-party
12	Utilizar Storybook
13	Criar APIs rapidamente
14	Envio de emails automatizado
15	Autenticação de usuários
16	Fluxo de pagamentos
17	Criação de pipelines em CI
18	Deploy automatizado
\.


--
-- Data for Name: components_page_headers; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_headers (id, title, description) FROM stdin;
1	React Avançado	Crie aplicações reais com NextJS, Strapi, GraphQL e mais!
\.


--
-- Data for Name: components_page_headers_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_headers_components (id, field, "order", component_type, component_id, components_page_header_id) FROM stdin;
1	button	1	components_page_buttons	3	1
\.


--
-- Data for Name: components_page_modules; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_modules (id, title, subtitle, description) FROM stdin;
1	Módulo 1	Introdução e Arquitetura do Projeto	<p><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">Iremos conhecer a </span><i>Stack</i><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);"> utilizada no curso, tendo explicação de cada uma das escolhas, assim como mostrando os prós e contras de cada uma delas.</span></p><p><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">Iremos construir nosso boilerplate do zero, aprendendo a configurar as ferramentas de qualidade de código, como </span><i>Eslint</i><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">, </span><i>Prettier</i><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">, </span><i>Git hooks</i><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);"> e </span><i>TypeScript</i><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">. Assim como também configurar o </span><i>Styled Components</i><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);"> para funcionar com </span><i>SSR</i><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);"> e </span><i>PWA</i><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">.</span></p>
2	Módulo 2	Strapi e GraphQL	<p><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">Vamos iniciar nosso backend/CMS com o Strapi, aprender mais sobre sua API, como o content type builder, single types, custom components. Além de aprender a criar controllers customizados, serviços, instalar plugins de documentação e também do GraphQL, onde iremos aprender como funciona, como criar queries, filtros, mutations e mais.</span></p><p><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">Para finalizar, aprenderemos como customizar o CMS para que ele tenha a cara da loja e se torne uma solução mais interessante para o cliente.</span></p>
3	Módulo 3	Criando o Frontend	<p><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">Essa que será uma das maiores etapas, é onde vamos aprender a pegar um layout diretamente do Figma e vamos transformá-los em diferentes componentes e estilos.</span></p><p><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">Faremos todos os componentes com styled components, com testes, cenários no Storybook e pensando na responsividade. Com os componentes prontos, construiremos as páginas, ajustando o que for necessário para que tudo se encaixe perfeitamente.</span></p>
4	Módulo 4	Sistema de Pagamento e Área do Cliente	<p><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">Conheceremos algumas soluções de pagamento do mercado, vendo suas vantagens, desvantagens e APIs.</span></p><p><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">Criaremos toda a parte final do fluxo de pagamentos, conectando a nossa loja a um gateway de pagamento, salvando as compras em nosso banco de dados. Além de desenvolvermos a área do cliente, para que o cliente possa editar seus dados, ver compras realizadas e sua wishlist.</span></p>
5	Módulo 5	Testes de Integração	<p><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">Neste módulo iremos aprender a importância dos testes de integração e como garantir ainda mais qualidade no nosso projeto.</span></p><p><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">Vamos criar testes para todos os fluxos que um usuário normal pode executar em nosso site, desde a navegação normal até uma compra efetuada.</span></p>
6	Módulo 6	CI e Deploy	<p><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">Normalmente a maioria dos cursos termina na criação do projeto, mas nunca ensina como fazer para realmente deixar em produção.</span></p><p><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">Aqui nós iremos aprender quais as necessidades do projeto e quais as soluçoes que podemos utilizar. Além disso, iremos criar uma pipeline em um CI para que tenhamos todo o processo de deploy o mais automatizado possível.</span></p>
\.


--
-- Data for Name: components_page_price_boxes; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_price_boxes (id, "totalPrice", "numberInstallments", "priceInstallment", benefits) FROM stdin;
1	549	6	66	<ul><li>Acesso aos <strong>6 módulos</strong></li><li>Código de <strong>todo o projeto</strong> separado em commits</li><li>Contato <strong>direto</strong> com os instrutores via Slack</li><li><strong>Lives exclusivas</strong> durante o curso</li></ul>
\.


--
-- Data for Name: components_page_price_boxes_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_price_boxes_components (id, field, "order", component_type, component_id, components_page_price_box_id) FROM stdin;
1	button	1	components_page_buttons	2	1
\.


--
-- Data for Name: components_page_questions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_questions (id, question, answer) FROM stdin;
1	O que preciso saber para o curso?	<p><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">Um conhecimento básico de JavaScript/React é necessário para maior entendimento do curso, mas todo o conteúdo será explicado em detalhes e todas as perguntas/dúvidas serão respondidas.</span></p>
2	Onde os vídeos serão publicados?	<p><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">Os vídeos serão publicados na Udemy, com o mesmo funcionamento que já existe, vídeos offline, autoplay, acelerar em 2x, aplicativo nativo e mais.</span></p>
3	Quanto tempo tenho para fazer o curso?	<p style="margin-left:0px;">O curso é vitalício, faça quantas vezes quiser e quando quiser, nada de bloqueios ou pressa.</p>
4	Esse curso tem certificado?	<p><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">Sim, o curso terá certificado e você poderá baixá-lo diretamente da Udemy ao término do curso.</span></p>
5	Quais outros cursos você tem?	<p><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">Tenho alguns cursos gratuitos e pagos, você pode acessar todos os cursos </span><a href="https://willianjusten.com.br/cursos">nesse link.</a></p>
6	Posso usar o projeto para o meu Portfólio?	<p><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">Definitivamente! A ideia é que vocês tenham um projeto de verdade que possam utilizar como bem entenderem.</span></p>
7	Eu tenho outra dúvida!	<p><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">Sem problemas! Você pode acessar qualquer uma das </span><a href="https://willianjusten.com.br/about">minhas redes sociais</a><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);"> ou entrar no </span><a href="http://bit.ly/slack-will">slack do nosso curso.</a></p>
\.


--
-- Data for Name: components_page_reviews; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_reviews (id, name, text) FROM stdin;
3	Daniel P. de Oliveira	É incrível a forma como foi passado o conteúdo do curso, dá para ver que o Will tem um domínio impressionante sobre as ferramentas e tecnologias passadas, e mesmo eu tendo pouco conhecimento em React consegui acompanhar o curso sem muitas dificuldades. Espero que tenha mais cursos nessa linha, com certeza comprarei! Obrigado Will!
4	Mileine Souto	Sensacional! A didática do instrutor é excelente para estruturar o curso de dar o ritmo das aulas. Foi uma experiência muito enriquecedora (e divertida) construir um blog seguindo o passo-a-passo dos vídeos. Não sabia nada sobre Gatsby, GraphQL ou Netlify CMS mas consegui acompanhar todo o processo sem grandes dificuldades. Além disso, foi ótimo aprender um pouquinho mais sobre algumas práticas de \ndesenvolvimento, como temas em React, estilização CSS in JS com styled-components e\nutilização do Algolia como solução de busca. Recomendo! =)
5	Douglas Lopes	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
6	Ariel Dalton	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
7	Karoline Medeiros	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
1	Henrique Albert Schmalske	O Curo foi incrível! Gostei muito das explicações, bem claras e objetivas! Deixo a sugestão para um próximo Curso: NextJS Mostrando fazer um Ecommerce. Compraria sem nem olhar o preço.
2	Alexandre Teixeira	Esse já é o terceiro curso do Will que faço, e a didática do cara é incrível! Além disso, o cara segue trazendo o que tem de mais moderno no mercado de forma bem explicada e com aplicações práticas.
8	Luiz Cláudio Silva	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
\.


--
-- Data for Name: components_page_section_about_projects; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_about_projects (id, title, description) FROM stdin;
1	O que iremos construir	<p style="margin-left:0px;">Iremos criar um e-commerce de jogos, incluindo toda a parte de pagamentos e área do cliente. Os clientes poderão fazer buscas, filtrar, adicionar ao carrinho e comprar seus jogos favoritos.</p><p style="margin-left:0px;"><br><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">Teremos também um </span><strong>CMS completamente customizado</strong><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);"> para que os administradores possam adicionar produtos, categorias, plataformas, criar promoções, editar partes do site, além de emails automatizados para às vendas de cada produto.</span></p><p style="margin-left:0px;">&nbsp;</p><p><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">Para criar tudo isso, iremos utilizar ferramentas muito famosas no mercado de trabalho, como ReactJS, Next, Apollo e outras coisas mais. Sempre prezando pela qualidade do código, ou seja, teremos </span><strong>testes em tudo!</strong></p>
\.


--
-- Data for Name: components_page_section_aboutuses; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_aboutuses (id, title) FROM stdin;
1	Quem somos nós?
\.


--
-- Data for Name: components_page_section_aboutuses__authors; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_aboutuses__authors (id, components_page_section_aboutus_id, author_id) FROM stdin;
1	1	1
2	1	2
3	1	3
\.


--
-- Data for Name: components_page_section_agenda; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_agenda (id, title, description) FROM stdin;
1	Curso 100% completo!	<p style="margin-left:0px;">Todos os módulos do curso <strong>já foram lançados</strong>! E você pode assistir todos no seu tempo, pois o acesso é vitalício.</p><p style="margin-left:0px;">Os módulos podem ser feitos em ordem ou você pode assistir conforme sua necessidade.</p>
\.


--
-- Data for Name: components_page_section_concepts; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_concepts (id, title) FROM stdin;
1	Conceitos que você irá aprender
\.


--
-- Data for Name: components_page_section_concepts_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_concepts_components (id, field, "order", component_type, component_id, components_page_section_concept_id) FROM stdin;
1	concepts	1	components_page_concepts	1	1
2	concepts	2	components_page_concepts	2	1
3	concepts	3	components_page_concepts	3	1
4	concepts	4	components_page_concepts	4	1
5	concepts	5	components_page_concepts	5	1
6	concepts	6	components_page_concepts	6	1
7	concepts	7	components_page_concepts	7	1
8	concepts	8	components_page_concepts	8	1
9	concepts	9	components_page_concepts	9	1
10	concepts	10	components_page_concepts	10	1
11	concepts	11	components_page_concepts	11	1
12	concepts	12	components_page_concepts	12	1
13	concepts	13	components_page_concepts	13	1
14	concepts	14	components_page_concepts	14	1
15	concepts	15	components_page_concepts	15	1
16	concepts	16	components_page_concepts	16	1
17	concepts	17	components_page_concepts	17	1
18	concepts	18	components_page_concepts	18	1
\.


--
-- Data for Name: components_page_section_faqs; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_faqs (id, title) FROM stdin;
1	FAQ
\.


--
-- Data for Name: components_page_section_faqs_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_faqs_components (id, field, "order", component_type, component_id, components_page_section_faq_id) FROM stdin;
1	questions	1	components_page_questions	1	1
2	questions	2	components_page_questions	2	1
3	questions	3	components_page_questions	3	1
4	questions	4	components_page_questions	4	1
5	questions	5	components_page_questions	5	1
6	questions	6	components_page_questions	6	1
7	questions	7	components_page_questions	7	1
\.


--
-- Data for Name: components_page_section_modules; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_modules (id, title) FROM stdin;
1	Módulos deste curso
\.


--
-- Data for Name: components_page_section_modules_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_modules_components (id, field, "order", component_type, component_id, components_page_section_module_id) FROM stdin;
1	modules	1	components_page_modules	1	1
2	modules	2	components_page_modules	2	1
3	modules	3	components_page_modules	3	1
4	modules	4	components_page_modules	4	1
5	modules	5	components_page_modules	5	1
6	modules	6	components_page_modules	6	1
\.


--
-- Data for Name: components_page_section_reviews; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_reviews (id, title) FROM stdin;
1	Junte-se a mais de 200 mil alunos
\.


--
-- Data for Name: components_page_section_reviews_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_reviews_components (id, field, "order", component_type, component_id, components_page_section_review_id) FROM stdin;
1	reviews	1	components_page_reviews	1	1
2	reviews	2	components_page_reviews	2	1
3	reviews	3	components_page_reviews	3	1
4	reviews	4	components_page_reviews	4	1
5	reviews	5	components_page_reviews	5	1
6	reviews	6	components_page_reviews	6	1
7	reviews	7	components_page_reviews	7	1
8	reviews	8	components_page_reviews	8	1
\.


--
-- Data for Name: components_page_section_teches; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_teches (id, title) FROM stdin;
1	Tecnologias utilizadas
\.


--
-- Data for Name: components_page_section_teches_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_teches_components (id, field, "order", component_type, component_id, components_page_section_tech_id) FROM stdin;
1	techIcons	1	components_page_tech_icons	1	1
2	techIcons	2	components_page_tech_icons	2	1
3	techIcons	3	components_page_tech_icons	3	1
4	techIcons	4	components_page_tech_icons	4	1
5	techIcons	5	components_page_tech_icons	5	1
6	techIcons	6	components_page_tech_icons	6	1
7	techIcons	7	components_page_tech_icons	7	1
8	techIcons	8	components_page_tech_icons	8	1
9	techIcons	9	components_page_tech_icons	9	1
10	techIcons	10	components_page_tech_icons	10	1
\.


--
-- Data for Name: components_page_social_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_social_links (id, title, url) FROM stdin;
1	Twitter	https://twitter.com/Willian_justen
2	Github	https://github.com/willianjusten
3	Twitter	https://twitter.com/guilhermelouro
4	Github	https://github.com/guilouro
5	Twitter	https://twitter.com/vmaarcosp
6	Dribble	https://dribbble.com/vmarcosp
7	Github	https://github.com/vmarcosp
\.


--
-- Data for Name: components_page_tech_icons; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_tech_icons (id, title) FROM stdin;
1	TypeScript
2	React
3	NextJS
4	Strapi
5	Apollo
6	GraphQL
7	Jest
8	Testing Library
9	Storybook
10	Cypress
\.


--
-- Data for Name: core_store; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
15	model_def_page.section-reviews	{"uid":"page.section-reviews","collectionName":"components_page_section_reviews","info":{"name":"sectionReviews","icon":"star","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true},"reviews":{"type":"component","repeatable":true,"component":"page.reviews","required":true,"max":8}}}	object	\N	\N
18	model_def_page.tech-icon	{"uid":"page.tech-icon","collectionName":"components_page_tech_icons","info":{"name":"techIcon","icon":"tools"},"options":{"timestamps":false},"attributes":{"icon":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true,"pluginOptions":{}},"title":{"type":"string","required":true}}}	object	\N	\N
2	model_def_page.button	{"uid":"page.button","collectionName":"components_page_buttons","info":{"name":"button","icon":"external-link-alt"},"options":{"timestamps":false},"attributes":{"label":{"type":"string","default":"Comprar","required":true,"maxLength":20},"url":{"type":"string","required":true}}}	object	\N	\N
3	model_def_page.concepts	{"uid":"page.concepts","collectionName":"components_page_concepts","info":{"name":"concepts","icon":"stream"},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true}}}	object	\N	\N
4	model_def_page.header	{"uid":"page.header","collectionName":"components_page_headers","info":{"name":"header","icon":"heading","description":""},"options":{"timestamps":false},"attributes":{"image":{"model":"file","via":"related","allowedTypes":["images","videos"],"plugin":"upload","required":true,"pluginOptions":{}},"title":{"type":"string","required":true},"description":{"type":"string","required":true},"button":{"type":"component","repeatable":false,"component":"page.button","required":true}}}	object	\N	\N
5	model_def_page.modules	{"uid":"page.modules","collectionName":"components_page_modules","info":{"name":"modules","icon":"newspaper"},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true},"subtitle":{"type":"string","required":true},"description":{"type":"richtext","required":true}}}	object	\N	\N
7	model_def_page.questions	{"uid":"page.questions","collectionName":"components_page_questions","info":{"name":"questions","icon":"question"},"options":{"timestamps":false},"attributes":{"question":{"type":"text","required":true},"answer":{"type":"richtext","required":true}}}	object	\N	\N
9	model_def_page.section-about-project	{"uid":"page.section-about-project","collectionName":"components_page_section_about_projects","info":{"name":"sectionAboutProject","icon":"info"},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true},"description":{"type":"richtext","required":true},"image":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true,"pluginOptions":{}}}}	object	\N	\N
10	model_def_page.section-about-us	{"uid":"page.section-about-us","collectionName":"components_page_section_aboutuses","info":{"name":"sectionAboutUs","icon":"user-astronaut"},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true},"authors":{"unique":true,"collection":"author","attribute":"author","column":"id","isVirtual":true}}}	object	\N	\N
11	model_def_page.section-agenda	{"uid":"page.section-agenda","collectionName":"components_page_section_agenda","info":{"name":"sectionAgenda","icon":"calendar-alt"},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true},"description":{"type":"richtext","required":true}}}	object	\N	\N
12	model_def_page.section-concepts	{"uid":"page.section-concepts","collectionName":"components_page_section_concepts","info":{"name":"sectionConcepts","icon":"align-justify"},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true},"concepts":{"type":"component","repeatable":true,"component":"page.concepts"}}}	object	\N	\N
13	model_def_page.section-faq	{"uid":"page.section-faq","collectionName":"components_page_section_faqs","info":{"name":"sectionFaq","icon":"question-circle"},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true},"questions":{"type":"component","repeatable":true,"component":"page.questions","required":true,"min":2}}}	object	\N	\N
14	model_def_page.section-modules	{"uid":"page.section-modules","collectionName":"components_page_section_modules","info":{"name":"sectionModules","icon":"atlas"},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true},"modules":{"type":"component","repeatable":true,"component":"page.modules","required":true,"min":2}}}	object	\N	\N
16	model_def_page.section-tech	{"uid":"page.section-tech","collectionName":"components_page_section_teches","info":{"name":"sectionTech","icon":"toolbox","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true},"techIcons":{"type":"component","repeatable":true,"component":"page.tech-icon","required":true,"max":10,"min":5}}}	object	\N	\N
8	model_def_page.reviews	{"uid":"page.reviews","collectionName":"components_page_reviews","info":{"name":"reviews","icon":"user"},"options":{"timestamps":false},"attributes":{"name":{"type":"string","required":true},"text":{"type":"text","required":true},"photo":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}}}}	object	\N	\N
17	model_def_page.social-links	{"uid":"page.social-links","collectionName":"components_page_social_links","info":{"name":"socialLinks","icon":"network-wired"},"options":{"timestamps":false},"attributes":{"title":{"type":"enumeration","enum":["Github","Twitter","Dribble","Linkedin","Facebook"],"default":"Twitter","required":true},"url":{"type":"string","required":true}}}	object	\N	\N
21	model_def_strapi::webhooks	{"uid":"strapi::webhooks","collectionName":"strapi_webhooks","info":{"name":"Strapi webhooks","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string"},"url":{"type":"text"},"headers":{"type":"json"},"events":{"type":"json"},"enabled":{"type":"boolean"}}}	object	\N	\N
22	model_def_strapi::permission	{"uid":"strapi::permission","collectionName":"strapi_permission","kind":"collectionType","info":{"name":"Permission","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"model":"role","plugin":"admin"}}}	object	\N	\N
25	model_def_plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","collectionName":"users-permissions_permission","kind":"collectionType","info":{"name":"permission","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"type":{"type":"string","required":true,"configurable":false},"controller":{"type":"string","required":true,"configurable":false},"action":{"type":"string","required":true,"configurable":false},"enabled":{"type":"boolean","required":true,"configurable":false},"policy":{"type":"string","configurable":false},"role":{"model":"role","via":"permissions","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
23	model_def_strapi::role	{"uid":"strapi::role","collectionName":"strapi_role","kind":"collectionType","info":{"name":"Role","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"collection":"user","via":"roles","plugin":"admin","attribute":"user","column":"id","isVirtual":true},"permissions":{"configurable":false,"plugin":"admin","collection":"permission","via":"role","isVirtual":true}}}	object	\N	\N
24	model_def_strapi::user	{"uid":"strapi::user","collectionName":"strapi_administrator","kind":"collectionType","info":{"name":"User","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"collection":"role","collectionName":"strapi_users_roles","via":"users","dominant":true,"plugin":"admin","configurable":false,"private":true,"attribute":"role","column":"id","isVirtual":true},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}}}	object	\N	\N
30	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"}}	object		
31	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true}	object	development	
33	plugin_content_manager_configuration_components::page.concepts	{"uid":"page.concepts","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}]],"editRelations":[]},"isComponent":true}	object		
34	plugin_content_manager_configuration_components::page.header	{"uid":"page.header","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"button":{"edit":{"label":"Button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Button","searchable":false,"sortable":false}}},"layouts":{"list":["id","image","title","description"],"edit":[[{"name":"image","size":6},{"name":"title","size":6}],[{"name":"description","size":6}],[{"name":"button","size":12}]],"editRelations":[]},"isComponent":true}	object		
32	plugin_content_manager_configuration_components::page.button	{"uid":"page.button","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"label","defaultSortBy":"label","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"label":{"edit":{"label":"Label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Label","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}}},"layouts":{"list":["id","label","url"],"edit":[[{"name":"label","size":6},{"name":"url","size":6}]],"editRelations":[]},"isComponent":true}	object		
48	plugin_content_manager_configuration_components::page.tech-icon	{"uid":"page.tech-icon","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}}},"layouts":{"list":["id","icon","title"],"edit":[[{"name":"icon","size":6},{"name":"title","size":6}]],"editRelations":[]},"isComponent":true}	object		
47	plugin_content_manager_configuration_components::page.social-links	{"uid":"page.social-links","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"url","defaultSortBy":"url","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","url"],"edit":[[{"name":"title","size":6},{"name":"url","size":6}]],"editRelations":[]},"isComponent":true}	object		
49	plugin_i18n_default_locale	"en"	string		
51	plugin_content_manager_configuration_content_types::strapi::user	{"uid":"strapi::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"Firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"Lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"RegistrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RegistrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"IsActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"Roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"PreferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreferedLanguage","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}]]}}	object		
61	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object		
39	plugin_content_manager_configuration_components::page.section-about-us	{"uid":"page.section-about-us","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"authors":{"edit":{"label":"Authors","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Authors","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","authors"],"edit":[[{"name":"title","size":6},{"name":"authors","size":6}]],"editRelations":[]},"isComponent":true}	object		
50	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object		
53	plugin_content_manager_configuration_content_types::strapi::permission	{"uid":"strapi::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"Subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"Properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"Conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}]]}}	object		
40	plugin_content_manager_configuration_components::page.section-tech	{"uid":"page.section-tech","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"techIcons":{"edit":{"label":"TechIcons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TechIcons","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"techIcons","size":12}]],"editRelations":[]},"isComponent":true}	object		
52	plugin_content_manager_configuration_content_types::strapi::role	{"uid":"strapi::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"Users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}	object		
41	plugin_content_manager_configuration_components::page.section-reviews	{"uid":"page.section-reviews","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"reviews":{"edit":{"label":"Reviews","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Reviews","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"reviews","size":12}]],"editRelations":[]},"isComponent":true}	object		
42	plugin_content_manager_configuration_components::page.section-modules	{"uid":"page.section-modules","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"modules":{"edit":{"label":"Modules","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Modules","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"modules","size":12}]],"editRelations":[]},"isComponent":true}	object		
55	plugin_content_manager_configuration_content_types::application::landing-page.landing-page	{"uid":"application::landing-page.landing-page","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"logo":{"edit":{"label":"Logo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Logo","searchable":false,"sortable":false}},"header":{"edit":{"label":"Header","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Header","searchable":false,"sortable":false}},"sectionAboutProject":{"edit":{"label":"SectionAboutProject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SectionAboutProject","searchable":false,"sortable":false}},"sectionTech":{"edit":{"label":"SectionTech","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SectionTech","searchable":false,"sortable":false}},"sectionConcepts":{"edit":{"label":"SectionConcepts","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SectionConcepts","searchable":false,"sortable":false}},"sectionModules":{"edit":{"label":"SectionModules","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SectionModules","searchable":false,"sortable":false}},"sectionAgenda":{"edit":{"label":"SectionAgenda","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SectionAgenda","searchable":false,"sortable":false}},"pricingBox":{"edit":{"label":"PricingBox","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PricingBox","searchable":false,"sortable":false}},"sectionAboutUs":{"edit":{"label":"SectionAboutUs","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SectionAboutUs","searchable":false,"sortable":false}},"sectionReviews":{"edit":{"label":"SectionReviews","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SectionReviews","searchable":false,"sortable":false}},"sectionFaq":{"edit":{"label":"SectionFaq","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SectionFaq","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","logo"],"edit":[[{"name":"logo","size":6}],[{"name":"header","size":12}],[{"name":"sectionAboutProject","size":12}],[{"name":"sectionTech","size":12}],[{"name":"sectionConcepts","size":12}],[{"name":"sectionModules","size":12}],[{"name":"sectionAgenda","size":12}],[{"name":"pricingBox","size":12}],[{"name":"sectionAboutUs","size":12}],[{"name":"sectionReviews","size":12}],[{"name":"sectionFaq","size":12}]],"editRelations":[]}}	object		
57	plugin_content_manager_configuration_content_types::plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"ConfirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ConfirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}	object		
44	plugin_content_manager_configuration_components::page.section-concepts	{"uid":"page.section-concepts","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"concepts":{"edit":{"label":"Concepts","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Concepts","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"concepts","size":12}]],"editRelations":[]},"isComponent":true}	object		
54	plugin_content_manager_configuration_content_types::application::author.author	{"uid":"application::author.author","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"photo":{"edit":{"label":"Photo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Photo","searchable":false,"sortable":false}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Role","searchable":true,"sortable":true}},"socialLinks":{"edit":{"label":"SocialLinks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SocialLinks","searchable":false,"sortable":false}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","photo","name","role"],"editRelations":[],"edit":[[{"name":"photo","size":6},{"name":"name","size":6}],[{"name":"role","size":6}],[{"name":"socialLinks","size":12}],[{"name":"description","size":6}]]}}	object		
45	plugin_content_manager_configuration_components::page.section-agenda	{"uid":"page.section-agenda","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"description","size":12}]],"editRelations":[]},"isComponent":true}	object		
56	plugin_content_manager_configuration_content_types::plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"type"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}	object		
58	plugin_content_manager_configuration_content_types::plugins::i18n.locale	{"uid":"plugins::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","created_at"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object		
62	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null}}	object		
59	plugin_content_manager_configuration_content_types::plugins::upload.file	{"uid":"plugins::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"AlternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AlternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"Caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"Width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Width","searchable":true,"sortable":true}},"height":{"edit":{"label":"Height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"Formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"Hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"Ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"Mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"Size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Size","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"PreviewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreviewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"Provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider_metadata","searchable":false,"sortable":false}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Related","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":["related"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}	object		
60	plugin_content_manager_configuration_content_types::plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"controller":{"edit":{"label":"Controller","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Controller","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"policy":{"edit":{"label":"Policy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Policy","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","controller","action"],"editRelations":["role"],"edit":[[{"name":"type","size":6},{"name":"controller","size":6}],[{"name":"action","size":6},{"name":"enabled","size":4}],[{"name":"policy","size":6}]]}}	object		
6	model_def_page.price-box	{"uid":"page.price-box","collectionName":"components_page_price_boxes","info":{"name":"priceBox","icon":"dollar-sign"},"options":{"timestamps":false},"attributes":{"totalPrice":{"type":"integer","required":true,"default":415},"numberInstallments":{"type":"integer","required":true},"priceInstallment":{"type":"integer","required":true},"benefits":{"type":"richtext","default":"Create items as bullet list","required":true},"button":{"type":"component","repeatable":false,"component":"page.button","required":true}}}	object	\N	\N
29	model_def_plugins::i18n.locale	{"uid":"plugins::i18n.locale","collectionName":"i18n_locales","kind":"collectionType","info":{"name":"locale","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
35	plugin_content_manager_configuration_components::page.modules	{"uid":"page.modules","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","subtitle"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"description","size":12}]],"editRelations":[]},"isComponent":true}	object		
36	plugin_content_manager_configuration_components::page.price-box	{"uid":"page.price-box","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"totalPrice":{"edit":{"label":"TotalPrice","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TotalPrice","searchable":true,"sortable":true}},"numberInstallments":{"edit":{"label":"NumberInstallments","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"NumberInstallments","searchable":true,"sortable":true}},"priceInstallment":{"edit":{"label":"PriceInstallment","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PriceInstallment","searchable":true,"sortable":true}},"benefits":{"edit":{"label":"Benefits","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Benefits","searchable":false,"sortable":false}},"button":{"edit":{"label":"Button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Button","searchable":false,"sortable":false}}},"layouts":{"list":["id","totalPrice","numberInstallments","priceInstallment"],"edit":[[{"name":"totalPrice","size":4},{"name":"numberInstallments","size":4},{"name":"priceInstallment","size":4}],[{"name":"benefits","size":12}],[{"name":"button","size":12}]],"editRelations":[]},"isComponent":true}	object		
37	plugin_content_manager_configuration_components::page.questions	{"uid":"page.questions","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"question":{"edit":{"label":"Question","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Question","searchable":true,"sortable":true}},"answer":{"edit":{"label":"Answer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Answer","searchable":false,"sortable":false}}},"layouts":{"list":["id","question"],"edit":[[{"name":"question","size":6}],[{"name":"answer","size":12}]],"editRelations":[]},"isComponent":true}	object		
46	plugin_content_manager_configuration_components::page.reviews	{"uid":"page.reviews","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"text":{"edit":{"label":"Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Text","searchable":true,"sortable":true}},"photo":{"edit":{"label":"Photo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Photo","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","text","photo"],"edit":[[{"name":"name","size":6},{"name":"text","size":6}],[{"name":"photo","size":6}]],"editRelations":[]},"isComponent":true}	object		
38	plugin_content_manager_configuration_components::page.section-about-project	{"uid":"page.section-about-project","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","image"],"edit":[[{"name":"title","size":6}],[{"name":"description","size":12}],[{"name":"image","size":6}]],"editRelations":[]},"isComponent":true}	object		
43	plugin_content_manager_configuration_components::page.section-faq	{"uid":"page.section-faq","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"questions":{"edit":{"label":"Questions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Questions","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"questions","size":12}]],"editRelations":[]},"isComponent":true}	object		
1	model_def_strapi::core-store	{"uid":"strapi::core-store","collectionName":"core_store","info":{"name":"core_store","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"key":{"type":"string"},"value":{"type":"text"},"type":{"type":"string"},"environment":{"type":"string"},"tag":{"type":"string"}}}	object	\N	\N
26	model_def_plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","collectionName":"users-permissions_role","kind":"collectionType","info":{"name":"role","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"collection":"permission","via":"role","plugin":"users-permissions","configurable":false,"isVirtual":true},"users":{"collection":"user","via":"role","configurable":false,"plugin":"users-permissions","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
28	model_def_plugins::upload.file	{"uid":"plugins::upload.file","collectionName":"upload_file","kind":"collectionType","info":{"name":"file","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
19	model_def_application::author.author	{"uid":"application::author.author","collectionName":"authors","kind":"collectionType","info":{"name":"author","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"photo":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true,"pluginOptions":{}},"name":{"type":"string","required":true},"role":{"type":"string","required":true},"socialLinks":{"type":"component","repeatable":true,"component":"page.social-links","required":true},"description":{"type":"text","required":true},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
20	model_def_application::landing-page.landing-page	{"uid":"application::landing-page.landing-page","collectionName":"landing_pages","kind":"singleType","info":{"name":"landingPage","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"logo":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true,"pluginOptions":{}},"header":{"type":"component","repeatable":false,"component":"page.header"},"sectionAboutProject":{"type":"component","repeatable":false,"component":"page.section-about-project"},"sectionTech":{"type":"component","repeatable":false,"component":"page.section-tech"},"sectionConcepts":{"type":"component","repeatable":false,"component":"page.section-concepts"},"sectionModules":{"type":"component","repeatable":false,"component":"page.section-modules","required":true},"sectionAgenda":{"type":"component","repeatable":false,"component":"page.section-agenda"},"pricingBox":{"type":"component","repeatable":false,"component":"page.price-box"},"sectionAboutUs":{"type":"component","repeatable":false,"component":"page.section-about-us"},"sectionReviews":{"type":"component","repeatable":false,"component":"page.section-reviews"},"sectionFaq":{"type":"component","repeatable":false,"component":"page.section-faq"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
27	model_def_plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","collectionName":"users-permissions_user","kind":"collectionType","info":{"name":"user","description":""},"options":{"draftAndPublish":false,"timestamps":["created_at","updated_at"]},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"model":"role","via":"users","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
\.


--
-- Data for Name: i18n_locales; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.i18n_locales (id, name, code, created_by, updated_by, created_at, updated_at) FROM stdin;
1	English (en)	en	\N	\N	2022-04-18 19:35:50.391+00	2022-04-18 19:35:50.391+00
\.


--
-- Data for Name: landing_pages; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.landing_pages (id, title, description, created_by, updated_by, created_at, updated_at, published_at) FROM stdin;
1	React Avançado	Crie aplicações reais com NextJS, Strapi, GraphQL e mais!	1	1	2022-04-18 20:25:17.828+00	2022-04-19 16:36:39.212+00	2022-04-18 20:25:17.828+00
\.


--
-- Data for Name: landing_pages_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.landing_pages_components (id, field, "order", component_type, component_id, landing_page_id) FROM stdin;
2	button	1	components_page_buttons	1	1
1	header	1	components_page_headers	1	1
4	sectionAboutProject	1	components_page_section_about_projects	1	1
5	sectionTech	1	components_page_section_teches	1	1
6	sectionConcepts	1	components_page_section_concepts	1	1
3	sectionModules	1	components_page_section_modules	1	1
7	sectionAgenda	1	components_page_section_agenda	1	1
8	pricingBox	1	components_page_price_boxes	1	1
9	sectionAboutUs	1	components_page_section_aboutuses	1	1
10	sectionReviews	1	components_page_section_reviews	1	1
11	sectionFaq	1	components_page_section_faqs	1	1
\.


--
-- Data for Name: strapi_administrator; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_administrator (id, firstname, lastname, username, email, password, "resetPasswordToken", "registrationToken", "isActive", blocked, "preferedLanguage") FROM stdin;
1	thiago	pereira	\N	thiagopereiramail@gmail.com	$2a$10$5w4RCdsgwlffiM6bJcoVgucGfU9coepjdhbuJjGB72Npm9XRk9cca	\N	\N	t	\N	\N
\.


--
-- Data for Name: strapi_permission; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) FROM stdin;
137	plugins::content-manager.explorer.create	application::landing-page.landing-page	{"fields": ["logo", "header.image", "header.title", "header.description", "header.button.label", "header.button.url", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "sectionModules.title", "sectionModules.modules.title", "sectionModules.modules.subtitle", "sectionModules.modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.priceInstallment", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.text", "sectionReviews.reviews.photo", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer"]}	[]	1	2022-04-19 16:31:56.926+00	2022-04-19 16:31:56.96+00
146	plugins::content-manager.explorer.delete	application::author.author	{}	[]	1	2022-04-20 10:33:28.664+00	2022-04-20 10:33:28.683+00
1	plugins::content-manager.explorer.create	application::author.author	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]}	[]	2	2022-04-18 19:35:52.79+00	2022-04-18 19:35:52.823+00
3	plugins::content-manager.explorer.read	application::author.author	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]}	[]	2	2022-04-18 19:35:52.791+00	2022-04-18 19:35:52.824+00
5	plugins::content-manager.explorer.update	application::author.author	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]}	[]	2	2022-04-18 19:35:52.791+00	2022-04-18 19:35:52.825+00
7	plugins::content-manager.explorer.delete	application::author.author	{}	[]	2	2022-04-18 19:35:52.792+00	2022-04-18 19:35:52.825+00
9	plugins::content-manager.explorer.delete	application::landing-page.landing-page	{}	[]	2	2022-04-18 19:35:52.793+00	2022-04-18 19:35:52.832+00
12	plugins::upload.assets.create	\N	{}	[]	2	2022-04-18 19:35:52.872+00	2022-04-18 19:35:52.893+00
11	plugins::upload.read	\N	{}	[]	2	2022-04-18 19:35:52.871+00	2022-04-18 19:35:52.893+00
13	plugins::upload.assets.update	\N	{}	[]	2	2022-04-18 19:35:52.872+00	2022-04-18 19:35:52.897+00
20	plugins::content-manager.explorer.update	application::author.author	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]}	["admin::is-creator"]	3	2022-04-18 19:35:52.932+00	2022-04-18 19:35:52.958+00
23	plugins::upload.read	\N	{}	["admin::is-creator"]	3	2022-04-18 19:35:52.939+00	2022-04-18 19:35:52.965+00
25	plugins::upload.assets.create	\N	{}	[]	3	2022-04-18 19:35:52.94+00	2022-04-18 19:35:52.965+00
35	plugins::content-manager.explorer.update	application::author.author	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]}	[]	1	2022-04-18 19:35:53.108+00	2022-04-18 19:35:53.139+00
44	plugins::email.settings.read	\N	{}	[]	1	2022-04-18 19:35:53.198+00	2022-04-18 19:35:53.225+00
50	plugins::upload.settings.read	\N	{}	[]	1	2022-04-18 19:35:53.264+00	2022-04-18 19:35:53.299+00
53	plugins::i18n.locale.update	\N	{}	[]	1	2022-04-18 19:35:53.274+00	2022-04-18 19:35:53.305+00
62	plugins::users-permissions.providers.read	\N	{}	[]	1	2022-04-18 19:35:53.357+00	2022-04-18 19:35:53.384+00
64	plugins::users-permissions.email-templates.read	\N	{}	[]	1	2022-04-18 19:35:53.358+00	2022-04-18 19:35:53.384+00
72	admin::webhooks.read	\N	{}	[]	1	2022-04-18 19:35:53.428+00	2022-04-18 19:35:53.458+00
73	admin::webhooks.update	\N	{}	[]	1	2022-04-18 19:35:53.433+00	2022-04-18 19:35:53.464+00
80	admin::roles.read	\N	{}	[]	1	2022-04-18 19:35:53.508+00	2022-04-18 19:35:53.523+00
82	admin::roles.delete	\N	{}	[]	1	2022-04-18 19:35:53.512+00	2022-04-18 19:35:53.527+00
24	plugins::content-manager.explorer.delete	application::landing-page.landing-page	{}	["admin::is-creator"]	3	2022-04-18 19:35:52.939+00	2022-04-18 19:35:52.965+00
34	plugins::content-manager.explorer.read	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2022-04-18 19:35:53.107+00	2022-04-18 19:35:53.138+00
45	plugins::upload.read	\N	{}	[]	1	2022-04-18 19:35:53.198+00	2022-04-18 19:35:53.225+00
56	plugins::content-manager.collection-types.configure-view	\N	{}	[]	1	2022-04-18 19:35:53.275+00	2022-04-18 19:35:53.306+00
67	plugins::users-permissions.advanced-settings.update	\N	{}	[]	1	2022-04-18 19:35:53.364+00	2022-04-18 19:35:53.391+00
77	admin::users.update	\N	{}	[]	1	2022-04-18 19:35:53.442+00	2022-04-18 19:35:53.471+00
138	plugins::content-manager.explorer.read	application::landing-page.landing-page	{"fields": ["logo", "header.image", "header.title", "header.description", "header.button.label", "header.button.url", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "sectionModules.title", "sectionModules.modules.title", "sectionModules.modules.subtitle", "sectionModules.modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.priceInstallment", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.text", "sectionReviews.reviews.photo", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer"]}	[]	1	2022-04-19 16:31:56.927+00	2022-04-19 16:31:56.96+00
6	plugins::content-manager.explorer.update	application::landing-page.landing-page	{"fields": ["logo", "header.image", "header.title", "header.description", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "sectionModules.title", "sectionModules.modules.title", "sectionModules.modules.subtitle", "sectionModules.modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.priceInstallment", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.text", "sectionReviews.reviews.photo", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer", "header.button.label", "header.button.url"]}	[]	2	2022-04-18 19:35:52.792+00	2022-04-19 16:31:57.227+00
145	plugins::content-manager.explorer.delete	application::landing-page.landing-page	{}	[]	1	2022-04-20 10:33:28.664+00	2022-04-20 10:33:28.683+00
14	plugins::upload.assets.download	\N	{}	[]	2	2022-04-18 19:35:52.876+00	2022-04-18 19:35:52.897+00
17	plugins::content-manager.explorer.read	application::author.author	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]}	["admin::is-creator"]	3	2022-04-18 19:35:52.93+00	2022-04-18 19:35:52.957+00
27	plugins::upload.assets.download	\N	{}	[]	3	2022-04-18 19:35:53.007+00	2022-04-18 19:35:53.017+00
29	plugins::content-manager.explorer.create	application::author.author	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]}	[]	1	2022-04-18 19:35:53.106+00	2022-04-18 19:35:53.136+00
49	plugins::upload.assets.copy-link	\N	{}	[]	1	2022-04-18 19:35:53.264+00	2022-04-18 19:35:53.29+00
59	plugins::users-permissions.roles.read	\N	{}	[]	1	2022-04-18 19:35:53.346+00	2022-04-18 19:35:53.37+00
71	admin::webhooks.create	\N	{}	[]	1	2022-04-18 19:35:53.424+00	2022-04-18 19:35:53.458+00
139	plugins::content-manager.explorer.update	application::landing-page.landing-page	{"fields": ["logo", "header.image", "header.title", "header.description", "header.button.label", "header.button.url", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "sectionModules.title", "sectionModules.modules.title", "sectionModules.modules.subtitle", "sectionModules.modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.priceInstallment", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.text", "sectionReviews.reviews.photo", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer"]}	[]	1	2022-04-19 16:31:56.927+00	2022-04-19 16:31:56.961+00
2	plugins::content-manager.explorer.create	application::landing-page.landing-page	{"fields": ["logo", "header.image", "header.title", "header.description", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "sectionModules.title", "sectionModules.modules.title", "sectionModules.modules.subtitle", "sectionModules.modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.priceInstallment", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.text", "sectionReviews.reviews.photo", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer", "header.button.label", "header.button.url"]}	[]	2	2022-04-18 19:35:52.791+00	2022-04-19 16:31:57.228+00
147	plugins::content-manager.explorer.delete	plugins::users-permissions.user	{}	[]	1	2022-04-20 10:33:28.665+00	2022-04-20 10:33:28.683+00
15	plugins::upload.assets.copy-link	\N	{}	[]	2	2022-04-18 19:35:52.882+00	2022-04-18 19:35:52.901+00
19	plugins::content-manager.explorer.create	application::author.author	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]}	["admin::is-creator"]	3	2022-04-18 19:35:52.932+00	2022-04-18 19:35:52.958+00
28	plugins::upload.assets.copy-link	\N	{}	[]	3	2022-04-18 19:35:53.007+00	2022-04-18 19:35:53.019+00
18	plugins::content-manager.explorer.create	application::landing-page.landing-page	{"fields": ["logo", "header.image", "header.title", "header.description", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "sectionModules.title", "sectionModules.modules.title", "sectionModules.modules.subtitle", "sectionModules.modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.priceInstallment", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.text", "sectionReviews.reviews.photo", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer", "header.button.label", "header.button.url"]}	["admin::is-creator"]	3	2022-04-18 19:35:52.931+00	2022-04-19 16:31:57.228+00
55	plugins::content-manager.single-types.configure-view	\N	{}	[]	1	2022-04-18 19:35:53.275+00	2022-04-18 19:35:53.306+00
65	plugins::users-permissions.email-templates.update	\N	{}	[]	1	2022-04-18 19:35:53.358+00	2022-04-18 19:35:53.385+00
75	admin::users.create	\N	{}	[]	1	2022-04-18 19:35:53.434+00	2022-04-18 19:35:53.465+00
148	plugins::content-manager.explorer.publish	application::author.author	{}	[]	1	2022-04-20 10:33:28.665+00	2022-04-20 10:33:28.691+00
26	plugins::upload.assets.update	\N	{}	["admin::is-creator"]	3	2022-04-18 19:35:53.006+00	2022-04-18 19:35:53.017+00
31	plugins::content-manager.explorer.create	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2022-04-18 19:35:53.106+00	2022-04-18 19:35:53.137+00
43	plugins::content-type-builder.read	\N	{}	[]	1	2022-04-18 19:35:53.193+00	2022-04-18 19:35:53.218+00
51	plugins::i18n.locale.create	\N	{}	[]	1	2022-04-18 19:35:53.268+00	2022-04-18 19:35:53.298+00
60	plugins::users-permissions.roles.update	\N	{}	[]	1	2022-04-18 19:35:53.351+00	2022-04-18 19:35:53.376+00
69	admin::marketplace.plugins.install	\N	{}	[]	1	2022-04-18 19:35:53.423+00	2022-04-18 19:35:53.452+00
79	admin::roles.create	\N	{}	[]	1	2022-04-18 19:35:53.505+00	2022-04-18 19:35:53.524+00
16	plugins::content-manager.explorer.read	application::landing-page.landing-page	{"fields": ["logo", "header.image", "header.title", "header.description", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "sectionModules.title", "sectionModules.modules.title", "sectionModules.modules.subtitle", "sectionModules.modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.priceInstallment", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.text", "sectionReviews.reviews.photo", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer", "header.button.label", "header.button.url"]}	["admin::is-creator"]	3	2022-04-18 19:35:52.93+00	2022-04-19 16:31:57.236+00
149	plugins::content-manager.explorer.publish	application::landing-page.landing-page	{}	[]	1	2022-04-20 10:33:28.671+00	2022-04-20 10:33:28.69+00
46	plugins::upload.assets.create	\N	{}	[]	1	2022-04-18 19:35:53.198+00	2022-04-18 19:35:53.225+00
54	plugins::i18n.locale.delete	\N	{}	[]	1	2022-04-18 19:35:53.274+00	2022-04-18 19:35:53.306+00
63	plugins::users-permissions.providers.update	\N	{}	[]	1	2022-04-18 19:35:53.357+00	2022-04-18 19:35:53.384+00
74	admin::webhooks.delete	\N	{}	[]	1	2022-04-18 19:35:53.433+00	2022-04-18 19:35:53.464+00
4	plugins::content-manager.explorer.read	application::landing-page.landing-page	{"fields": ["logo", "header.image", "header.title", "header.description", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "sectionModules.title", "sectionModules.modules.title", "sectionModules.modules.subtitle", "sectionModules.modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.priceInstallment", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.text", "sectionReviews.reviews.photo", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer", "header.button.label", "header.button.url"]}	[]	2	2022-04-18 19:35:52.791+00	2022-04-19 16:31:57.235+00
37	plugins::content-manager.explorer.update	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2022-04-18 19:35:53.115+00	2022-04-18 19:35:53.149+00
47	plugins::upload.assets.update	\N	{}	[]	1	2022-04-18 19:35:53.199+00	2022-04-18 19:35:53.225+00
57	plugins::content-manager.components.configure-layout	\N	{}	[]	1	2022-04-18 19:35:53.284+00	2022-04-18 19:35:53.314+00
66	plugins::users-permissions.advanced-settings.read	\N	{}	[]	1	2022-04-18 19:35:53.364+00	2022-04-18 19:35:53.391+00
76	admin::users.read	\N	{}	[]	1	2022-04-18 19:35:53.434+00	2022-04-18 19:35:53.465+00
21	plugins::content-manager.explorer.update	application::landing-page.landing-page	{"fields": ["logo", "header.image", "header.title", "header.description", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "sectionModules.title", "sectionModules.modules.title", "sectionModules.modules.subtitle", "sectionModules.modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.priceInstallment", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.text", "sectionReviews.reviews.photo", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer", "header.button.label", "header.button.url"]}	["admin::is-creator"]	3	2022-04-18 19:35:52.932+00	2022-04-19 16:31:57.244+00
22	plugins::content-manager.explorer.delete	application::author.author	{}	["admin::is-creator"]	3	2022-04-18 19:35:52.933+00	2022-04-18 19:35:52.965+00
32	plugins::content-manager.explorer.read	application::author.author	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]}	[]	1	2022-04-18 19:35:53.107+00	2022-04-18 19:35:53.138+00
52	plugins::i18n.locale.read	\N	{}	[]	1	2022-04-18 19:35:53.269+00	2022-04-18 19:35:53.298+00
61	plugins::users-permissions.roles.delete	\N	{}	[]	1	2022-04-18 19:35:53.351+00	2022-04-18 19:35:53.376+00
70	admin::marketplace.plugins.uninstall	\N	{}	[]	1	2022-04-18 19:35:53.424+00	2022-04-18 19:35:53.452+00
81	admin::roles.update	\N	{}	[]	1	2022-04-18 19:35:53.508+00	2022-04-18 19:35:53.523+00
48	plugins::upload.assets.download	\N	{}	[]	1	2022-04-18 19:35:53.205+00	2022-04-18 19:35:53.234+00
58	plugins::users-permissions.roles.create	\N	{}	[]	1	2022-04-18 19:35:53.29+00	2022-04-18 19:35:53.322+00
68	admin::marketplace.read	\N	{}	[]	1	2022-04-18 19:35:53.377+00	2022-04-18 19:35:53.406+00
78	admin::users.delete	\N	{}	[]	1	2022-04-18 19:35:53.465+00	2022-04-18 19:35:53.5+00
\.


--
-- Data for Name: strapi_role; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_role (id, name, code, description, created_at, updated_at) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2022-04-18 19:35:52.71+00	2022-04-18 19:35:52.71+00
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2022-04-18 19:35:52.733+00	2022-04-18 19:35:52.733+00
3	Author	strapi-author	Authors can manage the content they have created.	2022-04-18 19:35:52.752+00	2022-04-18 19:35:52.752+00
\.


--
-- Data for Name: strapi_users_roles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_users_roles (id, user_id, role_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: upload_file; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) FROM stdin;
3	capa-do-projeto.webp			586	447	{"small": {"ext": ".webp", "url": "/uploads/small_capa_do_projeto_7c06d79745.webp", "hash": "small_capa_do_projeto_7c06d79745", "mime": "image/webp", "name": "small_capa-do-projeto.webp", "path": null, "size": 21.43, "width": 500, "height": 381}, "thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_capa_do_projeto_7c06d79745.webp", "hash": "thumbnail_capa_do_projeto_7c06d79745", "mime": "image/webp", "name": "thumbnail_capa-do-projeto.webp", "path": null, "size": 6.1, "width": 205, "height": 156}}	capa_do_projeto_7c06d79745	.webp	image/webp	21.71	/uploads/capa_do_projeto_7c06d79745.webp	\N	local	\N	1	1	2022-04-18 20:28:31.927+00	2022-04-18 20:28:31.941+00
4	typescript.svg			128	129	\N	typescript_c388976265	.svg	image/svg+xml	1.84	/uploads/typescript_c388976265.svg	\N	local	\N	1	1	2022-04-18 20:30:59.434+00	2022-04-18 20:30:59.449+00
5	react.svg			131	129	\N	react_8f49da24c8	.svg	image/svg+xml	2.23	/uploads/react_8f49da24c8.svg	\N	local	\N	1	1	2022-04-18 20:31:24.344+00	2022-04-18 20:31:24.358+00
6	nextjs.svg			131	128	\N	nextjs_d7a2413286	.svg	image/svg+xml	1.29	/uploads/nextjs_d7a2413286.svg	\N	local	\N	1	1	2022-04-18 20:31:49.344+00	2022-04-18 20:31:49.358+00
7	strapi.svg			128	129	\N	strapi_e53ae8016a	.svg	image/svg+xml	1.17	/uploads/strapi_e53ae8016a.svg	\N	local	\N	1	1	2022-04-18 20:32:09.534+00	2022-04-18 20:32:09.55+00
8	apollo.svg			130	128	\N	apollo_6e008967c7	.svg	image/svg+xml	1.54	/uploads/apollo_6e008967c7.svg	\N	local	\N	1	1	2022-04-18 20:32:31.584+00	2022-04-18 20:32:31.601+00
9	graphql.svg			129	128	\N	graphql_061061480e	.svg	image/svg+xml	2.84	/uploads/graphql_061061480e.svg	\N	local	\N	1	1	2022-04-18 20:32:56.27+00	2022-04-18 20:32:56.294+00
10	jest.svg			123	123	\N	jest_fa1b004a29	.svg	image/svg+xml	2.78	/uploads/jest_fa1b004a29.svg	\N	local	\N	1	1	2022-04-18 20:33:15.635+00	2022-04-18 20:33:15.649+00
11	rtl.svg			128	129	\N	rtl_32cf5e3797	.svg	image/svg+xml	9.62	/uploads/rtl_32cf5e3797.svg	\N	local	\N	1	1	2022-04-18 20:33:39.516+00	2022-04-18 20:33:39.531+00
12	storybook.svg			128	129	\N	storybook_fb8b8c2520	.svg	image/svg+xml	2.56	/uploads/storybook_fb8b8c2520.svg	\N	local	\N	1	1	2022-04-18 20:34:01.583+00	2022-04-18 20:34:01.596+00
13	cypress.svg			130	129	\N	cypress_f8f004c577	.svg	image/svg+xml	1.73	/uploads/cypress_f8f004c577.svg	\N	local	\N	1	1	2022-04-18 20:34:22.189+00	2022-04-18 20:34:22.202+00
14	justin.webp			250	250	{"thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_justin_50e8741478.webp", "hash": "thumbnail_justin_50e8741478", "mime": "image/webp", "name": "thumbnail_justin.webp", "path": null, "size": 4.17, "width": 156, "height": 156}}	justin_50e8741478	.webp	image/webp	6.42	/uploads/justin_50e8741478.webp	\N	local	\N	1	1	2022-04-19 11:19:03.992+00	2022-04-19 11:19:04.007+00
15	guilherme.webp			396	396	{"thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_guilherme_123e358cf1.webp", "hash": "thumbnail_guilherme_123e358cf1", "mime": "image/webp", "name": "thumbnail_guilherme.webp", "path": null, "size": 5.79, "width": 156, "height": 156}}	guilherme_123e358cf1	.webp	image/webp	18.09	/uploads/guilherme_123e358cf1.webp	\N	local	\N	1	1	2022-04-19 11:21:37.639+00	2022-04-19 11:21:37.65+00
16	marcos.webp			252	251	{"thumbnail": {"ext": ".webp", "url": "/uploads/thumbnail_marcos_03866f6b8a.webp", "hash": "thumbnail_marcos_03866f6b8a", "mime": "image/webp", "name": "thumbnail_marcos.webp", "path": null, "size": 3.71, "width": 157, "height": 156}}	marcos_03866f6b8a	.webp	image/webp	5.46	/uploads/marcos_03866f6b8a.webp	\N	local	\N	1	1	2022-04-19 11:23:35.149+00	2022-04-19 11:23:35.161+00
17	review01.webp			50	50	\N	review01_d78e963aaa	.webp	image/webp	0.61	/uploads/review01_d78e963aaa.webp	\N	local	\N	1	1	2022-04-19 11:31:44.881+00	2022-04-19 11:31:44.894+00
18	review02.webp			50	50	\N	review02_2d23293ed9	.webp	image/webp	0.59	/uploads/review02_2d23293ed9.webp	\N	local	\N	1	1	2022-04-19 11:34:34.12+00	2022-04-19 11:34:34.135+00
19	review03.webp			50	50	\N	review03_af4a0304f9	.webp	image/webp	0.61	/uploads/review03_af4a0304f9.webp	\N	local	\N	1	1	2022-04-19 11:38:17.391+00	2022-04-19 11:38:17.408+00
20	review04.webp			50	50	\N	review04_ee8eafc176	.webp	image/webp	0.64	/uploads/review04_ee8eafc176.webp	\N	local	\N	1	1	2022-04-19 11:44:19.632+00	2022-04-19 11:44:19.646+00
21	review05.webp			50	50	\N	review05_0c14ca692f	.webp	image/webp	0.64	/uploads/review05_0c14ca692f.webp	\N	local	\N	1	1	2022-04-19 11:50:37.918+00	2022-04-19 11:50:37.937+00
22	review06.webp			50	50	\N	review06_dd80d8d34a	.webp	image/webp	0.53	/uploads/review06_dd80d8d34a.webp	\N	local	\N	1	1	2022-04-19 11:51:28.583+00	2022-04-19 11:51:28.598+00
23	review07.webp			50	50	\N	review07_f1db26b816	.webp	image/webp	1.03	/uploads/review07_f1db26b816.webp	\N	local	\N	1	1	2022-04-19 11:52:22.488+00	2022-04-19 11:52:22.504+00
24	review08.webp			50	50	\N	review08_707efa4fd3	.webp	image/webp	0.96	/uploads/review08_707efa4fd3.webp	\N	local	\N	1	1	2022-04-19 11:53:16.359+00	2022-04-19 11:53:16.373+00
1	logo.svg	React Avançado		256	56	\N	logo_1e3d1f7a95	.svg	image/svg+xml	7.11	/uploads/logo_1e3d1f7a95.svg	\N	local	\N	1	1	2022-04-18 20:23:25.259+00	2022-04-19 16:04:13.16+00
2	hero-illustration.svg	Ilustração de um programador com várias telas de código		427	373	\N	hero_illustration_a092e2fd3b	.svg	image/svg+xml	12.61	/uploads/hero_illustration_a092e2fd3b.svg	\N	local	\N	1	1	2022-04-18 20:23:53.298+00	2022-04-19 16:36:29.938+00
\.


--
-- Data for Name: upload_file_morph; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
71	14	1	authors	photo	1
72	15	2	authors	photo	1
73	16	3	authors	photo	1
398	2	1	components_page_headers	image	1
399	3	1	components_page_section_about_projects	image	1
400	4	1	components_page_tech_icons	icon	1
401	5	2	components_page_tech_icons	icon	1
402	6	3	components_page_tech_icons	icon	1
403	7	4	components_page_tech_icons	icon	1
404	8	5	components_page_tech_icons	icon	1
405	9	6	components_page_tech_icons	icon	1
406	10	7	components_page_tech_icons	icon	1
407	11	8	components_page_tech_icons	icon	1
408	12	9	components_page_tech_icons	icon	1
409	13	10	components_page_tech_icons	icon	1
410	17	1	components_page_reviews	photo	1
411	18	2	components_page_reviews	photo	1
412	19	3	components_page_reviews	photo	1
413	20	4	components_page_reviews	photo	1
414	21	5	components_page_reviews	photo	1
415	22	6	components_page_reviews	photo	1
416	23	7	components_page_reviews	photo	1
417	24	8	components_page_reviews	photo	1
418	1	1	landing_pages	logo	1
\.


--
-- Data for Name: users-permissions_permission; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) FROM stdin;
1	application	author	count	f		1	\N	\N
3	application	author	create	f		1	\N	\N
4	application	author	create	f		2	\N	\N
5	application	author	delete	f		1	\N	\N
6	application	author	delete	f		2	\N	\N
7	application	author	find	f		1	\N	\N
9	application	author	findone	f		1	\N	\N
11	application	author	update	f		1	\N	\N
12	application	author	update	f		2	\N	\N
13	application	landing-page	delete	f		1	\N	\N
14	application	landing-page	delete	f		2	\N	\N
15	application	landing-page	find	f		1	\N	\N
17	application	landing-page	update	f		1	\N	\N
18	application	landing-page	update	f		2	\N	\N
19	content-manager	collection-types	bulkdelete	f		1	\N	\N
20	content-manager	collection-types	bulkdelete	f		2	\N	\N
21	content-manager	collection-types	create	f		1	\N	\N
22	content-manager	collection-types	create	f		2	\N	\N
23	content-manager	collection-types	delete	f		1	\N	\N
24	content-manager	collection-types	delete	f		2	\N	\N
25	content-manager	collection-types	find	f		1	\N	\N
26	content-manager	collection-types	find	f		2	\N	\N
27	content-manager	collection-types	findone	f		1	\N	\N
28	content-manager	collection-types	previewmanyrelations	f		1	\N	\N
29	content-manager	collection-types	findone	f		2	\N	\N
30	content-manager	collection-types	previewmanyrelations	f		2	\N	\N
31	content-manager	collection-types	publish	f		1	\N	\N
32	content-manager	collection-types	publish	f		2	\N	\N
33	content-manager	collection-types	unpublish	f		1	\N	\N
34	content-manager	collection-types	unpublish	f		2	\N	\N
35	content-manager	collection-types	update	f		1	\N	\N
36	content-manager	collection-types	update	f		2	\N	\N
37	content-manager	components	findcomponentconfiguration	f		1	\N	\N
38	content-manager	components	findcomponentconfiguration	f		2	\N	\N
39	content-manager	components	findcomponents	f		1	\N	\N
40	content-manager	components	findcomponents	f		2	\N	\N
41	content-manager	components	updatecomponentconfiguration	f		1	\N	\N
42	content-manager	components	updatecomponentconfiguration	f		2	\N	\N
43	content-manager	content-types	findcontenttypeconfiguration	f		1	\N	\N
44	content-manager	content-types	findcontenttypeconfiguration	f		2	\N	\N
45	content-manager	content-types	findcontenttypes	f		1	\N	\N
48	content-manager	content-types	findcontenttypessettings	f		2	\N	\N
47	content-manager	content-types	findcontenttypessettings	f		1	\N	\N
46	content-manager	content-types	findcontenttypes	f		2	\N	\N
49	content-manager	content-types	updatecontenttypeconfiguration	f		1	\N	\N
50	content-manager	content-types	updatecontenttypeconfiguration	f		2	\N	\N
51	content-manager	relations	find	f		1	\N	\N
52	content-manager	relations	find	f		2	\N	\N
53	content-manager	single-types	createorupdate	f		1	\N	\N
55	content-manager	single-types	delete	f		1	\N	\N
56	content-manager	single-types	delete	f		2	\N	\N
57	content-manager	single-types	find	f		1	\N	\N
58	content-manager	single-types	find	f		2	\N	\N
54	content-manager	single-types	createorupdate	f		2	\N	\N
59	content-manager	single-types	publish	f		1	\N	\N
60	content-manager	single-types	publish	f		2	\N	\N
61	content-manager	single-types	unpublish	f		1	\N	\N
63	content-manager	uid	checkuidavailability	f		1	\N	\N
62	content-manager	single-types	unpublish	f		2	\N	\N
64	content-manager	uid	checkuidavailability	f		2	\N	\N
65	content-manager	uid	generateuid	f		1	\N	\N
66	content-manager	uid	generateuid	f		2	\N	\N
67	content-type-builder	builder	getreservednames	f		1	\N	\N
68	content-type-builder	builder	getreservednames	f		2	\N	\N
69	content-type-builder	componentcategories	deletecategory	f		1	\N	\N
70	content-type-builder	componentcategories	deletecategory	f		2	\N	\N
8	application	author	find	t		2	\N	\N
71	content-type-builder	componentcategories	editcategory	f		1	\N	\N
72	content-type-builder	componentcategories	editcategory	f		2	\N	\N
81	content-type-builder	components	updatecomponent	f		1	\N	\N
83	content-type-builder	connections	getconnections	f		1	\N	\N
91	content-type-builder	contenttypes	getcontenttypes	f		1	\N	\N
96	email	email	getsettings	f		2	\N	\N
101	i18n	content-types	getnonlocalizedattributes	f		1	\N	\N
104	i18n	iso-locales	listisolocales	f		2	\N	\N
114	upload	upload	count	f		2	\N	\N
111	i18n	locales	updatelocale	f		1	\N	\N
122	upload	upload	getsettings	f		2	\N	\N
124	upload	upload	search	f		2	\N	\N
135	users-permissions	auth	forgotpassword	f		1	\N	\N
131	users-permissions	auth	connect	t		1	\N	\N
144	users-permissions	user	count	f		2	\N	\N
151	users-permissions	user	find	f		1	\N	\N
73	content-type-builder	components	createcomponent	f		1	\N	\N
82	content-type-builder	components	updatecomponent	f		2	\N	\N
98	email	email	send	f		2	\N	\N
106	i18n	locales	createlocale	f		2	\N	\N
115	upload	upload	destroy	f		1	\N	\N
126	upload	upload	updatesettings	f		2	\N	\N
134	users-permissions	auth	emailconfirmation	t		2	\N	\N
143	users-permissions	user	count	f		1	\N	\N
156	users-permissions	user	me	t		2	\N	\N
167	users-permissions	userspermissions	getpermissions	f		1	\N	\N
176	users-permissions	userspermissions	getroles	f		2	\N	\N
186	users-permissions	userspermissions	updateemailtemplate	f		2	\N	\N
10	application	author	findone	t		2	\N	\N
74	content-type-builder	components	createcomponent	f		2	\N	\N
84	content-type-builder	connections	getconnections	f		2	\N	\N
92	content-type-builder	contenttypes	getcontenttypes	f		2	\N	\N
105	i18n	locales	createlocale	f		1	\N	\N
112	i18n	locales	updatelocale	f		2	\N	\N
121	upload	upload	getsettings	f		1	\N	\N
132	users-permissions	auth	connect	t		2	\N	\N
141	users-permissions	auth	sendemailconfirmation	f		1	\N	\N
153	users-permissions	user	findone	f		1	\N	\N
166	users-permissions	userspermissions	getemailtemplate	f		2	\N	\N
174	users-permissions	userspermissions	getrole	f		2	\N	\N
184	users-permissions	userspermissions	updateadvancedsettings	f		2	\N	\N
16	application	landing-page	find	t		2	\N	\N
75	content-type-builder	components	deletecomponent	f		1	\N	\N
87	content-type-builder	contenttypes	deletecontenttype	f		1	\N	\N
95	email	email	getsettings	f		1	\N	\N
107	i18n	locales	deletelocale	f		1	\N	\N
113	upload	upload	count	f		1	\N	\N
123	upload	upload	search	f		1	\N	\N
137	users-permissions	auth	register	f		1	\N	\N
146	users-permissions	user	create	f		2	\N	\N
158	users-permissions	user	update	f		2	\N	\N
165	users-permissions	userspermissions	getemailtemplate	f		1	\N	\N
178	users-permissions	userspermissions	getroutes	f		2	\N	\N
189	users-permissions	userspermissions	updaterole	f		1	\N	\N
2	application	author	count	t		2	\N	\N
76	content-type-builder	components	deletecomponent	f		2	\N	\N
86	content-type-builder	contenttypes	createcontenttype	f		2	\N	\N
93	content-type-builder	contenttypes	updatecontenttype	f		1	\N	\N
102	i18n	content-types	getnonlocalizedattributes	f		2	\N	\N
119	upload	upload	findone	f		1	\N	\N
128	upload	upload	upload	f		2	\N	\N
139	users-permissions	auth	resetpassword	f		1	\N	\N
145	users-permissions	user	create	f		1	\N	\N
154	users-permissions	user	findone	f		2	\N	\N
162	users-permissions	userspermissions	deleterole	f		2	\N	\N
171	users-permissions	userspermissions	getproviders	f		1	\N	\N
182	users-permissions	userspermissions	searchusers	f		2	\N	\N
77	content-type-builder	components	getcomponent	f		1	\N	\N
88	content-type-builder	contenttypes	deletecontenttype	f		2	\N	\N
97	email	email	send	f		1	\N	\N
108	i18n	locales	deletelocale	f		2	\N	\N
118	upload	upload	find	f		2	\N	\N
127	upload	upload	upload	f		1	\N	\N
133	users-permissions	auth	emailconfirmation	f		1	\N	\N
142	users-permissions	auth	sendemailconfirmation	f		2	\N	\N
152	users-permissions	user	find	f		2	\N	\N
161	users-permissions	userspermissions	deleterole	f		1	\N	\N
172	users-permissions	userspermissions	getproviders	f		2	\N	\N
181	users-permissions	userspermissions	searchusers	f		1	\N	\N
78	content-type-builder	components	getcomponent	f		2	\N	\N
89	content-type-builder	contenttypes	getcontenttype	f		1	\N	\N
99	email	email	test	f		1	\N	\N
109	i18n	locales	listlocales	f		1	\N	\N
117	upload	upload	find	f		1	\N	\N
125	upload	upload	updatesettings	f		1	\N	\N
136	users-permissions	auth	forgotpassword	t		2	\N	\N
149	users-permissions	user	destroyall	f		1	\N	\N
159	users-permissions	userspermissions	createrole	f		1	\N	\N
169	users-permissions	userspermissions	getpolicies	f		1	\N	\N
179	users-permissions	userspermissions	index	f		1	\N	\N
187	users-permissions	userspermissions	updateproviders	f		1	\N	\N
79	content-type-builder	components	getcomponents	f		1	\N	\N
85	content-type-builder	contenttypes	createcontenttype	f		1	\N	\N
94	content-type-builder	contenttypes	updatecontenttype	f		2	\N	\N
103	i18n	iso-locales	listisolocales	f		1	\N	\N
116	upload	upload	destroy	f		2	\N	\N
129	users-permissions	auth	callback	f		1	\N	\N
138	users-permissions	auth	register	t		2	\N	\N
148	users-permissions	user	destroy	f		2	\N	\N
157	users-permissions	user	update	f		1	\N	\N
168	users-permissions	userspermissions	getpermissions	f		2	\N	\N
177	users-permissions	userspermissions	getroutes	f		1	\N	\N
185	users-permissions	userspermissions	updateemailtemplate	f		1	\N	\N
80	content-type-builder	components	getcomponents	f		2	\N	\N
90	content-type-builder	contenttypes	getcontenttype	f		2	\N	\N
100	email	email	test	f		2	\N	\N
110	i18n	locales	listlocales	f		2	\N	\N
120	upload	upload	findone	f		2	\N	\N
130	users-permissions	auth	callback	t		2	\N	\N
140	users-permissions	auth	resetpassword	t		2	\N	\N
150	users-permissions	user	destroyall	f		2	\N	\N
160	users-permissions	userspermissions	createrole	f		2	\N	\N
170	users-permissions	userspermissions	getpolicies	f		2	\N	\N
180	users-permissions	userspermissions	index	f		2	\N	\N
190	users-permissions	userspermissions	updaterole	f		2	\N	\N
147	users-permissions	user	destroy	f		1	\N	\N
155	users-permissions	user	me	t		1	\N	\N
164	users-permissions	userspermissions	getadvancedsettings	f		2	\N	\N
173	users-permissions	userspermissions	getrole	f		1	\N	\N
188	users-permissions	userspermissions	updateproviders	f		2	\N	\N
163	users-permissions	userspermissions	getadvancedsettings	f		1	\N	\N
175	users-permissions	userspermissions	getroles	f		1	\N	\N
183	users-permissions	userspermissions	updateadvancedsettings	f		1	\N	\N
\.


--
-- Data for Name: users-permissions_role; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public."users-permissions_role" (id, name, description, type, created_by, updated_by) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	\N	\N
2	Public	Default role given to unauthenticated user.	public	\N	\N
\.


--
-- Data for Name: users-permissions_user; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", "confirmationToken", confirmed, blocked, role, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Name: authors_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.authors_components_id_seq', 7, true);


--
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.authors_id_seq', 3, true);


--
-- Name: components_page_buttons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_buttons_id_seq', 3, true);


--
-- Name: components_page_concepts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_concepts_id_seq', 18, true);


--
-- Name: components_page_headers_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_headers_components_id_seq', 1, true);


--
-- Name: components_page_headers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_headers_id_seq', 1, true);


--
-- Name: components_page_modules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_modules_id_seq', 6, true);


--
-- Name: components_page_price_boxes_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_price_boxes_components_id_seq', 1, true);


--
-- Name: components_page_price_boxes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_price_boxes_id_seq', 1, true);


--
-- Name: components_page_questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_questions_id_seq', 7, true);


--
-- Name: components_page_reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_reviews_id_seq', 8, true);


--
-- Name: components_page_section_about_projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_about_projects_id_seq', 1, true);


--
-- Name: components_page_section_aboutuses__authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_aboutuses__authors_id_seq', 3, true);


--
-- Name: components_page_section_aboutuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_aboutuses_id_seq', 1, true);


--
-- Name: components_page_section_agenda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_agenda_id_seq', 1, true);


--
-- Name: components_page_section_concepts_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_concepts_components_id_seq', 18, true);


--
-- Name: components_page_section_concepts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_concepts_id_seq', 1, true);


--
-- Name: components_page_section_faqs_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_faqs_components_id_seq', 7, true);


--
-- Name: components_page_section_faqs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_faqs_id_seq', 1, true);


--
-- Name: components_page_section_modules_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_modules_components_id_seq', 6, true);


--
-- Name: components_page_section_modules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_modules_id_seq', 1, true);


--
-- Name: components_page_section_reviews_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_reviews_components_id_seq', 8, true);


--
-- Name: components_page_section_reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_reviews_id_seq', 1, true);


--
-- Name: components_page_section_teches_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_teches_components_id_seq', 10, true);


--
-- Name: components_page_section_teches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_teches_id_seq', 1, true);


--
-- Name: components_page_social_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_social_links_id_seq', 7, true);


--
-- Name: components_page_tech_icons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_tech_icons_id_seq', 10, true);


--
-- Name: core_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.core_store_id_seq', 62, true);


--
-- Name: i18n_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.i18n_locales_id_seq', 1, true);


--
-- Name: landing_pages_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.landing_pages_components_id_seq', 11, true);


--
-- Name: landing_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.landing_pages_id_seq', 1, true);


--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 1, true);


--
-- Name: strapi_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_permission_id_seq', 149, true);


--
-- Name: strapi_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_role_id_seq', 3, true);


--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_users_roles_id_seq', 1, true);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: upload_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_file_id_seq', 24, true);


--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 418, true);


--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 190, true);


--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 2, true);


--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 1, false);


--
-- Name: authors_components authors_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.authors_components
    ADD CONSTRAINT authors_components_pkey PRIMARY KEY (id);


--
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- Name: components_page_buttons components_page_buttons_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_buttons
    ADD CONSTRAINT components_page_buttons_pkey PRIMARY KEY (id);


--
-- Name: components_page_concepts components_page_concepts_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_concepts
    ADD CONSTRAINT components_page_concepts_pkey PRIMARY KEY (id);


--
-- Name: components_page_headers_components components_page_headers_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_headers_components
    ADD CONSTRAINT components_page_headers_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_headers components_page_headers_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_headers
    ADD CONSTRAINT components_page_headers_pkey PRIMARY KEY (id);


--
-- Name: components_page_modules components_page_modules_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_modules
    ADD CONSTRAINT components_page_modules_pkey PRIMARY KEY (id);


--
-- Name: components_page_price_boxes_components components_page_price_boxes_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_price_boxes_components
    ADD CONSTRAINT components_page_price_boxes_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_price_boxes components_page_price_boxes_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_price_boxes
    ADD CONSTRAINT components_page_price_boxes_pkey PRIMARY KEY (id);


--
-- Name: components_page_questions components_page_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_questions
    ADD CONSTRAINT components_page_questions_pkey PRIMARY KEY (id);


--
-- Name: components_page_reviews components_page_reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_reviews
    ADD CONSTRAINT components_page_reviews_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_about_projects components_page_section_about_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_about_projects
    ADD CONSTRAINT components_page_section_about_projects_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_aboutuses__authors components_page_section_aboutuses__authors_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_aboutuses__authors
    ADD CONSTRAINT components_page_section_aboutuses__authors_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_aboutuses components_page_section_aboutuses_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_aboutuses
    ADD CONSTRAINT components_page_section_aboutuses_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_agenda components_page_section_agenda_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_agenda
    ADD CONSTRAINT components_page_section_agenda_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_concepts_components components_page_section_concepts_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_concepts_components
    ADD CONSTRAINT components_page_section_concepts_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_concepts components_page_section_concepts_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_concepts
    ADD CONSTRAINT components_page_section_concepts_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_faqs_components components_page_section_faqs_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_faqs_components
    ADD CONSTRAINT components_page_section_faqs_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_faqs components_page_section_faqs_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_faqs
    ADD CONSTRAINT components_page_section_faqs_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_modules_components components_page_section_modules_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_modules_components
    ADD CONSTRAINT components_page_section_modules_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_modules components_page_section_modules_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_modules
    ADD CONSTRAINT components_page_section_modules_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_reviews_components components_page_section_reviews_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_reviews_components
    ADD CONSTRAINT components_page_section_reviews_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_reviews components_page_section_reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_reviews
    ADD CONSTRAINT components_page_section_reviews_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_teches_components components_page_section_teches_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_teches_components
    ADD CONSTRAINT components_page_section_teches_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_teches components_page_section_teches_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_teches
    ADD CONSTRAINT components_page_section_teches_pkey PRIMARY KEY (id);


--
-- Name: components_page_social_links components_page_social_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_social_links
    ADD CONSTRAINT components_page_social_links_pkey PRIMARY KEY (id);


--
-- Name: components_page_tech_icons components_page_tech_icons_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_tech_icons
    ADD CONSTRAINT components_page_tech_icons_pkey PRIMARY KEY (id);


--
-- Name: core_store core_store_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);


--
-- Name: i18n_locales i18n_locales_code_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_code_unique UNIQUE (code);


--
-- Name: i18n_locales i18n_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_pkey PRIMARY KEY (id);


--
-- Name: landing_pages_components landing_pages_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.landing_pages_components
    ADD CONSTRAINT landing_pages_components_pkey PRIMARY KEY (id);


--
-- Name: landing_pages landing_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.landing_pages
    ADD CONSTRAINT landing_pages_pkey PRIMARY KEY (id);


--
-- Name: strapi_administrator strapi_administrator_email_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_email_unique UNIQUE (email);


--
-- Name: strapi_administrator strapi_administrator_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);


--
-- Name: strapi_permission strapi_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_permission
    ADD CONSTRAINT strapi_permission_pkey PRIMARY KEY (id);


--
-- Name: strapi_role strapi_role_code_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_code_unique UNIQUE (code);


--
-- Name: strapi_role strapi_role_name_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_name_unique UNIQUE (name);


--
-- Name: strapi_role strapi_role_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_pkey PRIMARY KEY (id);


--
-- Name: strapi_users_roles strapi_users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_users_roles
    ADD CONSTRAINT strapi_users_roles_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: upload_file_morph upload_file_morph_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);


--
-- Name: upload_file upload_file_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);


--
-- Name: users-permissions_permission users-permissions_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_type_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);


--
-- Name: users-permissions_user users-permissions_user_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_user users-permissions_user_username_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);


--
-- Name: authors_components author_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.authors_components
    ADD CONSTRAINT author_id_fk FOREIGN KEY (author_id) REFERENCES public.authors(id) ON DELETE CASCADE;


--
-- Name: components_page_headers_components components_page_header_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_headers_components
    ADD CONSTRAINT components_page_header_id_fk FOREIGN KEY (components_page_header_id) REFERENCES public.components_page_headers(id) ON DELETE CASCADE;


--
-- Name: components_page_price_boxes_components components_page_price_box_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_price_boxes_components
    ADD CONSTRAINT components_page_price_box_id_fk FOREIGN KEY (components_page_price_box_id) REFERENCES public.components_page_price_boxes(id) ON DELETE CASCADE;


--
-- Name: components_page_section_concepts_components components_page_section_concept_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_concepts_components
    ADD CONSTRAINT components_page_section_concept_id_fk FOREIGN KEY (components_page_section_concept_id) REFERENCES public.components_page_section_concepts(id) ON DELETE CASCADE;


--
-- Name: components_page_section_faqs_components components_page_section_faq_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_faqs_components
    ADD CONSTRAINT components_page_section_faq_id_fk FOREIGN KEY (components_page_section_faq_id) REFERENCES public.components_page_section_faqs(id) ON DELETE CASCADE;


--
-- Name: components_page_section_modules_components components_page_section_module_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_modules_components
    ADD CONSTRAINT components_page_section_module_id_fk FOREIGN KEY (components_page_section_module_id) REFERENCES public.components_page_section_modules(id) ON DELETE CASCADE;


--
-- Name: components_page_section_reviews_components components_page_section_review_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_reviews_components
    ADD CONSTRAINT components_page_section_review_id_fk FOREIGN KEY (components_page_section_review_id) REFERENCES public.components_page_section_reviews(id) ON DELETE CASCADE;


--
-- Name: components_page_section_teches_components components_page_section_tech_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_teches_components
    ADD CONSTRAINT components_page_section_tech_id_fk FOREIGN KEY (components_page_section_tech_id) REFERENCES public.components_page_section_teches(id) ON DELETE CASCADE;


--
-- Name: landing_pages_components landing_page_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.landing_pages_components
    ADD CONSTRAINT landing_page_id_fk FOREIGN KEY (landing_page_id) REFERENCES public.landing_pages(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

