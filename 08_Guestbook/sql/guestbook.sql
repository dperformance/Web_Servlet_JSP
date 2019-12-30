CREATE TABLE GHUESTBOOK (
    IDX NUMBER PRIMARY KEY,         -- 일련번호
    NAME VARCHAR2(30),              -- 작성자
    SUBJECT VARCHAR2(100),          -- 제목
    CONTENT VARCHAR2(1000),         -- 내용
    EMAIL VARCHAR2(100),            -- 이메일
    PWD VARCHAR2(30),               -- 글 작성시 암호
    REGDATE DATE DEFAULT SYSDATE    -- 작성일
);
CREATE SEQUENCE GUESTBOOK_SEQ NOCACHE;

INSERT INTO GUESTBOOK
        (IDX,NAME,SUBJECT,CONTENT,EMAIL,PWD,REGDATE)
VALUES  (GUESTBOOK_SEQ.NEXTVAL, '코돌쓰', '제목1', '내용1', 'kotolth@test.com', '1111', SYSDATE - 3);
INSERT INTO GUESTBOOK
        (IDX,NAME,SUBJECT,CONTENT,EMAIL,PWD,REGDATE)
VALUES  (GUESTBOOK_SEQ.NEXTVAL, '코돌2', '제목2', '내용2', 'kotol2@test.com', '2222', SYSDATE - 2);
INSERT INTO GUESTBOOK
        (IDX,NAME,SUBJECT,CONTENT,EMAIL,PWD,REGDATE)
VALUES  (GUESTBOOK_SEQ.NEXTVAL, '코돌3', '제목3', '내용3', 'kotol3@test.com', '3333', SYSDATE - 1);
COMMIT;

SELECT * FROM guestbook;