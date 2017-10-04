import java.sql.SQLException;
import java.util.ArrayList;

public class Main {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        JdbcConnection.init();
        SuppliersRep sRep = new SuppliersRep();
        ArrayList<Object> suppliers = sRep.getAll();
        System.out.println(suppliers);
        Suppliers supp = new Suppliers();
        supp.data_reg = "2000-05-10";
        supp.name = "Vasya";
        supp.adress = "qwertyui";
        supp.phone = "+354984613";
        supp.email = "updatetest@gmail.com";
        supp.id = 10;
        //sRep.add(supp);
        //sRep.update(supp);
        sRep.remove(supp);
    }
}
