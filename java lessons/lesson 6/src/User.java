import com.sun.javafx.binding.StringFormatter;

public class User {
    public int id;
    public String name;
    public float height;

    @Override
    public boolean equals(Object obj) {
        User user2 = (User) obj;

        return (this.id == user2.id);
    }
    @Override
    public int hashCode(){


        return 1;
    }
    @Override
    public String toString() {
        return String.format("[%d] Name: %s, height: %.3f", id, name, height);
    }
   // public User(){}
}
