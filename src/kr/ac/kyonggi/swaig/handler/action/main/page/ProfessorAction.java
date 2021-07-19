package kr.ac.kyonggi.swaig.handler.action.main.page;

import com.google.gson.Gson;
import kr.ac.kyonggi.swaig.common.controller.CustomAction;
import kr.ac.kyonggi.swaig.handler.action.main.page.ProfessorAction;
import kr.ac.kyonggi.swaig.handler.dao.settings.ProfessorDAO;
import kr.ac.kyonggi.swaig.handler.dao.settings.HomeDAO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProfessorAction extends CustomAction  {

	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		super.execute(request,response);
		Gson gson = new Gson();
		String major=request.getParameter("major");
		String num=request.getParameter("num");

	    request.setAttribute("getProfessorlist", gson.toJson(ProfessorDAO.getInstance().getProfessor()));

		request.setAttribute("jsp", gson.toJson("professor")); //information.jsp
		return "RequestDispatcher:jsp/page/page.jsp";
	}
}