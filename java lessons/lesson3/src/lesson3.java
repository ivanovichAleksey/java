public class lesson3 {

    public static void main(String[] args) {
        /*System.out.println(add(5, 6));
        System.out.println(min(5.6, -1.9));
    }
    static int add(int a, int b){
        int c = a + b;
        return c;
    }
    static double min(double a, double b){
        if (a < b){
            return a;
        }
        else {
            return b;
        }*/
        Human human1 = new Human();
        human1.name = "Vasya";
        human1.sleep(5);
        System.out.println(human1.name);
        human1.eyeCount = 3;
        Human.eyeCount = 2;

        Human human2 = human1;
        human2.name = "Толя";
        System.out.println(human2.name);
        System.out.println(human1.name);

        Woman woman1 = new Woman();
        woman1.name = "Катя";
        woman1.cook();

        Man man1 = new Man("Женя");
        man1.cook();


    }
}
