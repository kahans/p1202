package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Board;
import service.BoardDao;

/**
 * Servlet implementation class BoardAdd
 */
@WebServlet("/BoardAdd")
public class BoardAdd extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/board/boardAddForm.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String boardPw = request.getParameter("boardPw");
		System.out.println("param boardPw:"+boardPw);
		String boardTitle = request.getParameter("boardTitle");
		System.out.println("param boardTitle:"+boardTitle);
		String boardContent = request.getParameter("boardContent");
		System.out.println("param boardContent:"+boardContent);
		String boardUser = request.getParameter("boardUser");
		System.out.println("param boardUser:"+boardUser);
		 
		Board board = new Board();
		board.setBoardPw(boardPw);
		board.setBoardTitle(boardTitle);
		board.setBoardContent(boardContent);
		board.setBoardUser(boardUser);
		 
		BoardDao dao = new BoardDao();
		int rowCount = dao.insertBoard(board);
		 
		response.sendRedirect(request.getContextPath()+"/BoardList");
	}

}
