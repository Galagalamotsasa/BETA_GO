-- 프로시저 생성 ============================================================================

-- 강사가 강의를 등록하면 수강/강의 기록에 기록하는 프로시져
DELIMITER $$
CREATE PROCEDURE insertClassLog_Candidates(

	in  class int(5), -- 강의 번호
	in  account nvarchar(20), -- 강사 아이디
	in  title nvarchar(40), -- 강의 제목
	in  startdate date, -- 강의 시작 시간
	in  enddate date -- 강의 종료 시간
 
)
begin
   insert into class_history(class_no, account_id, class_title, class_startdate, class_enddate) values(class, account, title, startdate, enddate);
   commit;
         
end$$
DELIMITER ;


-- 수강생이 수강신청을 하면 강의테이블의 누적 수강생의 수를 + 1 하는 프로시져 ==>> 아직 작업중입니다. <<==
DELIMITER $$
CREATE PROCEDURE insertClassLog_Candidates(

	in  class int(5), -- 강의 번호
	in  account nvarchar(20) -- 수강생 아이디
 
)
begin
   insert into class_history(class_no, account_id, class_title, class_startdate, class_enddate) values(class, account);
   update class set class_candidates = class_candidates + 1 where class_no = class;
   commit;
   select * from class;
         
end$$
DELIMITER ;






