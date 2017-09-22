public class MyException extends Exception {
    public String getError(){
        return "Вы ввели неверный пароль. Ваша карта заблокирована";
    }
}
