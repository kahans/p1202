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
 * Servlet implementation class BoardModify
 */
@WebServlet("/BoardModify")
public class BoardModify extends HttpServlet {
	private BoardDao boardDao;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("boardNo") == null) {
			response.sendRedirect(request.getContextPath() + "/BoardList");
		} else {
			int boardNo = Integer.parseInt(request.getParameter("boardNo"));

			boardDao = new BoardDao();

			Board board = boardDao.selectBoardByKey(boardNo);

			request.setAttribute("board", board);

			request.getRequestDispatcher("/board/boardModifyForm.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");

		if (request.getParameter("boardNo") == null || request.getParameter("boardPw") == null) {
			response.sendRedirect(request.getContextPath() + "/BoardView");
		} else {
			int boardNo = Integer.parseInt(request.getParameter("boardNo"));
			String boardTitle = request.getParameter("boardTitle");
			String boardContent = request.getParameter("boardContent");
			String boardPw = request.getParameter("boardPw");
			Board board = new Board();
			board.setBoardPw(boardPw);
			board.setBoardNo(boardNo);
			board.setBoardTitle(boardTitle);
			board.setBoardContent(boardContent);

			boardDao = new BoardDao();
			if (boardDao.updateBoard(board) == 1) {
				response.sendRedirect(request.getContextPath() + "/BoardView?boardNo=" + boardNo);

			} else {
				response.sendRedirect(request.getContextPath() + "/BoardView?boardNo=" + boardNo);

			}

		}
	}

}
