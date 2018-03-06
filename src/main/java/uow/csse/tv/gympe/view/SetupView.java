package uow.csse.tv.gympe.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import uow.csse.tv.gympe.model.*;
import uow.csse.tv.gympe.service.AdminService;
import uow.csse.tv.gympe.service.LoginService;
import uow.csse.tv.gympe.service.SystemService;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

@RestController
public class SetupView {
    private DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    @Autowired
    private AdminService adminService;

    @Autowired
    private SystemService systemService;

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
                tmp.setId(Integer.parseInt(dst[i][0]));
                tmp.setName(dst[i][1]);
                tmp.setSort(Integer.parseInt(dst[i][2]));
                tmp.setCity(systemService.getCity(Integer.parseInt(dst[i][3])));
                adminService.saveDistrict(tmp);
            }
            String[][] ca = {{"1", "综合", "0"}, {"2", "球类", "1"}, {"3", "棋牌", "2"}};
            for (int i = 0; i < ca.length; i++) {
                Category tmp = new Category();
                tmp.setId(Integer.parseInt(ca[i][0]));
                tmp.setName(ca[i][1]);
                tmp.setSort(Integer.parseInt(ca[i][2]));
                adminService.saveCategory(tmp);
            }
            String[][] spt = {{"1", "中长跑", "running", "100", "tv_running", "1"}, {"2", "足球", "soccer", "201", "tv_soccer", "2"}, {"3", "篮球", "basketball", "202", "tv_basketball", "2"}, {"4", "网球", "tennis", "200", "tv_tennis", "2"}, {"5", "射击", "shotting", "102", "tv_shotting", "1"}, {"6", "竞走", "walking", "103", "tv_walking", "1"}, {"7", "游泳", "swimming", "104", "tv_swimming", "1"}, {"8", "射箭", "archery", "105", "tv_archery", "1"}, {"9", "摔跤", "wrestling", "106", "tv_wrestling", "1"}, {"10", "短跨", "sprinter", "107", "tv_sprinter", "1"}, {"11", "乒乓球", "tabletennis", "203", "tv_tabletennis", "2"}, {"12", "高尔夫", "golf", "204", "tv_golf", "2"}, {"13", "羽毛球", "badminton", "205", "tv_badminton", "2"}, {"14", "国际象棋", "chess", "301", "tv_chess", "3"}, {"15", "中国象棋", "chinesechess", "300", "tv_chinesechess", "3"}, {"16", "围棋", "weiqi", "302", "tv_weiqi", "3"}};
            for (int i = 0; i < spt.length; i++) {
                Sport tmp = new Sport();
                tmp.setId(Integer.parseInt(spt[i][0]));
                tmp.setCname(spt[i][1]);
                tmp.setName(spt[i][2]);
                tmp.setSort(Integer.parseInt(spt[i][3]));
                tmp.setTablename(spt[i][4]);
                tmp.setCategory(systemService.getCategory(Integer.parseInt(spt[i][5])));
                adminService.saveSport(tmp);
            }
            String[][] ve = {{"1", "北京路27号", "2018-02-09 17:10:07", "六广门体育场", null, "1"}, {"2", "宝山北路116号", "2018-02-09 17:11:29", "师大体育活动中心", "{0851}86726111", "1"}};
            for (int i = 0; i < ve.length; i++) {
                Venue tmp = new Venue();
                tmp.setId(Integer.parseInt(ve[i][0]));
                tmp.setAddress(ve[i][1]);
                tmp.setCreatedate(format.parse(ve[i][2]));
                tmp.setName(ve[i][3]);
                tmp.setTel(ve[i][4]);
                tmp.setDistrict(systemService.getDistrict(Integer.parseInt(ve[i][5])));
                adminService.saveVenue(tmp);
            }
            String[][] cu = {{"1", "金仓路5号", "2018-02-09 17:15:40", null, "1", "贵阳实验二中", null, "0", "0851-86622267", "2018-02-09 17:16:16", "1"}, {"2", "中华北路100号", "2018-02-09 17:16:35", null, "1", "贵阳七中中北校区", null, "1", "{0851}86504014", "2018-02-09 17:16:49", "1"}, {"3", "北京路27号", "2018-02-09 17:17:14", null, null, "贵阳海伦青少年篮球俱乐部", null, "0", null, "2018-02-09 17:17:36", "1"}, {"4", "体育运动训练馆", "2018-02-09 17:18:36", null, null, "贵州米丘青少年体育运动俱乐部", null, "1", null, "2018-02-09 17:18:41", "1"}};
            for (int i = 0; i < cu.length; i++) {
                Club tmp = new Club();
                tmp.setId(Integer.parseInt(cu[i][0]));
                tmp.setAddress(cu[i][1]);
                tmp.setCreatedate(format.parse(cu[i][2]));
                tmp.setSchool(Boolean.parseBoolean(cu[i][4]));
                tmp.setName(cu[i][5]);
                tmp.setSort(Integer.parseInt(cu[i][7]));
                tmp.setTel(cu[i][8]);
                tmp.setDistrict(systemService.getDistrict(Integer.parseInt(cu[i][10])));
                adminService.saveClub(tmp);
            }
            String[][] ur = {
                    {"tab", "123", "Tab"},
                    {"vian", "123", "Vian"},
                    {"david", "123", "David"},
                    {"aaron", "123", "Aaron"},
                    {"abbott", "123", "Abbott"},
                    {"leonard", "123", "Leonard"},
                    {"emma", "123", "Emma"},
                    {"gloria", "123", "Gloria"},
                    {"jessie", "123", "Jessie"},
                    {"anne", "123", "Anne"},
                    {"bella", "123", "Bella"},
                    {"sophia", "123", "Sophia"},
                    {"lambert", "123", "Lambert"},
                    {"larson", "123", "Larson"},
                    {"lucas", "123", "Lucas"},
                    {"liam", "123", "Liam"},
                    {"babur", "123", "Babur"},
                    {"baker", "123", "Baker"},
                    {"calvert", "123", "Calvert"},
                    {"campbell", "123", "Campbell"},
                    {"carlson", "123", "Carson"},
                    {"carroll", "123", "Carroll"},
                    {"daniel", "123", "Daniel"},
                    {"danny", "123", "Danny"},
                    {"farrar", "123", "Farrar"},
                    {"felton", "123", "Felton"},
                    {"ferdinand", "123", "Ferdinand"},
                    {"halley", "123", "Halley"},
                    {"hank", "123", "Hank"},
                    {"hanson", "123", "Hanson"},
                    {"hamilton", "123", "Hamilton"},
                    {"ivy", "123", "Ivy"},
                    {"jackson", "123", "Jacoson"},
                    {"jake", "123", "Jake"},
                    {"james", "123", "James"},
                    {"jarrett", "123", "Jarrett"},
                    {"ken", "123", "Ken"},
                    {"kendrick", "123", "Kendrick"},
                    {"mac", "123", "Mac"},
                    {"magee", "123", "Magee"},
                    {"malcom", "123", "Malcom"},
                    {"nash", "123", "Nash"},
                    {"nathaniel", "123", "Nathaniel"},
                    {"napoleon", "123", "Napoleon"},
                    {"owen", "123", "Owen"},
                    {"una", "123", "Una"},
                    {"tony", "123", "Tony"},
                    {"parrish", "123", "Parrish"},
                    {"palmer", "123", "Palmer"},
                    {"quentin", "123", "Quentin"},
                    {"randall", "123", "Randall"},
                    {"randolph", "123", "Randolph"},
                    {"sammie", "123", "Sammie"},
                    {"sanderson", "123", "Sanderson"},
                    {"vivian", "123", "Vivian"},
                    {"walker", "123", "Walker"},
                    {"walton", "123", "Walton"},
                    {"warner", "123", "Warner"},
                    {"xavier", "123", "Xavier"},
                    {"yates", "123", "Yates"},
                    {"zachary", "123", "Zachary"},
                    {"zack", "123", "Zack"},
            };
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
