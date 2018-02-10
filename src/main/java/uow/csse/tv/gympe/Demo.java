package uow.csse.tv.gympe;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Demo {
    public static void main(String[] args) {
        try {
            DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date dt = format.parse("2018-02-09 17:15:40");
            System.out.print(dt.toString());
        } catch (Exception e) {

        }
    }
}
