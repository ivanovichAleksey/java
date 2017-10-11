import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class QuestionRep  {
    public ArrayList<Question> getQustions() throws SQLException {
        Connection conn = JdbcConnection.getConnection();
        PreparedStatement ps = conn.prepareStatement("SELECT * FROM questions");
        ResultSet result = ps.executeQuery();
        ArrayList<Question> questions = new ArrayList<>();
        while (result.next()){
            Question q = new Question();
            q.id = result.getInt("id");
            q.words = result.getString("worda").split(";");
            q.answer = result.getString("answer");
            q.answer_imj = result.getString("answer_imj");
            questions.add(q);
        }
        return questions;
    }
}
