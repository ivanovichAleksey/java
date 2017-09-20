public class Human {
    protected int age;
    public String name;
    protected float height;
    public static int eyeCount = 2;

    public void sleep(int hours){
        System.out.println(name + " sleep " + hours + " hours");
    }
    public void sleep(int hours, int minutes){
        System.out.println(name + " sleep " + hours + " hours and " + minutes + " minutes");
    }

    public void wakeUp(){
        System.out.println("Wake up!");
    }
}
