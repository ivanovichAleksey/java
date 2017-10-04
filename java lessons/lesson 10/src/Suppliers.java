public class Suppliers {
    public int id;
    public String data_reg;
    public String name;
    public String adress;
    public String phone;
    public String email;

    @Override
    public String toString(){
        String s = String.format("\nid: %d, data_reg: %s, name: %s, adress: %s, phone: %s, email: %s",
                id, data_reg, name, adress, phone, email);
        return s;
    }



}
