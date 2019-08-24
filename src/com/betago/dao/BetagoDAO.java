package com.betago.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import org.mariadb.jdbc.CallableProcedureStatement;

import com.betago.dto.AccountVO;
import com.betago.dto.BoardVO;
import com.betago.dto.ChapterJoinVideo;
import com.betago.dto.ChapterVO;
import com.betago.dto.ClassVO;
import com.betago.dto.LecDetailSelectByHistory;
import com.betago.dto.LoginVO;
import com.betago.dto.VideoJoinCategory;

public class BetagoDAO {
	private static BetagoDAO instance = null;

	private BetagoDAO() {

	}

	public static BetagoDAO getInstance() {
		if (instance == null) {
			return new BetagoDAO();
		}
		return instance;
	}

	// 가장 큰 board번호 가져오기
	public int maxBoard_no() throws ClassNotFoundException, SQLException {
		Connection conn = DBManagement.getConnection();
		String query = "select max(board_no) as maxbno from miniproject.board";
		PreparedStatement pstmt = conn.prepareStatement(query);
		ResultSet rs = pstmt.executeQuery();
		int maxbno = 0;
		if (rs.next()) {
			maxbno = rs.getInt("maxbno") + 1;
		}
		System.out.println(maxbno);
		return maxbno;
	}

	// 글작성
	public int insertBoard(BoardVO bvo) throws SQLException, ClassNotFoundException {
		int result;
		System.out.println("dAO�ܿ� �Դ°�?");
		Connection conn = DBManagement.getConnection();
		String query = "insert into miniproject.board (board_no,classification_no, board_title, account_id, board_content, board_img,board_a_no )values (?,?,?,?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(query);
		pstmt.setInt(1, maxBoard_no());
		pstmt.setInt(2, bvo.getClassification_no());
		pstmt.setString(3, bvo.getBoard_title());
		pstmt.setString(4, bvo.getAccount_id());
		pstmt.setString(5, bvo.getBoard_content());
		pstmt.setString(6, bvo.getBoard_img());
		pstmt.setInt(7, maxBoard_no());

		result = pstmt.executeUpdate();

		System.out.println(result);
		pstmt.close();
		conn.close();

		return result;
	}

	// 보드 리스트 보기
	public List<BoardVO> BoardView(int bno) throws ClassNotFoundException, SQLException {
		System.out.println("dao�� ����");
		List<BoardVO> vo = new ArrayList<BoardVO>();
		Connection conn = DBManagement.getConnection();
		String query = "{ call viewCount(?)}";
		CallableStatement pstmt = conn.prepareCall(query);
		pstmt.setInt(1, bno);
		ResultSet rs = pstmt.executeQuery();

		while (rs.next()) {
			vo.add(new BoardVO(rs.getInt("board_no"), rs.getInt("classification_no"), rs.getString("board_title"),
					rs.getString("account_id"), rs.getString("board_content"), rs.getInt("board_hits"),
					rs.getInt("board_recomm"), rs.getDate("board_write_date"), rs.getInt("board_active"),
					rs.getString("board_img"), rs.getInt("board_a_no"), rs.getInt("board_a_reply"),
					rs.getInt("board_a_reply_order")));

		}
		System.out.println(vo);
		pstmt.close();
		conn.close();
		return vo;

	}

	// 게시물 삭제
	public void BoardDel(int bno) throws ClassNotFoundException, SQLException {

		Connection conn = DBManagement.getConnection();
		String query = "update board set board_active=1 where board_no= ?";
		PreparedStatement pstmt = conn.prepareStatement(query);
		pstmt.setInt(1, bno);
		pstmt.executeUpdate();
		pstmt.close();
		conn.close();

	}

	// 댓글 달기
	public void replyInsert(BoardVO bvo) throws ClassNotFoundException, SQLException {
		Connection conn = DBManagement.getConnection();
		String query = "{call insert_reply(?,?,?,?)}";
		CallableStatement pstmt = conn.prepareCall(query);
		pstmt.setInt(1, maxBoard_no());
		pstmt.setString(2, bvo.getAccount_id());
		pstmt.setString(3, bvo.getBoard_content());
		pstmt.setInt(4, bvo.getBoard_a_no());
		ResultSet rs = pstmt.executeQuery();
		pstmt.close();
		conn.close();
	}

//	// 댓글 번호 매기기
//	public BoardVO maxReply(int bno) throws ClassNotFoundException, SQLException {
//		Connection conn = DBManagement.getConnection();
//		String query = "{call max_reply(?)}";
//		CallableStatement pstmt = conn.prepareCall(query);
//		pstmt.setInt(1, bno);
//		ResultSet rs = pstmt.executeQuery();
//		BoardVO bvo = null;
//		if(rs.next()) {
//			 bvo = new BoardVO(rs.getInt("maxreply"), rs.getInt("maxreplyorder"));
//		}
//		return bvo;
//	}
	// 대댓글 처리
	public void reReplyInsert(BoardVO vo) throws ClassNotFoundException, SQLException {
		Connection conn = DBManagement.getConnection();
		String query = "{call insert_rereply(?,?,?,?,?)}";
		CallableStatement cstmt = conn.prepareCall(query);
		cstmt.setInt(1, maxBoard_no());
		cstmt.setString(2, vo.getAccount_id());
		cstmt.setString(3, vo.getBoard_content());
		cstmt.setInt(4, vo.getBoard_a_no());
		cstmt.setInt(5, vo.getBoard_a_reply());
		cstmt.execute();
		cstmt.close();
		conn.close();
	}

	// 수정 나오게 하기
	public BoardVO boardUpdateView(int bno) throws ClassNotFoundException, SQLException {
		BoardVO vo = null;
		Connection conn = DBManagement.getConnection();
		String query = "select * from board where board_no =?";
		PreparedStatement pstmt = conn.prepareStatement(query);
		pstmt.setInt(1, bno);
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			vo = new BoardVO(rs.getInt("board_no"), rs.getInt("classification_no"), rs.getString("board_title"),
					rs.getString("account_id"), rs.getString("board_content"), rs.getInt("board_hits"),
					rs.getInt("board_recomm"), rs.getDate("board_write_date"), rs.getInt("board_active"),
					rs.getString("board_img"), rs.getInt("board_a_no"), rs.getInt("board_a_reply"),
					rs.getInt("board_a_reply_order"));

		}
		System.out.println(vo);
		conn.close();
		pstmt.close();
		return vo;

	}

	public int boardUpdate(String title, String content, String img) throws ClassNotFoundException, SQLException {
		Connection conn = DBManagement.getConnection();
		int result = 0;
		String query = "update board set board_title=?, board_content=?, board_write_date=now(),board_img=?";
		PreparedStatement pstmt = conn.prepareStatement(query);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setString(3, img);
		result = pstmt.executeUpdate();
		pstmt.close();
		conn.close();
		return result;
	}

	public List<ClassVO> viewClass() throws SQLException, ClassNotFoundException {
		List<ClassVO> vo = new ArrayList<ClassVO>();
		Connection conn = DBManagement.getConnection();
		String query = "select * from class";
		PreparedStatement pstmt = conn.prepareStatement(query);
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			vo.add(new ClassVO(rs.getInt("class_no"), rs.getString("class_title"), rs.getString("class_object"),
					rs.getString("class_desc"), rs.getInt("cc_no"), rs.getString("class_img"),
					rs.getInt("class_candidates")));
		}
		System.out.println(vo);
		pstmt.close();
		rs.close();
		return vo;
	}

	public List<BoardVO> getEvent() throws SQLException, ClassNotFoundException {
		String query = "select board_img from board where classification_no=4";
		Connection conn = DBManagement.getConnection();
		PreparedStatement pstmt = conn.prepareStatement(query);
		ResultSet rs = pstmt.executeQuery();
		List<BoardVO> vo = new ArrayList<BoardVO>();
		while (rs.next()) {
			vo.add(new BoardVO(rs.getString("board_img")));
		}
		System.out.println(vo);
		pstmt.close();
		conn.close();
		return vo;
	}

	public LecDetailSelectByHistory getLecDetail(int historyno)
			throws NamingException, SQLException, ClassNotFoundException {
		String query = "{ call miniproject.selectLecDetailsWithJoin(?) }";
//		String query = "select * from class_history where history_no = ?";
//		String query = "select ch.history_no, ch.class_no, ch.account_id, ch.class_title, ch.class_startdate, ch.class_enddate, cl.class_object, cl.class_desc, cl.class_img, ac.user_name, cc.cc_quiz, cc.cc_mid, cc.cc_final, cc.cc_tot " + 
//				"from miniproject.class_history ch " + 
//				"inner join miniproject.class cl on ch.class_no = cl.class_no " + 
//				"inner join miniproject.account ac on ch.account_id = ac.account_id " + 
//				"inner join miniproject.cc cc on cl.cc_no = cc.cc_no " + 
//				"where history_no = ?";

		Connection con = DBManagement.getConnection();

		CallableStatement pstmt = con.prepareCall(query);

		pstmt.setInt(1, historyno);

		System.out.println(pstmt);

		ResultSet rs = pstmt.executeQuery();

		LecDetailSelectByHistory selectQ = null;

		while (rs.next()) {
			selectQ = new LecDetailSelectByHistory(rs.getInt("history_no"), rs.getInt("class_no"),
					rs.getString("account_id"), rs.getString("class_title"), rs.getDate("class_startdate"),
					rs.getDate("class_enddate"), rs.getString("class_object"), rs.getString("class_desc"),
					rs.getString("class_img"), rs.getString("user_name"), rs.getInt("cc_quiz"), rs.getInt("cc_mid"),
					rs.getInt("cc_final"), rs.getInt("cc_tot"));
		}
		System.out.println("DAO : " + selectQ);

		rs.close();
		pstmt.close();
		con.close();

		return selectQ;
	}

	public ChapterJoinVideo getChapterDetail(int chapterno) throws SQLException, ClassNotFoundException {
		String query = "select ch.chapter_no, ch.class_no, ch.chapter_title, ch.chapter_object, ch.chapter_detail, ch.chapter_startdate, ch.chapter_enddate, ch.video_no, v.video_title, v.video_thumbnail from miniproject.chapter ch inner join miniproject.video v on ch.video_no = v.video_no where ch.chapter_no = ?";

		Connection con = DBManagement.getConnection();

		PreparedStatement pstmt = con.prepareStatement(query);

		pstmt.setInt(1, chapterno);

		System.out.println(pstmt);

		ResultSet rs = pstmt.executeQuery();

		ChapterJoinVideo chapter = null;

		while (rs.next()) {
			chapter = new ChapterJoinVideo(rs.getInt("chapter_no"), rs.getInt("class_no"),
					rs.getString("chapter_title"), rs.getString("chapter_object"), rs.getString("chapter_detail"),
					rs.getDate("chapter_startdate"), rs.getDate("chapter_enddate"), rs.getInt("video_no"),
					rs.getString("video_title"), rs.getString("video_thumbnail"));
		}

		System.out.println("DAO : " + chapter);

		rs.close();
		pstmt.close();
		con.close();

		return chapter;
	}

	public List<ChapterVO> getChapterJSON(int classno) throws ClassNotFoundException, SQLException {
		List<ChapterVO> chapterList = new ArrayList<ChapterVO>();
		String query = "SELECT * FROM miniproject.chapter where class_no = " + classno;
		Connection con = DBManagement.getConnection();

		PreparedStatement pstmt = con.prepareStatement(query);
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			chapterList.add(new ChapterVO(rs.getInt("chapter_no"), rs.getInt("class_no"), rs.getString("chapter_title"),
					rs.getString("chapter_object"), rs.getString("chapter_detail"), rs.getDate("chapter_startdate"),
					rs.getDate("chapter_enddate"), rs.getInt("video_no")));
		}
		System.out.println("DAO : " + chapterList);

		pstmt.close();
		con.close();

		return chapterList;
	}

	public VideoJoinCategory getVideoDetail(int videono) throws SQLException, ClassNotFoundException {
		String query = "select v.video_no, v.video_title, v.video_link, vc.video_category_no, vc.video_category_title, vc.video_category_desc from miniproject.video v inner join video_categor vs on v.video_category_no = vc.video_category_no where v.video_no = ?";

		Connection con = DBManagement.getConnection();

		PreparedStatement pstmt = con.prepareStatement(query);

		pstmt.setInt(1, videono);

		System.out.println(pstmt);

		ResultSet rs = pstmt.executeQuery();

		VideoJoinCategory video = null;

		while (rs.next()) {
			video = new VideoJoinCategory(rs.getInt("video_no"), rs.getString("video_title"),
					rs.getString("video_link"), rs.getInt("video_category_no"), rs.getString("video_category_title"),
					rs.getString("video_category_desc"));
		}

		System.out.println("DAO : " + video);

		rs.close();
		pstmt.close();
		con.close();

		return video;
	}

	public LoginVO login(String account_id, String account_pwd)
			throws NamingException, SQLException, ClassNotFoundException {

		String query = "select account_id,account_pwd from account where account_id= ? and account_pwd= ? ";

		Connection con = DBManagement.getConnection();
		PreparedStatement pstmt = con.prepareStatement(query);

		pstmt.setString(1, account_id);
		pstmt.setString(2, account_pwd);
		ResultSet rs = pstmt.executeQuery();
		LoginVO login = null;
		if (rs.next()) {
			login = new LoginVO(rs.getString("account_id"), rs.getString("account_pwd"));
		}
		System.out.println(login);

		System.out.println(account_pwd);

		return login;

	}
	//------------------회원가입을 위한 메서드--------------------
		public boolean insertAccount(AccountVO vo) throws NamingException, SQLException, ClassNotFoundException {
			boolean result = false;
			Connection con = DBManagement.getConnection();
			
			String sql = "{call insert_accountActive(?,?,?,?,?,?,?,?,?,?,?,?)}";
			

			CallableStatement pstmt = con.prepareCall(sql);
			System.out.println(vo);
			pstmt.setString(1,  vo.getAccount_id());
			pstmt.setString(2, vo.getAccount_pwd());
			pstmt.setString(3, vo.getUser_name());
			pstmt.setDate(4, vo.getUser_birth());
			pstmt.setString(5, vo.getUser_gender());
			pstmt.setString(6, vo.getUser_phone());
			pstmt.setString(7, vo.getUser_addr());
			pstmt.setString(8,  vo.getUser_img());
			pstmt.setString(9, vo.getUser_email());
			pstmt.setString(10, vo.getUser_education());
			pstmt.setString(11, vo.getUser_major());
			pstmt.setInt(12, vo.getAuth_no());

			
			
			result =pstmt.execute();
			pstmt.close();
			con.close();
			
			return result;
		}

}
