package uow.csse.tv.gympe.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

/**
 * Environment Configuration
 *
 * @Author Tab Tu
 * @Update Oct.13 2017
 * @Since 1.0
 */

@Component
public class Const {

    public static String BASE_PATH;

    public static String DATACV_PATH;

    public static String PROFILE_PATH;

    public static String UPLOAD_PATH;

    public static String PASSWORD_KEY = "#j3[*!&@TI@?)a9%z";

    public static String USERNAME_KEY = "#u&b%F)l{2?";

    public static String LOGIN_SESSION_KEY = "USR";

    public static String DES3_KEY = "1z9Iwf97FJs3hW8xcD0Pw4so";

    public static String default_logo="img/logo.jpg";

    public static String userAgent="Mozilla";

    public static String default_Profile = BASE_PATH+"/img/logo.jpg";

    public static String LAST_REFERER = "LAST_REFERER";

    public static int COOKIE_TIMEOUT = 30*24*60*60;

    @Autowired(required = true)
    public void setBasePath(@Value("${tv.base.path}")String basePath) { Const.BASE_PATH = basePath; }

    @Autowired
    public void setDataCVPath(@Value("${tv.data.cv.path}")String dataCVPath) { Const.DATACV_PATH = dataCVPath; }

    @Autowired
    public void setProfilePath(@Value("${tv.profile.path}")String profilePath) { Const.PROFILE_PATH = profilePath; }

    @Autowired
    public void setUploadPath(@Value("${tv.upload.path}")String uploadPath) { Const.UPLOAD_PATH = uploadPath; }

}
