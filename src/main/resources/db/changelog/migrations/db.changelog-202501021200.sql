--liquibase formatted sql
--changeset milena:202501021200
--comment: add created_at column to cards table

ALTER TABLE CARDS ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL;

--rollback ALTER TABLE CARDS DROP COLUMN created_at;