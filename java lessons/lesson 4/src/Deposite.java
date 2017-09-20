import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Deposite  {
    private int balanse = 0;
    private int pinCode;


    public void setPinCode(int pinCode){
        this.pinCode = pinCode;
    }

    public void add(int sum){
        balanse +=sum;
    }

    public void getMoney(int sum) throws IOException, MyException {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));

        int pin = Integer.parseInt(reader.readLine());
        if (pin != pinCode){
            throw new MyException();
        }
        balanse -=sum;
    }

    public void printMyBalance(){
        System.out.print("Ваш баланс составляет: ");
        System.out.println(balanse);
    }

}
