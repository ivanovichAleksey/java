import com.sun.javafx.binding.StringFormatter;

public class Record {
    public String login;
    public int score;
    public String time;

    @Override
    public String toString(){
        String s = String.format("[%s]\t %S:\t  %d\t\n",time, login, score);

        return s;
    }
}
