package uow.csse.tv.gympe.model;

import javax.persistence.Embeddable;
import java.io.Serializable;

/**
 * Message Entity
 *
 * @author 	Tab Tu
 * @date	2018-01-31
 * @update  Tab Tu on Feb.01 2018
 * @since	1.0
 *
 */

@Embeddable
public class Msg implements Serializable {

    private long sender;
    private long receiver;
    private long sendtime;
    private long receivetime;

    public Msg() {

    }

    public Msg(long s, long r, long st, long rt) {
        this.sender = s;
        this.receiver = r;
        this.sendtime = st;
        this.receivetime = rt;
    }

    public long getSender() {
        return sender;
    }

    public void setSender(long sender) {
        this.sender = sender;
    }

    public long getReceiver() {
        return receiver;
    }

    public void setReceiver(long receiver) {
        this.receiver = receiver;
    }

    public long getSendtime() {
        return sendtime;
    }

    public void setSendtime(long sendtime) {
        this.sendtime = sendtime;
    }

    public long getReceivetime() {
        return receivetime;
    }

    public void setReceivetime(long receivetime) {
        this.receivetime = receivetime;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Msg other = (Msg) obj;
        if(sender == other.sender && receiver == other.receiver &&
                sendtime == other.sendtime && receivetime == other.receivetime) {
            return true;
        } else {
            return false;
        }
    }
}

