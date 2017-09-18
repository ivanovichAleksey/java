import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class LeapYear {
    public static void main(String[] args) throws IOException {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));

        System.out.println("Введите год: ");
        int year = Integer.parseInt(reader.readLine());
        // проверка
        if ((year % 400 == 0) || (year % 100 != 0 && year % 4 == 0) ){
            System.out.println(year + " год является высокосный");
        }
        else {
            System.out.println(year + " год не является высокосным");
        }
    }
}
