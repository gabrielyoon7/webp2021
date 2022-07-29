package kr.ac.kyonggi.swaig.handler.action.main;

import com.google.gson.Gson;
import kr.ac.kyonggi.swaig.common.controller.Action;
import kr.ac.kyonggi.swaig.common.controller.CustomAction;
import kr.ac.kyonggi.swaig.handler.dao.settings.AdminDAO;
import kr.ac.kyonggi.swaig.handler.dao.settings.BBSDAO;
import kr.ac.kyonggi.swaig.handler.dao.settings.HomeDAO;
import kr.ac.kyonggi.swaig.handler.dao.settings.RegisterDAO;
import kr.ac.kyonggi.swaig.handler.dao.tutorial.TutorialDAO;
import kr.ac.kyonggi.swaig.handler.dto.user.UserDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MainAction extends CustomAction {
    /**
     * main.jsp를 띄워줍니다.
     * */
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        super.execute(request,response);
        Gson gson = new Gson();
        UserDTO user = gson.fromJson((String) request.getSession().getAttribute("user"), UserDTO.class);
        String major=request.getParameter("major");
        if(major==null){
            major="main";
        }
        String num=request.getParameter("num");
        request.setAttribute("scheduleAllInfo", gson.toJson(AdminDAO.getInstance().getSchedule()));
        request.setAttribute("slider", gson.toJson(AdminDAO.getInstance().getSlider()));
        request.setAttribute("bbs11", gson.toJson(BBSDAO.getInstance().getBBSList("11")));
//        request.setAttribute("bbs52", gson.toJson(BBSDAO.getInstance().getBBSList("52")));
        if (user != null && user.sub_major != "-"){
            request.setAttribute("bbs52", gson.toJson(BBSDAO.getInstance().getMajorBBSList(user.sub_major.split("-/-/-")[0], "52")));
            request.setAttribute("bbs54", gson.toJson(BBSDAO.getInstance().getMajorBBSList(user.sub_major.split("-/-/-")[0], "54")));
        }
//        BBSDAO.getInstance().getMajorBBSList(user.sub_major.split("<br>")[0], num)
//        request.setAttribute("bbs23", gson.toJson(BBSDAO.getInstance().getBBSList("23")));
        request.setAttribute("getAllMajor", gson.toJson(HomeDAO.getInstance().getAllMajor()));

        request.setAttribute("bbs12", gson.toJson(BBSDAO.getInstance().getBBSList("12")));
        request.setAttribute("bbs31", gson.toJson(BBSDAO.getInstance().getBBSList("31")));
        request.setAttribute("registerAllInfo",gson.toJson(RegisterDAO.getInstance().getRegisterList()));
        request.setAttribute("favorite_menu", gson.toJson(HomeDAO.getInstance().getFavoriteMenu()));
        return "RequestDispatcher:jsp/main/main.jsp";
    }
}
