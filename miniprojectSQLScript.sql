-- cc(Completion Condition) 테이블 생성
CREATE TABLE `miniproject`.`cc` (
  `cc_no` INT(5) NOT NULL,
  `cc_quiz` INT(2) NULL,
  `cc_mid` INT(2) NULL,
  `cc_final` INT(2) NULL,
  `cc_tot` INT(3) NULL,
  PRIMARY KEY (`cc_no`))
COMMENT = 'Completion Condition';


-- class 테이블 생성
CREATE TABLE `miniproject`.`class` (
  `class_no` INT(5) NOT NULL,
  `class_title` NVARCHAR(40) NOT NULL,
  `class_object` NVARCHAR(500) NULL,
  `class_desc` NVARCHAR(500) NULL,
  `cc_no` INT(5) NULL,
  `class_img` VARCHAR(60) NULL,
  PRIMARY KEY (`class_no`),
  FOREIGN KEY (`cc_no`) REFERENCES `cc`(`cc_no`)
  );
  
-- class 테이블에 수강인원 수 추가
ALTER TABLE `miniproject`.`class` 
ADD COLUMN `class_candidates` INT(5) NULL DEFAULT 0 AFTER `class_img`;
  
-- Account 테이블 생성
CREATE TABLE `miniproject`.`account` (
  `account_id` NVARCHAR(20) NOT NULL,
  `account_pwd` NVARCHAR(20) NOT NULL,
  `user_name` NVARCHAR(20) NOT NULL,
  `user_birth` DATE NOT NULL,
  `user_gender` VARCHAR(2) NOT NULL,
  `user_phone` VARCHAR(13) NOT NULL,
  `user_addr` NVARCHAR(30) NULL,
  `user_img` VARCHAR(60) NULL,
  `user_email` VARCHAR(30) NULL,
  `user_education` NVARCHAR(30) NULL,
  `user_major` NVARCHAR(30) NULL,
  `user_date` DATE NOT NULL,
  `auth_no` INT(2) NOT NULL,
  PRIMARY KEY (`account_id`),
  FOREIGN KEY (`auth_no`) REFERENCES `authority`(`auth_no`)
  );


-- Account 테이블의 user_phone 컬럼에 유니크속성 부여(실패)
ALTER TABLE `miniproject`.`account` 
ADD UNIQUE INDEX `user_phone_UNIQUE`(`user_phone` ASC) VISIBLE;
;


-- classification 테이블 생성
CREATE TABLE `miniproject`.`classification` (
  `classification_no` INT(3) NOT NULL,
  `classification_title` NVARCHAR(6) NOT NULL,
  `classification_desc` NVARCHAR(50) NOT NULL,
  PRIMARY KEY (`classification_no`));


-- class_history 테이블 생성
CREATE TABLE `miniproject`.`class_history` (
	`history_no` INT(5) NOT NULL,
    `class_no` INT(5),
    `account_id` NVARCHAR(20),
    `class_title` NVARCHAR(40) NOT NULL,
    `class_startdate` DATE,
    `class_enddate` DATE,
    PRIMARY KEY (`history_no`),
    FOREIGN KEY (`class_no`) REFERENCES `class`(`class_no`),
    FOREIGN KEY (`account_id`) REFERENCES `account`(`account_id`));

-- 자동으로 기록 번호를 늘려준다.
ALTER TABLE `miniproject`.`class_history` 
CHANGE COLUMN `history_no` `history_no` INT(5) NOT NULL AUTO_INCREMENT ;


-- video 테이블 생성
CREATE TABLE `miniproject`.`video` (
	`video_no` INT(5) NOT NULL,
    `video_title` NVARCHAR(40),
    `video_link` NVARCHAR(60),
    PRIMARY KEY (`video_no`)
);


-- chapter 테이블 생성
CREATE TABLE `miniproject`.`chapter` (
	`chapter_no` INT(5) NOT NULL,
    `class_no` INT(5),
    `chapter_title` NVARCHAR(40) NOT NULL,
    `chapter_object` NVARCHAR(500) NOT NULL,
    `chapter_detail` NVARCHAR(2048),
    `chapter_startdate` DATE,
    `chapter_enddate` DATE,
    `video_no` INT(5),
    PRIMARY KEY (`chapter_no`),
    FOREIGN KEY (`class_no`) REFERENCES `class`(`class_no`),
    FOREIGN KEY (`video_no`) REFERENCES `video`(`video_no`)
);


-- quiz 테이블 생성
CREATE TABLE `miniproject`.`quiz` (
	`quiz_no` INT(5) NOT NULL,
    `chapter_no` INT(5),
    `quiz_qno` INT(2) NOT NULL,
    `quiz_desc` NVARCHAR(2048) NOT NULL,
    `quiz_file` VARCHAR(60),
    `account_id` NVARCHAR(20),
    PRIMARY KEY (`quiz_no`),
    FOREIGN KEY (`chapter_no`) REFERENCES `chapter`(`chapter_no`),
    FOREIGN KEY (`account_id`) REFERENCES `account`(`account_id`)
);


-- quiz_answer 테이블 생성
CREATE TABLE `miniproject`.`quiz_answer` (
	`quiz_A_no` INT(5) NOT NULL,
    `quiz_no` INT(5),
    `quiz_A_qno` INT(2) NOT NULL,
    `quiz_A_desc` NVARCHAR(2048) NOT NULL,
    `quiz_A_file` VARCHAR(60),
    `quiz_A_score` INT(3),
    `account_id` NVARCHAR(20),
    PRIMARY KEY (`quiz_A_no`),
    FOREIGN KEY (`quiz_no`) REFERENCES `quiz`(`quiz_no`),
    FOREIGN KEY (`account_id`) REFERENCES `account`(`account_id`)
);

-- 퀴즈 답 테이블 생성
create table quiz_answer(
   quiz_A_no int(5),
    quiz_no int(5),
    quiz_A_desc nvarchar(2048),
    quiz_A_file nvarchar(100),
    quiz_A_score int(3),
    account_id nvarchar(20),
    primary key (quiz_A_no),
    foreign key (quiz_no) references quiz.quiz_no,
    foreign key (account_no) references account.account_no
);

-- 프로시저 호출 부분
call insertClassLog_Candidates(1, 'kxodud1005', '스마트 웹 & 콘텐츠 개발자  양성', '2019-12-01', '2020-05-18');
call insertClassLog_Candidates(2, 'thor1234', '스마트 웹 & 콘텐츠 개발자  양성', '2019-09-30', '2020-3-30');