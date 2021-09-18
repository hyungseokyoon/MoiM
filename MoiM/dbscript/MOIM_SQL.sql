DROP TABLE user_info CASCADE CONSTRAINTS;
DROP TABLE TB_TEAM CASCADE CONSTRAINTS;
DROP TABLE TB_TEAM_MEMBER CASCADE CONSTRAINTS;
DROP TABLE TB_JOIN_WAITING CASCADE CONSTRAINTS;
drop table TB_FILE cascade constraints;
drop table CHATTING_MSGS cascade constraints;
drop table chatroom cascade constraints;
drop table daily cascade constraints;
drop table calendar cascade constraints;
drop table teamnotice cascade constraints;
DROP TABLE TB_FIELD CASCADE CONSTRAINTS;
drop table review cascade constraints;
drop table notice cascade constraints;
drop table board cascade constraints;
drop table board_category cascade constraints;
DROP TABLE REPLY CASCADE CONSTRAINTS;
DROP TABLE TB_ALERT CASCADE CONSTRAINTS;

DROP SEQUENCE NOTICE_SEQ;
DROP SEQUENCE BOARD_SEQ;
DROP SEQUENCE REPLY_SEQ;

-- 정지혁
-- user_info Table Create SQL
CREATE TABLE user_info
(
    USER_NO NUMBER NOT NULL,
    USER_ID VARCHAR2(50) NOT NULL,
    USER_NN VARCHAR2(100) NOT NULL,
    USER_NAME VARCHAR2(100) NOT NULL,
    USER_PWD VARCHAR2(60) NOT NULL,
    AGE NUMBER NOT NULL,
    GENDER CHAR(1) NOT NULL,
    EMAIL VARCHAR2(200) NOT NULL,
    PHONE VARCHAR2(20) NOT NULL,
    ADDRESS VARCHAR2(500),
    INTEREST VARCHAR2(100) NOT NULL,
    LOGIN_OK CHAR(1) DEFAULT 'Y' NOT NULL,
    ADMIN CHAR(1) DEFAULT 'N' NOT NULL,
    CONSTRAINT PK_user_info PRIMARY KEY (USER_NO)
);

COMMENT ON TABLE user_info IS '사용자 정보';
COMMENT ON COLUMN user_info.USER_NO IS '회원 번호';
COMMENT ON COLUMN user_info.USER_ID IS '아이디';
COMMENT ON COLUMN user_info.USER_NN IS '별명';
COMMENT ON COLUMN user_info.USER_NAME IS '이름';
COMMENT ON COLUMN user_info.USER_PWD IS '비밀번호';
COMMENT ON COLUMN user_info.EMAIL IS '이메일';
COMMENT ON COLUMN user_info.PHONE IS '전화번호';
COMMENT ON COLUMN user_info.ADDRESS IS '주소';
COMMENT ON COLUMN user_info.INTEREST IS '환심분야';
COMMENT ON COLUMN user_info.LOGIN_OK IS '로그인가능유무';
COMMENT ON COLUMN user_info.ADMIN IS '관리자';
COMMENT ON COLUMN user_info.AGE IS '나이';
COMMENT ON COLUMN user_info.GENDER IS '성별';

-- TB_FIELD Table Create SQL
CREATE TABLE TB_FIELD
(
    FIELD_NUM NUMBER NOT NULL, 
    FIELD_NAME VARCHAR2(200) NOT NULL, 
    CONSTRAINT PK_TB_FIELD PRIMARY KEY (FIELD_NUM)
);
COMMENT ON TABLE TB_FIELD IS '분류';
COMMENT ON COLUMN TB_FIELD.FIELD_NUM IS '분류 번호';
COMMENT ON COLUMN TB_FIELD.FIELD_NAME IS '분류 이름';

-- TB_TEAM Table Create SQL
CREATE TABLE TB_TEAM
(
    TEAM_NUM NUMBER NOT NULL,
    FIELD_NUM NUMBER NOT NULL,
    TEAM_NAME VARCHAR2(200) NOT NULL UNIQUE,
    TEAM_INTRO VARCHAR2(2000) NOT NULL,
    TEAM_LEADER_INTRO VARCHAR2(2000) NOT NULL,
    TEAM_ORIGINAL_IMAGE VARCHAR2(500) NULL,
    TEAM_RENAME_IMAGE VARCHAR2(500) NULL,
    TEAM_LEVEL VARCHAR2(100) NOT NULL,
    TEAM_LOCAL VARCHAR2(100) NOT NULL,
    TEAM_ACT_DAY VARCHAR2(100) NOT NULL,
    TEAM_ACT_WEEK NUMBER NOT NULL,
    TEAM_ACT_TIME VARCHAR2(500),
    TEAM_FEE NUMBER NULL,
    TEAM_LIMIT NUMBER NOT NULL,
    TEAM_RECRUIT VARCHAR2(1) NOT NULL,
    CONSTRAINT PK_TB_TEAM PRIMARY KEY (TEAM_NUM)
);
COMMENT ON TABLE TB_TEAM IS '팀';
COMMENT ON COLUMN TB_TEAM.TEAM_NUM IS '팀 번호';
COMMENT ON COLUMN TB_TEAM.FIELD_NUM IS '분류 번호';
COMMENT ON COLUMN TB_TEAM.TEAM_NAME IS '팀명';
COMMENT ON COLUMN TB_TEAM.TEAM_INTRO IS '팀소개';
COMMENT ON COLUMN TB_TEAM.TEAM_LEADER_INTRO IS '리더소개';
COMMENT ON COLUMN TB_TEAM.TEAM_ORIGINAL_IMAGE IS '팀사진원본이름';
COMMENT ON COLUMN TB_TEAM.TEAM_RENAME_IMAGE IS '팀사진변경이름';
COMMENT ON COLUMN TB_TEAM.TEAM_LEVEL IS '팀레벨';
COMMENT ON COLUMN TB_TEAM.TEAM_LOCAL IS '팀지역';
COMMENT ON COLUMN TB_TEAM.TEAM_ACT_DAY IS '팀활동요일';
COMMENT ON COLUMN TB_TEAM.TEAM_ACT_WEEK IS '팀활동기간(주)';
COMMENT ON COLUMN TB_TEAM.TEAM_ACT_TIME IS '팀활동시간';
COMMENT ON COLUMN TB_TEAM.TEAM_FEE IS '팀활동비';
COMMENT ON COLUMN TB_TEAM.TEAM_LIMIT IS '팀인원제한';
COMMENT ON COLUMN TB_TEAM.TEAM_RECRUIT IS '팀모집여부';


ALTER TABLE TB_TEAM
    ADD CONSTRAINT FK_TB_TEAM_FIELD_NUM FOREIGN KEY (FIELD_NUM)
        REFERENCES TB_FIELD (FIELD_NUM);

    
-- TB_TEAM_MEMBER Table Create SQL
CREATE TABLE TB_TEAM_MEMBER
(
    TEAM_MEMBER_NO NUMBER NOT NULL, 
    TEAM_NUM NUMBER NOT NULL, 
    USER_NO NUMBER NOT NULL, 
    TEAM_MEMBER_LEADER VARCHAR2(1) DEFAULT 'N' NOT NULL, 
    TEAM_MEMBER_DATE DATE DEFAULT SYSDATE NOT NULL,
    CONSTRAINT PK_TB_TEAM_MEMBER_NO PRIMARY KEY (TEAM_MEMBER_NO)
);

COMMENT ON TABLE TB_TEAM_MEMBER IS '팀원';
COMMENT ON COLUMN TB_TEAM_MEMBER.TEAM_MEMBER_NO IS '팀원 번호';
COMMENT ON COLUMN TB_TEAM_MEMBER.TEAM_NUM IS '팀 번호';
COMMENT ON COLUMN TB_TEAM_MEMBER.USER_NO IS '회원 번호';
COMMENT ON COLUMN TB_TEAM_MEMBER.TEAM_MEMBER_LEADER IS '팀장 여부';
COMMENT ON COLUMN TB_TEAM_MEMBER.TEAM_MEMBER_DATE IS '팀원 가입날짜';

ALTER TABLE TB_TEAM_MEMBER
    ADD CONSTRAINT FK_TB_TEAM_MEMBER_TEAM_NUM FOREIGN KEY (TEAM_NUM)
        REFERENCES TB_TEAM (TEAM_NUM);
        
ALTER TABLE TB_TEAM_MEMBER
    ADD CONSTRAINT FK_TB_TEAM_MEMBER_USER_NO FOREIGN KEY (USER_NO)
        REFERENCES user_info (USER_NO);

        
-- TB_JOIN_WAITING Table Create SQL
CREATE TABLE TB_JOIN_WAITING
(
    JOIN_NUM NUMBER NOT NULL, 
    TEAM_NUM NUMBER NOT NULL, 
    USER_NO NUMBER NOT NULL, 
    JOIN_INTRO VARCHAR2(2000) NOT NULL,
    JOIN_ORIGINAL_FILENAME VARCHAR2(500) NULL,
    JOIN_RENAME_FILENAME VARCHAR2(500) NULL,
    CONSTRAINT PK_TB_JOIN_WAITING PRIMARY KEY (JOIN_NUM)
);
COMMENT ON TABLE TB_JOIN_WAITING IS '신청 목록';
COMMENT ON COLUMN TB_JOIN_WAITING.JOIN_NUM IS '신청 번호';
COMMENT ON COLUMN TB_JOIN_WAITING.TEAM_NUM IS '팀 번호';
COMMENT ON COLUMN TB_JOIN_WAITING.USER_NO IS '회원 번호';
COMMENT ON COLUMN TB_JOIN_WAITING.JOIN_INTRO IS '지원자 소개';
COMMENT ON COLUMN TB_JOIN_WAITING.JOIN_ORIGINAL_FILENAME IS '첨부자료원본이름';
COMMENT ON COLUMN TB_JOIN_WAITING.JOIN_RENAME_FILENAME IS '첨부자료변경이름';

ALTER TABLE TB_JOIN_WAITING
    ADD CONSTRAINT FK_TB_JOIN_WAITING_TEAM_NUM FOREIGN KEY (TEAM_NUM)
        REFERENCES TB_TEAM (TEAM_NUM);
        
ALTER TABLE TB_JOIN_WAITING
    ADD CONSTRAINT FK_TB_JOIN_WAITING_USER_NO FOREIGN KEY (USER_NO)
        REFERENCES user_info (USER_NO);
        
-- 이돈녕
create table chatroom
(
    room_id number constraint room_id_pk primary key, 
    team_num number constraint chatroom_team_num_fk references TB_team(team_num), 
    room_type varchar2(200) constraint room_type_nn not null
);
COMMENT ON TABLE CHATROOM IS '채팅방';
COMMENT ON COLUMN CHATROOM.room_id IS '채팅방아이디';
COMMENT ON COLUMN CHATROOM.team_num IS '팀번호';
COMMENT ON COLUMN CHATROOM.room_type IS '채팅방구분';

CREATE TABLE TB_FILE
(
    file_num NUMBER NOT NULL, 
    team_num number constraint file_team_num_fk references TB_TEAM(team_num), 
    file_uploader number constraint file_uploader_fk references USER_INFO(user_no),
    file_originalfilename varchar2(200) constraint file_ogfilename_nn not null, 
    file_renamefilename varchar2(200) constraint file_rnfilename_nn not null,
    file_reg_date date default sysdate constraint file_reg_date_nn not null,
    CONSTRAINT PK_TB_FILE_NUM PRIMARY KEY (FILE_NUM)
);
COMMENT ON TABLE TB_FILE IS '파일';
COMMENT ON COLUMN TB_FILE.file_num IS '파일번호';
COMMENT ON COLUMN TB_FILE.team_num IS '팀번호';
COMMENT ON COLUMN TB_FILE.file_uploader IS '업로드사용자';
COMMENT ON COLUMN TB_FILE.file_originalfilename IS '파일원본이름';
COMMENT ON COLUMN TB_FILE.file_renamefilename IS '파일변경이름';
COMMENT ON COLUMN TB_FILE.file_reg_date IS '등록날짜';

CREATE TABLE CHATTING_MSGS
(
    message_id number constraint message_id_pk primary key, 
    room_id number constraint cmroom_id_fk references chatroom(room_id),  
    user_no number constraint cmuser_no_fk references user_info(user_no), 
    file_num number references TB_file(file_num), 
    message varchar2(4000) constraint cm_message_nn not null, 
    message_time date constraint cm_message_tiem_nn not null 
);
COMMENT ON TABLE CHATTING_MSGS IS '채팅';
COMMENT ON COLUMN CHATTING_MSGS.message_id IS '메세지아이디';
COMMENT ON COLUMN CHATTING_MSGS.room_id IS '채팅방아이디';
COMMENT ON COLUMN CHATTING_MSGS.user_no IS '회원 번호';
COMMENT ON COLUMN CHATTING_MSGS.file_num IS '파일 번호';
COMMENT ON COLUMN CHATTING_MSGS.message IS '메세지';
COMMENT ON COLUMN CHATTING_MSGS.message_time IS '시간';

-- 윤형석
create table daily
(
    daily_no number constraint daily_no_pk primary key,
    team_num number constraint dailyteam_num_nn not null references TB_TEAM(team_num),
    daily_writer number constraint daily_writer_nn not null references USER_INFO(user_no),
    daily_date date default sysdate constraint daily_date_nn not null,
    daily_content varchar2(200),
    daily_progress number constraint daily_progress_nn not null
);
comment on COLUMN daily.daily_no is '일지번호';
comment on COLUMN daily.team_num is '팀번호';
comment on COLUMN daily.daily_writer is '일지작성자';
comment on COLUMN daily.daily_date is '일지작성일';
comment on COLUMN daily.daily_content is '일지내용';
comment on COLUMN daily.daily_progress is '일지 진행상황';

create table calendar
(
    cal_no number constraint cal_no_pk primary key,
    team_num number constraint calteam_num_nn not null references TB_TEAM(team_num),
    cal_writer number constraint cal_writer_nn not null references USER_INFO(user_no),
    cal_title varchar2(100) constraint cal_title_nn not null,
    cal_startdate date constraint cal_startdate_nn not null,
    cal_enddate date constraint cal_enddate_nn not null,
    cal_detail varchar2(100) constraint cal_detail_nn not null
);
comment on COLUMN calendar.cal_no is '일정번호';
comment on COLUMN calendar.team_num is '팀번호';
comment on COLUMN calendar.cal_writer is '일정작성자';
comment on COLUMN calendar.cal_title is '일정명';
comment on COLUMN calendar.cal_startdate is '일정시작';
comment on COLUMN calendar.cal_enddate is '일정끝';
comment on COLUMN calendar.cal_detail is '일정설명';

create table teamnotice
(
    tn_no number constraint tn_no_pk primary key,
    team_num number constraint tnteam_num_nn not null references TB_TEAM(team_num),
    tn_writer number constraint tn_writer_nn not null references USER_INFO(user_no),
    tn_title varchar2(100) constraint tn_title_nn not null,
    tn_content varchar2(100) constraint tn_content_nn not null,
    tn_date date default sysdate constraint tn_date_nn not null,
    tn_originalfilename varchar2(100),
    tn_renamefilename varchar2(100)
);
comment on COLUMN teamnotice.tn_no is '팀공지번호';
comment on COLUMN teamnotice.team_num is '팀번호';
comment on COLUMN teamnotice.tn_writer is '팀공지작성자';
comment on COLUMN teamnotice.tn_title is '공지제목';
comment on COLUMN teamnotice.tn_content is '공지내용';
comment on COLUMN teamnotice.tn_date is '공지작성날';
comment on COLUMN teamnotice.tn_originalfilename is '첨부파일원본이름';
comment on COLUMN teamnotice.tn_renamefilename is '첨부파일변경이름';

--임수안
CREATE TABLE REVIEW(
    REVIEW_NO NUMBER CONSTRAINT REVIEW_NO_PK PRIMARY KEY,
    TEAM_NUM NUMBER CONSTRAINT REVIEW_TEAM_NAME_FK REFERENCES TB_TEAM(TEAM_NUM),
    REVIEW_TITLE VARCHAR2(100) CONSTRAINT REVIEW_TITLE_NN NOT NULL,
    REVIEW_WRITER VARCHAR2(100) CONSTRAINT REVIEW_WRITER_NN NOT NULL,
    REVIEW_CONTENT VARCHAR2(2000) CONSTRAINT REVIEW_CONTENT_NN NOT NULL,
    REVIEW_GRADE NUMBER CONSTRAINT REVIEW_GRADE_NN NOT NULL,
    REVIEW_ORIGINAL_FILEPATH VARCHAR2(100),
    REVIEW_RENAME_FILEPATH VARCHAR2(100),
    REVIEW_READCOUNT NUMBER DEFAULT 0,
    REVIEW_DATE DATE DEFAULT SYSDATE CONSTRAINT REVIEW_DATE_NN NOT NULL
);


-- 조민제
-- 공지사항 테이블 생성
CREATE TABLE NOTICE(
    NOTICE_NO NUMBER CONSTRAINT NOTICE_NO_PK PRIMARY KEY, 
    USER_NO NUMBER CONSTRAINT NOTICE_USER_NO_FK REFERENCES USER_INFO(USER_NO), 
    NOTICE_TITLE VARCHAR2(100) CONSTRAINT NOTICE_TITLE_NN NOT NULL, 
    NOTICE_CONTENT VARCHAR2(3000) CONSTRAINT NOTICE_CONTENT_NN NOT NULL, 
    NOTICE_DATE DATE DEFAULT SYSDATE CONSTRAINT NOTICE_DATE_NN NOT NULL, 
    NOTICE_ORIGINAL_FILENAME VARCHAR2(300), 
    NOTICE_RENAME_FILENAME VARCHAR2(300)
);
-- 공지사항 COMMENT 생성
COMMENT ON COLUMN NOTICE.NOTICE_NO IS '공지번호';
COMMENT ON COLUMN NOTICE.USER_NO IS '작성자';
COMMENT ON COLUMN NOTICE.NOTICE_TITLE IS '공지제목';
COMMENT ON COLUMN NOTICE.NOTICE_CONTENT IS '공지내용';
COMMENT ON COLUMN NOTICE.NOTICE_DATE IS '작성날짜';
COMMENT ON COLUMN NOTICE.NOTICE_ORIGINAL_FILENAME IS '첨부원본파일이름';
COMMENT ON COLUMN NOTICE.NOTICE_RENAME_FILENAME IS '첨부개명파일이름';

-- 공지사항 시퀀스 생성
CREATE SEQUENCE NOTICE_SEQ
INCREMENT BY 1
START WITH 1
NOMINVALUE
NOMAXVALUE
NOCYCLE
NOCACHE;

-- 글 카테고리 테이블 생성
CREATE TABLE BOARD_CATEGORY(
    BOARD_CATEGORY_NO NUMBER CONSTRAINT BOARD_CATEGORY_NO_PK PRIMARY KEY, 
    BOARD_CATEGORY_NAME VARCHAR2(20) CONSTRAINT BOARD_CATEGORY_NAME_NN NOT NULL
);

-- 글 카테고리 COMMENT 생성
COMMENT ON COLUMN BOARD_CATEGORY.BOARD_CATEGORY_NO IS '카테고리번호';
COMMENT ON COLUMN BOARD_CATEGORY.BOARD_CATEGORY_NAME IS '카테고리이름';

-- 게시판 테이블 생성
CREATE TABLE BOARD(
    BOARD_NO NUMBER CONSTRAINT BOARD_NO_PK PRIMARY KEY, 
    BOARD_CATEGORY_NO NUMBER CONSTRAINT BOARD_CATEGORY_NO_FK REFERENCES BOARD_CATEGORY(BOARD_CATEGORY_NO), 
    USER_NO NUMBER CONSTRAINT BOARD_USER_NO_FK REFERENCES USER_INFO(USER_NO), 
    BOARD_TITLE VARCHAR2(100) CONSTRAINT BOARD_TITLE_NN NOT NULL, 
    BOARD_CONTENT VARCHAR2(3000) CONSTRAINT BOARD_CONTENT_NN NOT NULL, 
    BOARD_DATE DATE DEFAULT SYSDATE CONSTRAINT BOARD_DATE_NN NOT NULL, 
    BOARD_ORIGINAL_FILENAME VARCHAR2(300), 
    BOARD_RENAME_FILENAME VARCHAR2(300), 
    BOARD_READCOUNT NUMBER DEFAULT 0
);

-- 게시판 COMMENT 생성
COMMENT ON COLUMN BOARD.BOARD_NO IS '글번호';
COMMENT ON COLUMN BOARD.BOARD_CATEGORY_NO IS '글 카테고리';
COMMENT ON COLUMN BOARD.USER_NO IS '작성자';
COMMENT ON COLUMN BOARD.BOARD_TITLE IS '글제목';
COMMENT ON COLUMN BOARD.BOARD_CONTENT IS '글내용';
COMMENT ON COLUMN BOARD.BOARD_DATE IS '작성날짜';
COMMENT ON COLUMN BOARD.BOARD_ORIGINAL_FILENAME IS '첨부원본파일이름';
COMMENT ON COLUMN BOARD.BOARD_RENAME_FILENAME IS '첨부개명파일이름';
COMMENT ON COLUMN BOARD.BOARD_READCOUNT IS '조회수';

-- 게시판 시퀀스 생성
CREATE SEQUENCE BOARD_SEQ
INCREMENT BY 1
START WITH 1
NOMINVALUE
NOMAXVALUE
NOCYCLE
NOCACHE;

-- 댓글 테이블 생성
CREATE TABLE REPLY(
    REPLY_NO NUMBER CONSTRAINT REPLY_NO_PK PRIMARY KEY, 
    BOARD_NO NUMBER CONSTRAINT BOARD_NO_FK REFERENCES BOARD(BOARD_NO), 
    USER_NO NUMBER CONSTRAINT USER_NO_FK REFERENCES USER_INFO(USER_NO), 
    REPLY_CONTENT VARCHAR2(1000) CONSTRAINT REPLY_CONTENT_NN NOT NULL, 
    REPLY_DATE DATE DEFAULT SYSDATE CONSTRAINT REPLY_DATE_NN NOT NULL
);

-- 댓글 COMMENT 생성
COMMENT ON COLUMN REPLY.REPLY_NO IS '댓글번호';
COMMENT ON COLUMN REPLY.BOARD_NO IS '글번호';
COMMENT ON COLUMN REPLY.USER_NO IS '작성자';
COMMENT ON COLUMN REPLY.REPLY_CONTENT IS '댓글내용';
COMMENT ON COLUMN REPLY.REPLY_DATE IS '작성날짜';

-- 댓글 시퀀스 생성
CREATE SEQUENCE REPLY_SEQ
INCREMENT BY 1
START WITH 1
NOMINVALUE
NOMAXVALUE
NOCYCLE
NOCACHE;

-- 샘플데이터
-- USER_INFO
INSERT INTO USER_INFO VALUES(1, 'user01', '닉네임1', '사용자1', '$2a$10$Auu/hw0IjId7AbZjzOqnEuP6AzKNFJpGWTV5eoFLriED0oQS7nD3G', '25', 'M', 'user01@ict.edu', '01012345678', null, 'english', 'Y', 'N');
INSERT INTO USER_INFO VALUES(2, 'user02', '닉네임2', '사용자2', '$2a$10$f/BPRLn9x2b4F8gX7lfKkOPAZIn3zvjPo4VxJaCMcbhaCsarcFfJe', '25', 'F', 'user02@ict.edu', '01012345678', null, 'english', 'Y', 'N');
INSERT INTO USER_INFO VALUES(3, 'user03', '닉네임3', '사용자3', '$2a$10$F0WuT1qLTXjkyRzZB3PjCu1yWVMKrLiSXCZ9w/ZG62CNjhkSh8jLe', '25', 'M', 'user03@ict.edu', '01012345678', null, 'english', 'Y', 'N');
INSERT INTO USER_INFO VALUES(4, 'admin01', '관리자1', '관리자1', '$2a$10$EfjEidN5V530lrq2FQe2WuAz9rgbXxCtB94WGLtKMVzaf5zDZp1za', '25', 'F', 'admin01@ict.edu', '01012345678', null, 'english', 'Y', 'Y');
INSERT INTO USER_INFO (USER_NO, USER_ID, USER_NN, USER_NAME, USER_PWD, EMAIL, PHONE, ADDRESS, INTEREST, LOGIN_OK, ADMIN, AGE, GENDER)
VALUES (5, 'user05', 'nick05', '채승민', '$2a$10$1EXm5yZSISCkS1fdcc81b.OnUXtgWQA0PR7eRua7SyuwXIVJRN7Qa', 'user05@test.org', 01056789123, '경기 안산시 단원구 대부황금로 1927', '음악/악기', 'Y', 'N', 31, 'M');
INSERT INTO USER_INFO (USER_NO, USER_ID, USER_NN, USER_NAME, USER_PWD, EMAIL, PHONE, ADDRESS, INTEREST, LOGIN_OK, ADMIN, AGE, GENDER)
VALUES (6, 'user06', 'nick06', '최병철', '$2a$10$VD4nzP.WxXHU5ddfRNt8lu8LvsG9Z0000kAx1PqQSuuEOxvea/iQK', 'user06@test.org', 01067891234, '인천 중구 용유서로302번길 16-15', '자격증', 'Y', 'N', 29, 'M');
INSERT INTO USER_INFO (USER_NO, USER_ID, USER_NN, USER_NAME, USER_PWD, EMAIL, PHONE, ADDRESS, INTEREST, LOGIN_OK, ADMIN, AGE, GENDER)
VALUES (7, 'user07', 'nick07', '하유진', '$2a$10$k/IP/K8og3uw4WL/Txuou.PkzqViuD5FAIQfhmHuztlkLWiKTGsuC', 'user07@test.org', 01078912345, '인천 중구 차이나타운로59번길 12', '자격증', 'Y', 'N', 25, 'F');
INSERT INTO USER_INFO (USER_NO, USER_ID, USER_NN, USER_NAME, USER_PWD, EMAIL, PHONE, ADDRESS, INTEREST, LOGIN_OK, ADMIN, AGE, GENDER)
VALUES (8, 'user08', 'nick08', '강예원', '$2a$10$jBKw2piCOy2LGUuhec/aT.3hm.ZpcYU7DaD6X4xIyqiT2BaT2Jjke', 'user08@test.org', 01089123456, '인천 강화군 화도면 해안남로 1481', '자격증', 'Y', 'N', 22, 'F');
INSERT INTO USER_INFO (USER_NO, USER_ID, USER_NN, USER_NAME, USER_PWD, EMAIL, PHONE, ADDRESS, INTEREST, LOGIN_OK, ADMIN, AGE, GENDER)
VALUES (9, 'user09', 'nick09', '최현우', '$2a$10$N/Tfr8AI9RFG7pMyE46qs.HRif5Q8zXC5b8unXVnBd2HsjEn6GXmW', 'user09@test.org', 01091234567, '인천 계양구 계산동', '공모전', 'Y', 'N', 27, 'M');
INSERT INTO USER_INFO (USER_NO, USER_ID, USER_NN, USER_NAME, USER_PWD, EMAIL, PHONE, ADDRESS, INTEREST, LOGIN_OK, ADMIN, AGE, GENDER)
VALUES (10, 'user10', 'nick10', '김하은', '$2a$10$pI5nOV4JgPo1WYJkNBqKe.ZnOgvTyTvrCMdaiHLQtKYOivjAs4.3S', 'user10@test.org', 01098765432, '인천 연수구 컨벤시아대로 160', '공모전', 'Y', 'N', 24, 'F');

-- TB_FIELD SAMPLE DATA
INSERT INTO TB_FIELD (FIELD_NUM, FIELD_NAME) 
VALUES (1, '영어');
INSERT INTO TB_FIELD (FIELD_NUM, FIELD_NAME) 
VALUES (2, '중국어');
INSERT INTO TB_FIELD (FIELD_NUM, FIELD_NAME) 
VALUES (3, '기타 언어');
INSERT INTO TB_FIELD (FIELD_NUM, FIELD_NAME) 
VALUES (4, '프로그래밍');
INSERT INTO TB_FIELD (FIELD_NUM, FIELD_NAME) 
VALUES (5, '인문학/책');
INSERT INTO TB_FIELD (FIELD_NUM, FIELD_NAME) 
VALUES (6, '사진/영상');
INSERT INTO TB_FIELD (FIELD_NUM, FIELD_NAME) 
VALUES (7, '음악/악기');
INSERT INTO TB_FIELD (FIELD_NUM, FIELD_NAME) 
VALUES (8, '자격증');
INSERT INTO TB_FIELD (FIELD_NUM, FIELD_NAME) 
VALUES (9, '공모전');
INSERT INTO TB_FIELD (FIELD_NUM, FIELD_NAME) 
VALUES (10, '고시/공무원');
INSERT INTO TB_FIELD (FIELD_NUM, FIELD_NAME) 
VALUES (11, '기타학문');
INSERT INTO TB_FIELD (FIELD_NUM, FIELD_NAME) 
VALUES (12, '자유주제');

-- TB_TEAM SAMPLE DATA
INSERT INTO TB_TEAM (TEAM_NUM, FIELD_NUM, TEAM_NAME, TEAM_INTRO, TEAM_LEADER_INTRO ,TEAM_ORIGINAL_IMAGE, 
                            TEAM_RENAME_IMAGE, TEAM_LEVEL, TEAM_LOCAL, TEAM_ACT_DAY,
                            TEAM_ACT_WEEK, TEAM_ACT_TIME, TEAM_FEE, TEAM_LIMIT, TEAM_RECRUIT)
VALUES (1, 1, 'ENG 스터디모임', '편하게 영어 문법/회화 공부할 사람들이 모이는 팀입니다.',' ', NULL, NULL,
            '초급', '서울 홍대', '목요일', 48, '오후 4시 이후', NULL, 20, 'Y');
INSERT INTO TB_TEAM (TEAM_NUM, FIELD_NUM, TEAM_NAME, TEAM_INTRO, TEAM_LEADER_INTRO, TEAM_ORIGINAL_IMAGE, 
                            TEAM_RENAME_IMAGE, TEAM_LEVEL, TEAM_LOCAL, TEAM_ACT_DAY,
                            TEAM_ACT_WEEK, TEAM_ACT_TIME, TEAM_FEE, TEAM_LIMIT, TEAM_RECRUIT)
VALUES (2, 4, 'SW 스타트업', '트렌디한 아이템으로, 새로운 시작을 함께할 프로그래머를 모집합니다.',' ', NULL, NULL,
            '고급', '서울', '월요일', 24, '오전 9시~오후 6시', NULL, 8, 'Y');
INSERT INTO TB_TEAM (TEAM_NUM, FIELD_NUM, TEAM_NAME, TEAM_INTRO, TEAM_LEADER_INTRO, TEAM_ORIGINAL_IMAGE, 
                            TEAM_RENAME_IMAGE, TEAM_LEVEL, TEAM_LOCAL, TEAM_ACT_DAY,
                            TEAM_ACT_WEEK, TEAM_ACT_TIME, TEAM_FEE, TEAM_LIMIT, TEAM_RECRUIT)
VALUES (3, 8, 'SQLD 자격증', '22년 1차 SQLD 자격증 대비 함께 공부하실 분 모집합니다.', ' ', NULL, NULL,
            '중급', '인천', '화요일', 32, '오후 5시~오후 9시', 20000, 5, 'Y');
INSERT INTO TB_TEAM (TEAM_NUM, FIELD_NUM, TEAM_NAME, TEAM_INTRO,TEAM_LEADER_INTRO, TEAM_ORIGINAL_IMAGE, 
                            TEAM_RENAME_IMAGE, TEAM_LEVEL, TEAM_LOCAL, TEAM_ACT_DAY,
                            TEAM_ACT_WEEK, TEAM_ACT_TIME, TEAM_FEE, TEAM_LIMIT, TEAM_RECRUIT)
VALUES (4, 7, 'CASTLE 밴드', 'CASTLE 음악 카페에서 악기에 흥미가 있으신분, 연주를 배우고 싶으신 분, 함께 연주하실 분 구합니다.',' ', NULL, NULL,
            '초급', '경기도 안산', '금요일', 8, '오후 7시 이후', 5000, 6, 'N');
INSERT INTO TB_TEAM (TEAM_NUM, FIELD_NUM, TEAM_NAME, TEAM_INTRO, TEAM_LEADER_INTRO, TEAM_ORIGINAL_IMAGE, 
                            TEAM_RENAME_IMAGE, TEAM_LEVEL, TEAM_LOCAL, TEAM_ACT_DAY,
                            TEAM_ACT_WEEK, TEAM_ACT_TIME, TEAM_FEE, TEAM_LIMIT, TEAM_RECRUIT)
VALUES (5, 9, 'HELLO SEOUL', '함께 Story Seoul 유뷰터 콘텐츠 공모전에 참여할 사람 모집합니다. 영상관련 경험이 있으신 분 환영합니다.',' ', NULL, NULL,
            '중급', '인천 남동', '금요일', 6, '오전 10시~오후 8시', 10000, 4, 'Y');
            
-- TB_TEAM_MEMBER SAMPLE DATA
INSERT INTO TB_TEAM_MEMBER (TEAM_MEMBER_NO, TEAM_NUM, USER_NO, TEAM_MEMBER_LEADER, TEAM_MEMBER_DATE)
VALUES (1, 1, 1, 'Y', DEFAULT);
INSERT INTO TB_TEAM_MEMBER (TEAM_MEMBER_NO, TEAM_NUM, USER_NO, TEAM_MEMBER_LEADER,TEAM_MEMBER_DATE)
VALUES (2, 2, 3, 'N', DEFAULT);
INSERT INTO TB_TEAM_MEMBER (TEAM_MEMBER_NO, TEAM_NUM, USER_NO, TEAM_MEMBER_LEADER, TEAM_MEMBER_DATE)
VALUES (3, 3, 6, 'Y', DEFAULT);
INSERT INTO TB_TEAM_MEMBER (TEAM_MEMBER_NO, TEAM_NUM, USER_NO, TEAM_MEMBER_LEADER, TEAM_MEMBER_DATE)
VALUES (4, 4, 4, 'Y', DEFAULT);
INSERT INTO TB_TEAM_MEMBER (TEAM_MEMBER_NO, TEAM_NUM, USER_NO, TEAM_MEMBER_LEADER, TEAM_MEMBER_DATE)
VALUES (5, 5, 9, 'Y', DEFAULT);
INSERT INTO TB_TEAM_MEMBER (TEAM_MEMBER_NO, TEAM_NUM, USER_NO, TEAM_MEMBER_LEADER, TEAM_MEMBER_DATE)
VALUES (6, 3, 7, 'N', DEFAULT);

-- TB_JOIN_WAITING SAMPLE DATA
INSERT INTO TB_JOIN_WAITING (JOIN_NUM, TEAM_NUM, USER_NO, JOIN_INTRO, JOIN_ORIGINAL_FILENAME, JOIN_RENAME_FILENAME)
VALUES (1, 1, 2, '영어 회화 공부를 하고 싶어, 관련 정보 및 함께 공부할 사람을 찾기 위해 지원합니다. 영어 회화 공부는 약 한달 째 진행 중이며, 수준은 아직 초급입니다.', NULL, NULL);
INSERT INTO TB_JOIN_WAITING (JOIN_NUM, TEAM_NUM, USER_NO, JOIN_INTRO, JOIN_ORIGINAL_FILENAME, JOIN_RENAME_FILENAME)
VALUES (2, 4, 5, '밴드의 베이스 역할을 지원합니다. 고등학교와 대학교에서 밴드부 활동을 한 경험이 있으며, 졸업 이후로도 취미로 계속 베이스를 잡았습니다.', NULL, NULL);
INSERT INTO TB_JOIN_WAITING (JOIN_NUM, TEAM_NUM, USER_NO, JOIN_INTRO, JOIN_ORIGINAL_FILENAME, JOIN_RENAME_FILENAME)
VALUES (3, 3, 8, 'SQL 공부 시작한지 이제 4개월 된 사람입니다. 기본적인 문구는 사용할 줄 알지만, 깊은 지식은 아직 부족해 정보 공유를 하며 함께 공부하는 사람을 찾고 싶어 지원합니다.', NULL, NULL);
INSERT INTO TB_JOIN_WAITING (JOIN_NUM, TEAM_NUM, USER_NO, JOIN_INTRO, JOIN_ORIGINAL_FILENAME, JOIN_RENAME_FILENAME)
VALUES (4, 5, 10, '유튜브 편집자로서 일을 1년간 해본 경험이 있습니다. 주로 사용하는 환경은 맥 기기에서의 프리미어 프로를 사용하며, 편집 관련 작업은 약 3년 해보았습니다.', NULL, NULL);

--임수안
--REVIEW
INSERT INTO REVIEW
VALUES(1, 1, '리뷰1', 'user01', '쉽고 재밌었습니다.', '4', null, null, default, default);
INSERT INTO REVIEW
VALUES(2, 2, '리뷰2', 'user02', '즐거웠습니다.', '5', null, null, default, default);
INSERT INTO REVIEW
VALUES(3, 1, '리뷰3', 'user03', '분위기가 좋았습니다.', '5', null, null, default ,default);
INSERT INTO REVIEW
VALUES(4, 4, '리뷰4', 'user07', '재밌었습니다.', '5', null, null, default,default);
INSERT INTO REVIEW
VALUES(5, 3, '리뷰6', 'user08', '즐겁게 배웠습니다.', '3', null, null, default ,default);
INSERT INTO REVIEW
VALUES(6, 5,'리뷰7', 'user04', '아쉬웠습니다.', '1', null, null, default ,default);
INSERT INTO REVIEW
VALUES(7, 1, '리뷰5', 'user05', '재밌었습니다.', '4', null, null, default ,default);
INSERT INTO REVIEW
VALUES(8, 2, '리뷰8', 'user10', '괜찮았습니다.', '3', null, null, default ,default);
INSERT INTO REVIEW
VALUES(9, 3, '리뷰9', 'user11', '분위기가 좋았습니다.', '5', null, null, default ,default);
INSERT INTO REVIEW
VALUES(10, 4, '리뷰10', 'user12', '팀장님이 아쉬웠습니다.', '2', null, null, default ,default);
INSERT INTO REVIEW
VALUES(11, 5, '리뷰11', 'user13', '다들 열심히해서 좋았습니다.', '5', null, null,  default ,default);
INSERT INTO REVIEW
VALUES(12, 1, '리뷰12', 'user07', '괜찮았습니다.', '4', null, null, default ,default);
INSERT INTO REVIEW
VALUES(13, 3, '리뷰13', 'user08', '소통이 잘 안되서 아쉬웠습니다.', '2', null, null, default ,default);

-- 돈녕
-- TB_FILE SAMPLE DATA

-- CHATROOM SAMPLE DATA
INSERT INTO CHATROOM VALUES (01, 1, '1대1채팅');
INSERT INTO CHATROOM VALUES (02, 2, '그룹채팅');
INSERT INTO CHATROOM VALUES (03, 3, '1대1채팅');
INSERT INTO CHATROOM VALUES (04, 4, '1대1채팅');
INSERT INTO CHATROOM VALUES (05, 5, '그룹채팅');
INSERT INTO CHATROOM VALUES (06, 1, '그룹채팅');
INSERT INTO CHATROOM VALUES (07, 2, '1대1채팅');
INSERT INTO CHATROOM VALUES (08, 3, '그룹채팅');
INSERT INTO CHATROOM VALUES (09, 4, '그룹채팅');
INSERT INTO CHATROOM VALUES (10, 5, '1대1채팅');

-- CHATTING_MSGS SAMPLE DATA
INSERT INTO CHATTING_MSGS VALUES (01, 01, 1, NULL, '안녕하세요', sysdate);
INSERT INTO CHATTING_MSGS VALUES (02, 02, 2, NULL, '반갑습니다', sysdate);
INSERT INTO CHATTING_MSGS VALUES (03, 03, 3, NULL, '어서오세요', sysdate);
INSERT INTO CHATTING_MSGS VALUES (04, 04, 4, NULL, '잘가세요', sysdate);
INSERT INTO CHATTING_MSGS VALUES (05, 05, 5, NULL, '수고요', sysdate);
INSERT INTO CHATTING_MSGS VALUES (06, 06, 6, NULL, '감사감사', sysdate);
INSERT INTO CHATTING_MSGS VALUES (07, 07, 7, NULL, '하이하이', sysdate);
INSERT INTO CHATTING_MSGS VALUES (08, 08, 8, NULL, '바이바이', sysdate);
INSERT INTO CHATTING_MSGS VALUES (09, 09, 9, NULL, '굿모닝', sysdate);
INSERT INTO CHATTING_MSGS VALUES (10, 10, 10, NULL, '굿바이', sysdate);

--DAILY
INSERT INTO DAILY VALUES(1, 1, 1, '2021/09/30', '일지1', 1);
INSERT INTO DAILY VALUES(2, 1, 1, DEFAULT, '일지2', 2);
INSERT INTO DAILY VALUES(3, 1, 1, '2021/08/15', '일지3', 3);
INSERT INTO DAILY VALUES(4, 1, 1, DEFAULT, '일지4', 2);
INSERT INTO DAILY VALUES(5, 1, 1, '2021/08/21', '일지5', 3);
INSERT INTO DAILY VALUES(6, 1, 1, '2021/09/01', '일지6', 3);

--CALENDAR
INSERT INTO CALENDAR VALUES(1, 1, 1, '일정1', '2021/08/16', '2021/08/16', '사적인일1');
INSERT INTO CALENDAR VALUES(2, 1, 1, '일정2', '2021/08/30', '2021/09/02', '사적인일2');
INSERT INTO CALENDAR VALUES(3, 1, 1, '일정3', '2021/08/22', '2021/08/24', '사적인일3');
INSERT INTO CALENDAR VALUES(4, 1, 1, '일정4', '2021/08/16', '2021/08/19', '사적인일4');
INSERT INTO CALENDAR VALUES(5, 1, 1, '일정5', '2021/08/11', '2021/08/14', '사적인일5');

--TEAMNOTICE
INSERT INTO TEAMNOTICE VALUES(1, 1, 1, '공지1', '공지1입니다', DEFAULT, NULL, NULL);
INSERT INTO TEAMNOTICE VALUES(2, 1, 1, '공지2', '공지2입니다', DEFAULT, NULL, NULL);
INSERT INTO TEAMNOTICE VALUES(3, 1, 1, '공지3', '공지3입니다', DEFAULT, NULL, NULL);
INSERT INTO TEAMNOTICE VALUES(4, 1, 1, '공지4', '공지4입니다', DEFAULT, NULL, NULL);
INSERT INTO TEAMNOTICE VALUES(5, 1, 1, '공지5', '공지5입니다', DEFAULT, NULL, NULL);

-- 공지사항 샘플 데이터 추가
INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 4), 'MoiM 공지사항 1', 'MoiM의 공지사항 게시판입니다. 공지사항을 작성해 주세요.', DEFAULT, NULL, NULL);
INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 4), 'MoiM 공지사항 2', 'MoiM의 공지사항 게시판입니다. 공지사항을 작성해 주세요.', DEFAULT, NULL, NULL);
INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 4), 'MoiM 공지사항 3', 'MoiM의 공지사항 게시판입니다. 공지사항을 작성해 주세요.', DEFAULT, NULL, NULL);
INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 4), 'MoiM 공지사항 4', 'MoiM의 공지사항 게시판입니다. 공지사항을 작성해 주세요.', DEFAULT, NULL, NULL);
INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 4), 'MoiM 공지사항 5', 'MoiM의 공지사항 게시판입니다. 공지사항을 작성해 주세요.', DEFAULT, NULL, NULL);
INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 4), 'MoiM 공지사항 6', 'MoiM의 공지사항 게시판입니다. 공지사항을 작성해 주세요.', DEFAULT, NULL, NULL);
INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 4), 'MoiM 공지사항 7', 'MoiM의 공지사항 게시판입니다. 공지사항을 작성해 주세요.', DEFAULT, NULL, NULL);
INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 4), 'MoiM 공지사항 8', 'MoiM의 공지사항 게시판입니다. 공지사항을 작성해 주세요.', DEFAULT, NULL, NULL);
INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 4), 'MoiM 공지사항 9', 'MoiM의 공지사항 게시판입니다. 공지사항을 작성해 주세요.', DEFAULT, NULL, NULL);
INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 4), 'MoiM 공지사항 10', 'MoiM의 공지사항 게시판입니다. 공지사항을 작성해 주세요.', DEFAULT, NULL, NULL);

-- 글 카테고리 샘플 데이터 추가
INSERT INTO BOARD_CATEGORY VALUES(1, '공모전');
INSERT INTO BOARD_CATEGORY VALUES(2, '인턴십');
INSERT INTO BOARD_CATEGORY VALUES(3, '자격증');
INSERT INTO BOARD_CATEGORY VALUES(4, '이벤트');
INSERT INTO BOARD_CATEGORY VALUES(5, '자유글');

-- 게시판 샘플 데이터 추가
INSERT INTO BOARD VALUES(BOARD_SEQ.NEXTVAL, (SELECT BOARD_CATEGORY_NO FROM BOARD_CATEGORY WHERE BOARD_CATEGORY_NAME = '공모전'), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 2), '이 글은 공모전 글 1입니다.', '공모전에 대한 내용을 작성해 주세요.', DEFAULT, NULL, NULL, DEFAULT);
INSERT INTO BOARD VALUES(BOARD_SEQ.NEXTVAL, (SELECT BOARD_CATEGORY_NO FROM BOARD_CATEGORY WHERE BOARD_CATEGORY_NAME = '공모전'), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 2), '이 글은 공모전 글 2입니다.', '공모전에 대한 내용을 작성해 주세요.', DEFAULT, NULL, NULL, DEFAULT);
INSERT INTO BOARD VALUES(BOARD_SEQ.NEXTVAL, (SELECT BOARD_CATEGORY_NO FROM BOARD_CATEGORY WHERE BOARD_CATEGORY_NAME = '공모전'), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 2), '이 글은 공모전 글 3입니다.', '공모전에 대한 내용을 작성해 주세요.', DEFAULT, NULL, NULL, DEFAULT);
INSERT INTO BOARD VALUES(BOARD_SEQ.NEXTVAL, (SELECT BOARD_CATEGORY_NO FROM BOARD_CATEGORY WHERE BOARD_CATEGORY_NAME = '인턴십'), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 3), '이 글은 인턴십 글 1입니다.', '인턴십에 대한 내용을 작성해 주세요.', DEFAULT, NULL, NULL, DEFAULT);
INSERT INTO BOARD VALUES(BOARD_SEQ.NEXTVAL, (SELECT BOARD_CATEGORY_NO FROM BOARD_CATEGORY WHERE BOARD_CATEGORY_NAME = '인턴십'), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 3), '이 글은 인턴십 글 2입니다.', '인턴십에 대한 내용을 작성해 주세요.', DEFAULT, NULL, NULL, DEFAULT);
INSERT INTO BOARD VALUES(BOARD_SEQ.NEXTVAL, (SELECT BOARD_CATEGORY_NO FROM BOARD_CATEGORY WHERE BOARD_CATEGORY_NAME = '인턴십'), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 3), '이 글은 인턴십 글 3입니다.', '인턴십에 대한 내용을 작성해 주세요.', DEFAULT, NULL, NULL, DEFAULT);
INSERT INTO BOARD VALUES(BOARD_SEQ.NEXTVAL, (SELECT BOARD_CATEGORY_NO FROM BOARD_CATEGORY WHERE BOARD_CATEGORY_NAME = '자격증'), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 4), '이 글은 자격증 글 1입니다.', '자격증에 대한 내용을 작성해 주세요.', DEFAULT, NULL, NULL, DEFAULT);
INSERT INTO BOARD VALUES(BOARD_SEQ.NEXTVAL, (SELECT BOARD_CATEGORY_NO FROM BOARD_CATEGORY WHERE BOARD_CATEGORY_NAME = '자격증'), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 4), '이 글은 자격증 글 2입니다.', '자격증에 대한 내용을 작성해 주세요.', DEFAULT, NULL, NULL, DEFAULT);
INSERT INTO BOARD VALUES(BOARD_SEQ.NEXTVAL, (SELECT BOARD_CATEGORY_NO FROM BOARD_CATEGORY WHERE BOARD_CATEGORY_NAME = '자격증'), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 4), '이 글은 자격증 글 3입니다.', '자격증에 대한 내용을 작성해 주세요.', DEFAULT, NULL, NULL, DEFAULT);
INSERT INTO BOARD VALUES(BOARD_SEQ.NEXTVAL, (SELECT BOARD_CATEGORY_NO FROM BOARD_CATEGORY WHERE BOARD_CATEGORY_NAME = '이벤트'), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 5), '이 글은 이벤트 글 1입니다.', '이벤트에 대한 내용을 작성해 주세요.', DEFAULT, NULL, NULL, DEFAULT);
INSERT INTO BOARD VALUES(BOARD_SEQ.NEXTVAL, (SELECT BOARD_CATEGORY_NO FROM BOARD_CATEGORY WHERE BOARD_CATEGORY_NAME = '이벤트'), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 5), '이 글은 이벤트 글 2입니다.', '이벤트에 대한 내용을 작성해 주세요.', DEFAULT, NULL, NULL, DEFAULT);
INSERT INTO BOARD VALUES(BOARD_SEQ.NEXTVAL, (SELECT BOARD_CATEGORY_NO FROM BOARD_CATEGORY WHERE BOARD_CATEGORY_NAME = '이벤트'), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 5), '이 글은 이벤트 글 3입니다.', '이벤트에 대한 내용을 작성해 주세요.', DEFAULT, NULL, NULL, DEFAULT);
INSERT INTO BOARD VALUES(BOARD_SEQ.NEXTVAL, (SELECT BOARD_CATEGORY_NO FROM BOARD_CATEGORY WHERE BOARD_CATEGORY_NAME = '자유글'), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 6), '이 글은 자유글 글 1입니다.', '자유글에 대한 내용을 작성해 주세요.', DEFAULT, NULL, NULL, DEFAULT);
INSERT INTO BOARD VALUES(BOARD_SEQ.NEXTVAL, (SELECT BOARD_CATEGORY_NO FROM BOARD_CATEGORY WHERE BOARD_CATEGORY_NAME = '자유글'), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 6), '이 글은 자유글 글 2입니다.', '자유글에 대한 내용을 작성해 주세요.', DEFAULT, NULL, NULL, DEFAULT);
INSERT INTO BOARD VALUES(BOARD_SEQ.NEXTVAL, (SELECT BOARD_CATEGORY_NO FROM BOARD_CATEGORY WHERE BOARD_CATEGORY_NAME = '자유글'), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 6), '이 글은 자유글 글 3입니다.', '자유글에 대한 내용을 작성해 주세요.', DEFAULT, NULL, NULL, DEFAULT);

-- 댓글 샘플 데이터 추가
INSERT INTO REPLY VALUES(REPLY_SEQ.NEXTVAL, (SELECT BOARD_NO FROM BOARD WHERE BOARD_NO = 1), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 7), '댓글입니다. 대댓글 기능은 없습니다.', DEFAULT);
INSERT INTO REPLY VALUES(REPLY_SEQ.NEXTVAL, (SELECT BOARD_NO FROM BOARD WHERE BOARD_NO = 2), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 7), '댓글입니다. 대댓글 기능은 없습니다.', DEFAULT);
INSERT INTO REPLY VALUES(REPLY_SEQ.NEXTVAL, (SELECT BOARD_NO FROM BOARD WHERE BOARD_NO = 3), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 7), '댓글입니다. 대댓글 기능은 없습니다.', DEFAULT);
INSERT INTO REPLY VALUES(REPLY_SEQ.NEXTVAL, (SELECT BOARD_NO FROM BOARD WHERE BOARD_NO = 4), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 8), '댓글입니다. 대댓글 기능은 없습니다.', DEFAULT);
INSERT INTO REPLY VALUES(REPLY_SEQ.NEXTVAL, (SELECT BOARD_NO FROM BOARD WHERE BOARD_NO = 5), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 8), '댓글입니다. 대댓글 기능은 없습니다.', DEFAULT);
INSERT INTO REPLY VALUES(REPLY_SEQ.NEXTVAL, (SELECT BOARD_NO FROM BOARD WHERE BOARD_NO = 6), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 8), '댓글입니다. 대댓글 기능은 없습니다.', DEFAULT);
INSERT INTO REPLY VALUES(REPLY_SEQ.NEXTVAL, (SELECT BOARD_NO FROM BOARD WHERE BOARD_NO = 7), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 9), '댓글입니다. 대댓글 기능은 없습니다.', DEFAULT);
INSERT INTO REPLY VALUES(REPLY_SEQ.NEXTVAL, (SELECT BOARD_NO FROM BOARD WHERE BOARD_NO = 8), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 9), '댓글입니다. 대댓글 기능은 없습니다.', DEFAULT);
INSERT INTO REPLY VALUES(REPLY_SEQ.NEXTVAL, (SELECT BOARD_NO FROM BOARD WHERE BOARD_NO = 9), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 9), '댓글입니다. 대댓글 기능은 없습니다.', DEFAULT);
INSERT INTO REPLY VALUES(REPLY_SEQ.NEXTVAL, (SELECT BOARD_NO FROM BOARD WHERE BOARD_NO = 10), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 10), '댓글입니다. 대댓글 기능은 없습니다.', DEFAULT);
INSERT INTO REPLY VALUES(REPLY_SEQ.NEXTVAL, (SELECT BOARD_NO FROM BOARD WHERE BOARD_NO = 11), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 10), '댓글입니다. 대댓글 기능은 없습니다.', DEFAULT);
INSERT INTO REPLY VALUES(REPLY_SEQ.NEXTVAL, (SELECT BOARD_NO FROM BOARD WHERE BOARD_NO = 12), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 10), '댓글입니다. 대댓글 기능은 없습니다.', DEFAULT);
INSERT INTO REPLY VALUES(REPLY_SEQ.NEXTVAL, (SELECT BOARD_NO FROM BOARD WHERE BOARD_NO = 13), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 6), '댓글입니다. 대댓글 기능은 없습니다.', DEFAULT);
INSERT INTO REPLY VALUES(REPLY_SEQ.NEXTVAL, (SELECT BOARD_NO FROM BOARD WHERE BOARD_NO = 14), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 6), '댓글입니다. 대댓글 기능은 없습니다.', DEFAULT);
INSERT INTO REPLY VALUES(REPLY_SEQ.NEXTVAL, (SELECT BOARD_NO FROM BOARD WHERE BOARD_NO = 15), (SELECT USER_NO FROM USER_INFO WHERE USER_NO = 6), '댓글입니다. 대댓글 기능은 없습니다.', DEFAULT);


-- TB_ALERT Table Create SQL
CREATE TABLE TB_ALERT
(
    ALERT_NUM NUMBER NOT NULL, 
    TEAM_MEMBER_NO NUMBER NOT NULL, 
    TEAM_NUM NUMBER NOT NULL, 
    ALERT_CONTENT VARCHAR2(200) NOT NULL,
    ALERT_DATE DATE DEFAULT SYSDATE NOT NULL,
    CONSTRAINT PK_TB_ALERT PRIMARY KEY (ALERT_NUM)
);
COMMENT ON TABLE TB_ALERT IS '알람';
COMMENT ON COLUMN TB_ALERT.ALERT_NUM IS '알람 번호';
COMMENT ON COLUMN TB_ALERT.TEAM_MEMBER_NO IS '팀원 번호';
COMMENT ON COLUMN TB_ALERT.TEAM_NUM IS '팀 번호';
COMMENT ON COLUMN TB_ALERT.ALERT_CONTENT IS '알람 내용';
COMMENT ON COLUMN TB_ALERT.ALERT_DATE IS '알람 날짜';
        
ALTER TABLE TB_ALERT
    ADD CONSTRAINT FK_TB_ALERT_TEAM_MEMBER_NO FOREIGN KEY (TEAM_MEMBER_NO)
        REFERENCES TB_TEAM_MEMBER (TEAM_MEMBER_NO);

ALTER TABLE TB_ALERT
    ADD CONSTRAINT FK_TB_ALERT_TEAM_NUM FOREIGN KEY (TEAM_NUM)
        REFERENCES TB_TEAM (TEAM_NUM);

-- TB_ALERT SAMPLE DATA
INSERT INTO TB_ALERT
VALUES (1, 1, 1, '닉네임1 님이 팀 정보 를 변경하였습니다.', DEFAULT);
INSERT INTO TB_ALERT
VALUES (2, 1, 1, '닉네임1 님이 공지 를 등록하였습니다.', DEFAULT);
INSERT INTO TB_ALERT
VALUES (3, 1, 1, '닉네임1 님이 일지 를 등록하였습니다.', DEFAULT);
INSERT INTO TB_ALERT
VALUES (4, 1, 1, '닉네임1 님이 일정 를 등록하였습니다.', DEFAULT);


COMMIT;