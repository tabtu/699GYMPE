package uow.csse.tv.gympe.model;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Message Entity
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Feb.01 2018
 * @since	1.0
 *
 */

@Entity(name = "Message")
@Table(name = "tv_message")
public class Message extends Entitys implements Serializable {

    @EmbeddedId
    private Msg msgid;
    @Column(nullable = false)
    private boolean isread;
    @Column(nullable = false)
    private String text;

    public Message() {

    }

    public Message(Msg msd, String txt) {
        this.msgid = msd;
        this.text = txt;
        this.isread = false;
    }

    public Msg getMsgid() {
        return msgid;
    }

    public void setMsgid(Msg msgid) {
        this.msgid = msgid;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public boolean getIsread() {
        return isread;
    }

    public void setIsread(boolean isread) {
        this.isread = isread;
    }
}