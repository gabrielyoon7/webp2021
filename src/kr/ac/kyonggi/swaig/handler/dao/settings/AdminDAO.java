package kr.ac.kyonggi.swaig.handler.dao.settings;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import kr.ac.kyonggi.swaig.common.sql.Config;
import kr.ac.kyonggi.swaig.handler.dto.settings.ScheduleDTO;
import kr.ac.kyonggi.swaig.handler.dto.settings.SliderDTO;
import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapListHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class AdminDAO {
    public static AdminDAO it;

    public static AdminDAO getInstance() { //인스턴스 생성
        if (it == null)
            it = new AdminDAO();
        return it;
    }

    public String addMajor(String data) {
        String arr[] = data.split("-/-/-"); //major_id+'-/-/-'+major_name+'/-/-'+major_color1+'/-/-'+major_color2+'/-/-'+major_color3;
        String major_id = arr[0];
        String major_name = arr[1];
        String major_color1 = arr[2];
        String major_color2 = arr[3];
        String major_color3 = arr[4];
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            queryRunner.update(conn,"INSERT INTO major(major_id,major_name,major_color1,major_color2,major_color3) VALUE(?,?,?,?,?);", major_id,major_name,major_color1,major_color2,major_color3);
        } catch(SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
        return "success";
    }

    public String modifyMajor(String data) {
        String arr[] = data.split("-/-/-"); // target_oid+'-/-/-'+major_name+'-/-/-'+major_color1+'-/-/-'+major_color2+'-/-/-'+major_color3;
        String target_oid = arr[0];
//        String major_id = arr[1];
        String major_name = arr[1];
        String major_color1 = arr[2];
        String major_color2 = arr[3];
        String major_color3 = arr[4];
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            queryRunner.update(conn,"UPDATE major SET major_name=?,major_color1=?,major_color2=?,major_color3=? WHERE oid=?;", major_name,major_color1,major_color2,major_color3, target_oid);
        } catch(SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
        return "success";

    }

    public ArrayList<ScheduleDTO> getSchedule() {
        List<Map<String, Object>> listOfMaps = null;
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            listOfMaps = queryRunner.query(conn, "SELECT * FROM `schedule` ORDER BY `date` ASC;", new MapListHandler());
//            System.out.println(listOfMaps);
        } catch (SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
        Gson gson = new Gson();
        ArrayList<ScheduleDTO> selectedList = gson.fromJson(gson.toJson(listOfMaps), new TypeToken<List<ScheduleDTO>>() {}.getType());
//        System.out.println(selectedList);
        return selectedList;
    }

    public String modifySchedule(String data) {
        String arr[] = data.split("-/-/-"); // target_id+'-/-/-'+date+'-/-/-'+content;
        String schedule_id = arr[0];
        String schedule_date = arr[1];
        String schedule_content = arr[2];
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            queryRunner.update(conn,"UPDATE schedule SET date=?, content=? WHERE id=?;", schedule_date, schedule_content, schedule_id);
        } catch(SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
        return "success";
    }

    public String addSchedule(String data) {
        String arr[] = data.split("-/-/-"); // date+'-/-/-'+content;
        String schedule_date = arr[0];
        String schedule_content = arr[1];
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            queryRunner.update(conn,"INSERT INTO schedule(date, content) VALUE(?,?);", schedule_date,schedule_content);
        } catch(SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
        return "success";
    }

    public String updateSchedule() {
        Date today = new Date();
        Connection conn = Config.getInstance().sqlLogin();
        ArrayList<ScheduleDTO> selectedList = this.getSchedule();
        try {
            QueryRunner queryRunner = new QueryRunner();
            for (ScheduleDTO S : selectedList) {
//                System.out.println(S.content);
                if (((S.getDate().getTime() - today.getTime()) / (24 * 60 * 60 * 1000)) < 0) {
                    queryRunner.update(conn, "DELETE FROM `schedule` WHERE `id`=?;", S.id);
                }
            }
        } catch (SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
        return "success";
    }

    public String deleteSchedule(String data) {
        String arr[] = data.split("-/-/-"); // id+'-/-/-'+date+'-/-/-'+content;
        String schedule_id = arr[0];
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            queryRunner.update(conn,"DELETE FROM `schedule` WHERE `id`=?;", schedule_id);
        } catch (SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
        return "success";
    }

    public ArrayList<SliderDTO> getSlider() {
        List<Map<String, Object>> listOfMaps = null;
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            listOfMaps = queryRunner.query(conn, "SELECT * FROM slider ORDER BY id DESC", new MapListHandler());
        } catch (SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
        Gson gson = new Gson();
        ArrayList<SliderDTO> selectedList = gson.fromJson(gson.toJson(listOfMaps), new TypeToken<List<SliderDTO>>() {}.getType());
        return selectedList;
    }

    public String addSlider(String data) {
        String arr[] = data.split("-/-/-"); // slider_img+'-/-/-'+slider_title+'-/-/-'+slider_content
        String slider_img = arr[0];
        String slider_title = arr[1];
        String slider_content = arr[2];
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            queryRunner.update(conn,"INSERT INTO slider(slider_img, slider_title, slider_content) VALUE(?,?,?);", slider_img,slider_title,slider_content);
        } catch(SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
        return "success";
    }
}