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
    USER_PWD VARCHAR2(50) NOT NULL,
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
    TEAM_ACT_TIME VARCHAR2(500) NULL,
    TEAM_FEE NUMBER DEFAULT 0 NULL,
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
    TEAM_MEMBER_RANK NUMBER NOT NULL, 
    TEAM_MEMBER_DATE DATE DEFAULT SYSDATE NOT NULL,
    CONSTRAINT PK_TB_TEAM_MEMBER_NO PRIMARY KEY (TEAM_MEMBER_NO)
);

COMMENT ON TABLE TB_TEAM_MEMBER IS '팀원';
COMMENT ON COLUMN TB_TEAM_MEMBER.TEAM_MEMBER_NO IS '팀원 번호';
COMMENT ON COLUMN TB_TEAM_MEMBER.TEAM_NUM IS '팀 번호';
COMMENT ON COLUMN TB_TEAM_MEMBER.USER_NO IS '회원 번호';
COMMENT ON COLUMN TB_TEAM_MEMBER.TEAM_MEMBER_RANK IS '팀원 등급';
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
    daily_content varchar2(200)
);
comment on COLUMN daily.daily_no is '일지번호';
comment on COLUMN daily.team_num is '팀번호';
comment on COLUMN daily.daily_writer is '일지작성자';
comment on COLUMN daily.daily_date is '일지작성일';
comment on COLUMN daily.daily_content is '일지내용';

create table calendar
(
    cal_no number constraint cal_no_pk primary key,
    team_num number constraint calteam_num_nn not null references TB_TEAM(team_num),
    cal_writer number constraint cal_writer_nn not null references USER_INFO(user_no),
    cal_title varchar2(100) constraint cal_title_nn not null,
    cal_startdate date constraint cal_startdate_nn not null,
    cal_enddate date constraint cal_enddate_nn not null,
    cal_category varchar2(20) constraint cal_category_nn not null,
    cal_detail varchar2(100) constraint cal_detail_nn not null
);
comment on COLUMN calendar.cal_no is '일정번호';
comment on COLUMN calendar.team_num is '팀번호';
comment on COLUMN calendar.cal_writer is '일정작성자';
comment on COLUMN calendar.cal_title is '일정명';
comment on COLUMN calendar.cal_startdate is '일정시작';
comment on COLUMN calendar.cal_enddate is '일정끝';
comment on COLUMN calendar.cal_category is '일정구분';
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