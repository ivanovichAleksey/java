public class MyThread2 extends Thread {
    @Override
    public void run(){
        for (int i = 500000; i < 1000000; i++){
            double d = Math.sin(i) * Math.tan(i * 2) - Math.sqrt(i/2);
        }
    }
}