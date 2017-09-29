import javax.xml.crypto.Data;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class Main {

    public static int k = 0;

    public static void main(String[] args) throws InterruptedException {
        //ouble d = Math.round(12.5);

        /*long t = System.currentTimeMillis();

        for (int i = 0; i < 1000000; i++){
            double d = Math.sin(i) * Math.tan(i * 2) - Math.sqrt(i/2);
        }
        MyThread mt = new MyThread();
        MyThread2 mt2 = new MyThread2();
        mt.start();
        mt2.start();
        mt.join();
        mt2.join();
        long t1 = System.currentTimeMillis();
        System.out.println(t1 - t);*/

/*
        Thread t1 = new Thread(new Runnable() {
            @Override
            public void run() {
                for (int i = 0; i < 100000000; i++){
                    doSome(1);
                }
            }
        });
        Thread t2 = new Thread(new Runnable() {
            @Override
            public void run() {
                for (int i = 0; i < 100000000; i++){
                    doSome(-1);
                }
            }
        });

        t1.start();
        t2.start();
        t1.join();
        t2.join();

        System.out.println(k);*/

      /*  Date data = new Date();
        data.setTime(1135497564548L);
        System.out.println(data);
        Date data1 = new Date();
        System.out.println(data.before(data1));
        System.out.println(data1.after(data));

        SimpleDateFormat format = new SimpleDateFormat("'Today 'dd.MM.YYYY hh:mm:ss EEE");
        System.out.println(format.format(data));
*/

        Calendar calendar = Calendar.getInstance();
        calendar.add(Calendar.MONTH, 4);
        System.out.println(calendar.getTime());
        calendar.set(Calendar.DAY_OF_WEEK, 12);
        System.out.println(calendar.getTime());
        System.out.println(calendar.get(Calendar.YEAR));

        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        System.out.println(gregorianCalendar.isLeapYear(2000));

    }

    synchronized public static void doSome(int d){
        k += d;
    }

}
