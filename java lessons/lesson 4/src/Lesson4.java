import java.io.IOException;

public class Lesson4 {

    public static void main(String[] args) throws IOException, MyException {

        int[] arr = {1, 3, 8, 2, -5};
        int max = 0;

        for (int i = 1; i < arr.length; i++){
           if (arr[i] > arr[max]){
               max = i;
           }
        }
        System.out.print("максимальное число: ");
        System.out.println(arr[max]);


        /*try {
            int a = 5 / 0;
            arr[10] = 20;

        }
        catch (ArrayIndexOutOfBoundsException e1){
            System.out.println("Вы не можете обратиться к элементу массива с индексом: " + e1.getMessage());
        }
        catch (Exception e){
            System.out.println(e);
        }*/

        Deposite deposite1 = new Deposite();
        deposite1.setPinCode(1234);
        deposite1.add(10000);
        try {
            deposite1.getMoney(10000);
            deposite1.printMyBalance();
        }
        catch (MyException e){
            System.out.println(e.getError());
        }



    }

}
