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
        if (balanse >= sum) {
            for (int i = 3; i > 0; i--) {
                System.out.print("Введите пин код: ");
                int pin = Integer.parseInt(reader.readLine());
                if (pin != pinCode) {
                    if (i > 1) {
                        System.out.print("Вы ввели неверный пароль." + "\nУ вас осталось " + (i - 1) + " попытка(и). \n");
                    }
                } else {
                    balanse -= sum;
                    System.out.println("С вашего счета списано " + sum);
                }

                if (pin != pinCode && i == 1) {
                    throw new MyException();
                }
            }
        }
        else {
            System.out.println("У вас недостаточно денег на счету");
        }
    }

    public void printMyBalance(){
        System.out.print("Ваш баланс составляет: ");
        System.out.println(balanse);
    }

}
