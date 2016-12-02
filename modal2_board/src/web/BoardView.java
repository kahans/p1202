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
 * Servlet implementation class BoardView
 */
@WebServlet("/BoardView")
public class BoardView extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("boardNo") == null) {
			response.sendRedirect(request.getContextPath() + "/BoardList");
		} else {
			int boardNo = Integer.parseInt(request.getParameter("boardNo"));
			BoardDao boardDao = new BoardDao();
			Board board = boardDao.selectBoardByKey(boardNo);

			request.setAttribute("board", board);

			request.getRequestDispatcher("/board/boardView.jsp").forward(request, response);
		}
	}

}
