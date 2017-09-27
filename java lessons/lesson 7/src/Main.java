import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

public class Main {
    public static void main(String[] args) throws IOException, ClassNotFoundException {
        User user1 = new User();
        user1.name = "User 1";
        user1.id = 100;

        User user2 = new User();
        user2.name = "User 101";
        user2.id = 101;

        User[] usersArray = {user1, user2};
        //writeUserToFile(usersArray, "users.txt");
        //showUserToFile("users.txt");

        String str1 = String.valueOf(12);
        //System.out.println(str1);

        float f = Float.parseFloat("12.3f");
        //System.out.println(f * 2);


        ArrayList<Integer> arrayList1 = new  ArrayList<>();

        for (int i = 0; i < 10; i++){
            arrayList1.add(i + 2);
        }
        arrayList1.add(0, 123);

        System.out.println(arrayList1);
        Integer a = 5;
        arrayList1.remove(a);
        System.out.println(arrayList1);
        System.out.println(arrayList1.get(1));
        System.out.println(arrayList1.size());
        System.out.println();

        for (Integer arr: arrayList1){
            System.out.println(arr * arr);
        }

        HashSet<String> hashSet = new HashSet<>();

        hashSet.add("AName");
        hashSet.add("bhello");
        hashSet.add("Cad");


        for (String s: hashSet) {
            System.out.println(s);
        }

        HashMap<String,Integer> map = new HashMap<>();
        map.put("Иванов", 1234567);
        map.put("Петров", 1234568);
        map.put("Петров", 1234560);
        System.out.println(map);

        for (HashMap.Entry<String,Integer> m: map.entrySet()){
            System.out.println(m.getKey() + " " + m.getValue());
        }

        System.out.println(map.get("Иванов"));
        map.remove("Петров");
        System.out.println(map);
    }

    public static void writeUserToFile(User[] users, String fileName) throws IOException {

        ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(fileName));
        for (int i = 0; i < users.length; i++) {
            objectOutputStream.writeObject(users[i]);
        }
        objectOutputStream.close();

    }
    public static void showUserToFile(String fileName) throws IOException, ClassNotFoundException {
        ObjectInputStream objectInputStream = new ObjectInputStream(new FileInputStream(fileName));
        while (true) {
            Object object = null;
            try {
                object = objectInputStream.readObject();
            }
            catch (Exception e){
                break;
            }
            User user = (User) object;
            System.out.print(user.id);
            System.out.println(" " + user.name);
        }
        objectInputStream.close();
    }



}
