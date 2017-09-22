import java.io.File;
import java.io.IOException;

public class Lesson5 {
    public static void main(String[] args) throws IOException {
        File f = new File("1.txt");
        if (!f.exists()){
            f.createNewFile();
        }
        if (f.canWrite()){
            System.out.println("Фаил доступен для записи");
        }
        else {
            System.out.println("Фаил не доступен для записи");
        }
        if (f.isHidden()){
            System.out.println("Фаил скрыт");
        }
        else {
            System.out.println("Фаил не скрыт");
        }
        //f.delete();
        System.out.println(f.getAbsolutePath());
        System.out.println(f.getFreeSpace());
        if (f.isDirectory()){
            System.out.println("это папка");
        }
        else {
            System.out.println("это фаил");
        }
        System.out.println("фаил изменен " + f.lastModified());
        System.out.println("Размер файла " + f.length());
        File f2 = new File("2.txt");
        /*if (!f.renameTo(f2)){
            System.out.println("не удалось переименовать");
        }
        System.out.println(f.getAbsolutePath());*/
        f.setWritable(true);
        f.setLastModified(1);
        System.out.println("\n");
        File dir = new File("test\\res\\values\\1.txt");
        if (!dir.exists()){
            dir.mkdirs();
        }
        /*File[] files = dir.listFiles();
        for (int i = 0; i < files.length; i++){
            files[i].setWritable(false);
            System.out.println(files[i]);
        }*/
        String s = "Hello world!";
        /*s = s.concat(" Hi");
        System.out.println(s);
        s = "<" + s + ">";
        System.out.println(s);
        if (s.indexOf("!") >= 0){
            System.out.println("В строке есть такой символ");
        }
        else {
            System.out.println("Символа в строке нет");
        }*/
        String a = "world!";

        String format = String.format("My name is %s. \n\tI have %d years old. My height is %.3f cm", "Name", 20, 123.456);
        System.out.println(format);



    }
}
