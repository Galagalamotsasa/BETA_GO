package com.betago.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.mariadb.jdbc.CallableProcedureStatement;

import com.betago.dto.BoardVO;
import com.betago.dto.ClassVO;

public class BoardDAO {
	private static BoardDAO instance = null;

	private BoardDAO() {

	}

	public static BoardDAO getInstance() {
		if (instance == null) {
			return new BoardDAO();
		}
		return instance;
	}

	// 가장 큰 board번호 가져오기
	public int maxBoard_no() throws ClassNotFoundException, SQLException {
		Connection conn = DBManagement.getConnection();
		String query = "select max(board_no) as maxbno from miniproject.board";
		PreparedStatement pstmt = conn.prepareStatement(query);
		ResultSet rs = pstmt.executeQuery();
		int maxbno=0;
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
			vo.add( new BoardVO(rs.getInt("board_no"), rs.getInt("classification_no"), rs.getString("board_title"),
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
		pstmt.setString(2,bvo.getAccount_id());
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
		BoardVO vo=null;
		Connection conn = DBManagement.getConnection();
		String query="select * from board where board_no =?";
		PreparedStatement pstmt = conn.prepareStatement(query);
		pstmt.setInt(1, bno);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			vo = new BoardVO(rs.getInt("board_no"), rs.getInt("classification_no"), rs.getString("board_title"), rs.getString("account_id"), rs.getString("board_content"), rs.getInt("board_hits"), rs.getInt("board_recomm"), rs.getDate("board_write_date"), rs.getInt("board_active"), rs.getString("board_img"), rs.getInt("board_a_no"), rs.getInt("board_a_reply"), rs.getInt("board_a_reply_order"));
			
		}
		System.out.println(vo);
		conn.close();
		pstmt.close();
		return vo;
		
	}

	public int boardUpdate(String title, String content, String img) throws ClassNotFoundException, SQLException {
		Connection conn = DBManagement.getConnection();
		int result=0;
		String query = "update board set board_title=?, board_content=?, board_write_date=now(),board_img=?";
		PreparedStatement pstmt = conn.prepareStatement(query);
		pstmt.setString(1,title );
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
	while(rs.next()) {
		vo.add(new ClassVO(rs.getInt("class_no"), rs.getString("class_title"), rs.getString("class_object"), rs.getString("class_desc"), rs.getInt("cc_no"), rs.getString("class_img"), rs.getInt("class_candidates")));
	}
	System.out.println(vo);
	pstmt.close();
	rs.close();
	return vo;
	}

	public List<BoardVO> getEvent() throws SQLException, ClassNotFoundException {
		String  query = "select board_img from board where classification_no=4";
		Connection conn = DBManagement.getConnection();
		PreparedStatement pstmt = conn.prepareStatement(query);
		ResultSet rs = pstmt.executeQuery();
		List<BoardVO> vo = new ArrayList<BoardVO>();
		while(rs.next()) {
			 vo.add( new BoardVO(rs.getString("board_img")));
		}
		System.out.println(vo);
		pstmt.close();
		conn.close();
		return vo;
	}



	
}
