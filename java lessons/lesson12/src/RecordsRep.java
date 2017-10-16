import javax.swing.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RecordsRep{
    public void addRecord(int id, int score) throws SQLException {
        Connection conn = JdbcConnection.getConnection();
        PreparedStatement ps = conn.prepareStatement("SELECT score FROM records WHERE id_user = ?");
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();
        if(rs.next()){
            int prevRecord = rs.getInt("score");
            JOptionPane.showMessageDialog(null, "Ваш счет: " + score, "Счет", JOptionPane.INFORMATION_MESSAGE);

            if (prevRecord < score){
                ps = conn.prepareStatement("UPDATE records SET score = ?, record_time = NOW() WHERE id_user = ?");
                ps.setInt(1,score);
                ps.setInt(1,id);
                ps.executeUpdate();
            }
        }
        else {
            ps = conn.prepareStatement("INSERT  INTO records(id_user, score, record_time) VALUE (?,?,NOW())");
            ps.setInt(1, id);
            ps.setInt(2, score);
            ps.executeUpdate();
        }

    }
    public ArrayList<Record> getRecords() throws SQLException {
        Connection conn = JdbcConnection.getConnection();
        PreparedStatement ps = conn.prepareStatement("SELECT login, score, record_time FROM records INNER JOIN players ON records.id_user = players.id ORDER BY score DESC");
        ResultSet rs = ps.executeQuery();
        ArrayList<Record> records = new ArrayList<>();

        while (rs.next()){
            Record record = new Record();
            record.login = rs.getString("login");
            record.score = rs.getInt("score");
            record.time = rs.getString("record_time");
            records.add(record);
        }

        return records;
    }
}
