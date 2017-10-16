import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PlayersRep {
    public static int playerId;
    public void login(String login,String password) throws Exception {
        Connection conn = JdbcConnection.getConnection();
        PreparedStatement ps = conn.prepareStatement("SELECT id FROM players WHERE login = ? and pass_hash = ?");
        ps.setString(1, login);
        ps.setString(2, password);

        ResultSet result = ps.executeQuery();
        if (result.next() == false){
            throw new Exception("Неверный логин или пароль");
        }
        PlayersRep.playerId = result.getInt("id");

    }
    public void registr (Player p) throws Exception{
        Connection conn = JdbcConnection.getConnection();
        PreparedStatement ps = conn.prepareStatement("INSERT INTO players (login , pass_hash, age) VALUE (?, ?, ?)");
        ps.setString(1, p.login);
        ps.setString(2, p.pass_hash);
        ps.setInt(3, p.age);
        ps.executeUpdate();
        ResultSet result =  ps.getGeneratedKeys();
        PlayersRep.playerId = result.getInt(1);
    }

}
