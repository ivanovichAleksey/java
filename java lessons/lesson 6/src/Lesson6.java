import java.io.*;

public class Lesson6 {
    public static void main(String[] args) throws Exception {
        /*User user1 = new User();
        User user2 = new User();

        Object o = new Object();
        user1.id = 1;
        user1.name = "Vasya";
        user1.height = 180.5f;
        user2.id = 1;
        System.out.println(user1.toString());

        System.out.println(user2.toString());
        System.out.println(user1.equals(user2));
        System.out.println(user1.hashCode());
        System.out.println(user2.hashCode());*/

        Worker worker1 = new Worker();
        Cleaner cleaner1 = new Cleaner();
        Boss boss1 = new Boss();

        cleaner1.goToWork();
        cleaner1.pay();

        worker1.goToWork();
        worker1.pay();

        boss1.goToWork();
        boss1.pay();

        goToWork(cleaner1);
        goToWork(worker1);
        goToWork(boss1);

        pay(boss1);


        BufferedReader bufferedReader = new BufferedReader(new FileReader(new File("1.txt")));

        String conten = "";
        while (true){
            String s = bufferedReader.readLine();
            if (s == null){
                break;
            }
            conten += s + "\n";

        }
        conten += "Hello ";
        PrintWriter writer = new PrintWriter("1.txt", "UTF-8");

        writer.println(conten);

        writer.close();

    }

    public static void goToWork(IWorker empoyee){
        empoyee.goToWork();
    }
    public static void pay(IWorker empoyee){
        empoyee.pay();
    }
}
