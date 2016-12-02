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
 * Servlet implementation class BoardDelete
 */
@WebServlet("/BoardRemove")
public class BoardRemove extends HttpServlet {
	private BoardDao boardDao;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("boardNo") == null) {
			response.sendRedirect(request.getContextPath() + "/BoardList");

		} else {
			/*int boardNo = Integer.parseInt(request.getParameter("boardNo"));
			BoardDao boardDao = new BoardDao();
			
			Board board = boardDao.selectBoardByKey(boardNo);
			
			
			request.setAttribute("board", board);*/

			request.getRequestDispatcher("/board/boardRemoveForm.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("boardNo") == null||request.getParameter("boardPw")==null) {
			response.sendRedirect(request.getContextPath() + "/BoardList");

		} else {
			int boardNo = Integer.parseInt(request.getParameter("boardNo"));
			String boardPw = request.getParameter("boardPw");
			Board board = new Board();
			board.setBoardNo(boardNo);
			board.setBoardPw(boardPw);
			
			boardDao = new BoardDao();
			
			if(boardDao.deleteBoard(board)==1){
				response.sendRedirect(request.getContextPath()+"/BoardList");
	        } else {
				response.sendRedirect(request.getContextPath() + "/BoardRemove?boardNo=" + boardNo);

	        }
		}
	}

}
