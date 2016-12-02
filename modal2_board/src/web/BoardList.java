package web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Board;
import service.BoardDao;

/**
 * Servlet implementation class BoardList
 */
@WebServlet("/BoardList")
public class BoardList extends HttpServlet {
	private BoardDao boardDao;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int currentPage = 1;
		if (request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		boardDao = new BoardDao();
		int totalRowCount = boardDao.selectTotalBoardCount();
		int pagePerRow = 5;
		int beginRow = (currentPage - 1) * pagePerRow;
		int lastPage = totalRowCount / pagePerRow;
		if (totalRowCount % pagePerRow != 0) {
			lastPage++;
		}
		/*for(int i=0;i<getalm.size();i++)
		 * {
		 *		
		}*/
		List<Board> list = boardDao.selectBoardListPerPage(beginRow, pagePerRow);
		
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("totalRowCount", totalRowCount);
		request.setAttribute("pagePerRow", pagePerRow);
		request.setAttribute("lastPage", lastPage);
		request.setAttribute("list", list);

		request.getRequestDispatcher("/board/boardList.jsp").forward(request, response);
	}

}
