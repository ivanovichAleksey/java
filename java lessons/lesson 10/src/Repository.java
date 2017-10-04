import java.sql.SQLException;
import java.util.ArrayList;

public interface Repository {
    ArrayList<Object> getAll() throws SQLException;
    void add(Object o) throws SQLException;
    void update(Object o) throws SQLException;
    void remove(Object o) throws SQLException;

}
