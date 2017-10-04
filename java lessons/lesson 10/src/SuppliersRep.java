import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class SuppliersRep implements Repository {

    @Override
    public ArrayList<Object> getAll() throws SQLException {
        PreparedStatement ps = JdbcConnection.getConnection().prepareStatement("SELECT * FROM suppliers");
        ResultSet result = ps.executeQuery();

        ArrayList<Object> list = new ArrayList<>();
        while (result.next()){
            Suppliers supp = new Suppliers();
            supp.id = result.getInt("id");
            supp.data_reg = result.getString("data_reg");
            supp.name = result.getString("name");
            supp.adress = result.getString("adress");
            supp.phone = result.getString("phone");
            supp.email = result.getString("email");
            list.add(supp);
        }

        return list;
    }

    @Override
    public void add(Object o) throws SQLException {
        Suppliers supp = (Suppliers) o;
        PreparedStatement ps = JdbcConnection.getConnection().prepareStatement(
                "INSERT INTO suppliers (data_reg, `name`, adress, phone, email) " +
                "VALUE (?, ?, ?, ?, ?)");
        ps.setString(1,supp.data_reg);
        ps.setString(2,supp.name);
        ps.setString(3,supp.adress);
        ps.setString(4,supp.phone);
        ps.setString(5,supp.email);
        ps.executeUpdate();

    }

    @Override
    public void update(Object o) throws SQLException {
        Suppliers supp = (Suppliers) o;
        PreparedStatement ps = JdbcConnection.getConnection().prepareStatement(
                "UPDATE suppliers SET data_reg = ?, `name` = ?, adress = ?, phone = ?, email = ? " +
                        "WHERE id = ?");
        ps.setString(1, supp.data_reg);
        ps.setString(2,supp.name);
        ps.setString(3,supp.adress);
        ps.setString(4,supp.phone);
        ps.setString(5,supp.email);
        ps.setInt(6, supp.id);
        ps.executeUpdate();

    }

    @Override
    public void remove(Object o) throws SQLException {
        Suppliers supp = (Suppliers) o;
        PreparedStatement ps = JdbcConnection.getConnection().prepareStatement(
                "DELETE FROM suppliers WHERE id = ?");
        ps.setInt(1, supp.id);
        ps.executeUpdate();

    }
}
