package uow.csse.tv.gympe.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import uow.csse.tv.gympe.model.*;
import uow.csse.tv.gympe.service.AdminService;
import uow.csse.tv.gympe.service.LoginService;
import uow.csse.tv.gympe.service.SystService;
import uow.csse.tv.gympe.service.UserService;

import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@RestController
public class SetupView {
    private DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    @Autowired
    private AdminService adminService;

    @Autowired
    private SystService systService;

    @Autowired
    private LoginService loginService;

    @GetMapping(value = "/setup")
    public String getSettingUp() {
        try {
            String[][] ct = {{"1", "贵阳", "0"}};
            for (int i = 0; i < ct.length; i++) {
                City tmp = new City();
                tmp.setCity_id(Integer.parseInt(ct[i][0]));
                tmp.setName(ct[i][1]);
                tmp.setSort(Integer.parseInt(ct[i][2]));
                adminService.saveCity(tmp);
            }
            String[][] dst = {{"1", "云岩区", "0", "1"}, {"2", "南明区", "1", "1"}, {"3", "花溪区", "2", "1"}, {"4", "乌当区", "3", "1"}, {"5", "白云区", "4", "1"}, {"6", "观山湖区", "5", "1"}, {"7", "贵安新区", "6", "1"}, {"8", "开阳县", "7", "1"}, {"9", "息烽县", "8", "1"}, {"10", "修文县", "9", "1"}, {"11", "清镇市", "10", "1"}};
            for (int i = 0; i < dst.length; i++) {
                District tmp = new District();
                tmp.setDistrict_id(Integer.parseInt(dst[i][0]));
                tmp.setName(dst[i][1]);
                tmp.setSort(Integer.parseInt(dst[i][2]));
                tmp.setCity(systService.findCity(Integer.parseInt(dst[i][3])));
                adminService.saveDistrict(tmp);
            }
            String[][] ca = {{"1", "综合", "0"}, {"2", "球类", "1"}, {"3", "棋牌", "2"}};
            for (int i = 0; i < ca.length; i++) {
                Category tmp = new Category();
                tmp.setCate_id(Integer.parseInt(ca[i][0]));
                tmp.setName(ca[i][1]);
                tmp.setSort(Integer.parseInt(ca[i][2]));
                adminService.saveCategory(tmp);
            }
            String[][] spt = {{"1", "中长跑", "running", "0", "tv_running", "1"}, {"2", "足球", "soccer", "0", "tv_soccer", "2"}, {"3", "篮球", "basketball", "0", "tv_basketball", "2"}, {"4", "网球", "tennis", "0", "tv_tennis", "2"}, {"5", "射击", "shotting", "0", "tv_shotting", "1"}, {"6", "竞走", "walking", "0", "tv_walking", "1"}, {"7", "游泳", "swimming", "0", "tv_swimming", "2"}, {"8", "射箭", "archery", "0", "tv_archery", "1"}, {"9", "摔跤", "wrestling", "0", "tv_wrestling", "1"}, {"10", "短跨", "sprinter", "0", "tv_sprinter", "1"}, {"11", "乒乓球", "tabletennis", "0", "tv_tabletennis", "2"}, {"12", "高尔夫", "golf", "0", "tv_golf", "2"}, {"13", "羽毛球", "badminton", "0", "tv_badminton", "2"}, {"14", "国际象棋", "chess", "0", "tv_chess", "3"}, {"15", "中国象棋", "chinesechess", "0", "tv_chinesechess", "3"}, {"16", "围棋", "weiqi", "0", "tv_weiqi", "3"}};
            for (int i = 0; i < spt.length; i++) {
                Sport tmp = new Sport();
                tmp.setSport_id(Integer.parseInt(spt[i][0]));
                tmp.setCname(spt[i][1]);
                tmp.setName(spt[i][2]);
                tmp.setSort(Integer.parseInt(spt[i][3]));
                tmp.setTablename(spt[i][4]);
                tmp.setCategory(systService.findCategory(Integer.parseInt(spt[i][5])));
                adminService.saveSport(tmp);
            }
            String[][] cu = {{"1", "金仓路5号", "2018-02-09 17:15:40", null, "1", "贵阳实验二中", null, "0", "{0851}86622267", "2018-02-09 17:16:16", "1"}, {"2", "中华北路100号", "2018-02-09 17:16:35", null, "1", "贵阳七中中北校区", null, "1", "{0851}86504014", "2018-02-09 17:16:49", "1"}, {"3", "北京路27号", "2018-02-09 17:17:14", null, null, "贵阳海伦青少年篮球俱乐部", null, "0", null, "2018-02-09 17:17:36", "1"}, {"4", "体育运动训练馆", "2018-02-09 17:18:36", null, null, "贵州米丘青少年体育运动俱乐部", null, "1", null, "2018-02-09 17:18:41", "1"}};
            for (int i = 0; i < cu.length; i++) {
                Club tmp = new Club();
                tmp.setClub_id(Integer.parseInt(cu[i][0]));
                tmp.setAddress(cu[i][1]);
                tmp.setCreateDate(format.parse(cu[i][2]));
                tmp.setIsSchool(Boolean.parseBoolean(cu[i][4]));
                tmp.setName(cu[i][5]);
                tmp.setSort(Integer.parseInt(cu[i][7]));
                tmp.setTel(cu[i][8]);
                tmp.setDistrict(systService.findDistrict(Integer.parseInt(cu[i][10])));
                adminService.saveClub(tmp);
            }
            String[][] ve = {{"1", "北京路27号", "2018-02-09 17:10:07", "六广门体育场", null, "1"}, {"2", "宝山北路116号", "2018-02-09 17:11:29", "师大体育活动中心", "{0851}86726111", "1"}};
            for (int i = 0; i < ve.length; i++) {
                Venue tmp = new Venue();
                tmp.setVenue_id(Integer.parseInt(ve[i][0]));
                tmp.setAddress(ve[i][1]);
                tmp.setCreateDate(format.parse(ve[i][2]));
                tmp.setName(ve[i][3]);
                tmp.setTel(ve[i][4]);
                tmp.setDistrict(systService.findDistrict(Integer.parseInt(ve[i][5])));
                adminService.saveVenue(tmp);
            }
            String[][] ur = {{"ccy", "123", "陈春燕"}, {"tml", "123", "唐曼丽"}, {"wsw", "123", "魏社委"}, {"tab", "123", "Tab Tu"}};
            for (int i = 0; i < ur.length; i++) {
                User u = new User();
                u.setUsername(ur[i][0]);
                u.setPassword(ur[i][1]);
                u.setName(ur[i][2]);
                loginService.register(u);
            }

            return "finish";
        } catch (Exception e) {
            return e.toString();
        }
    }
}
