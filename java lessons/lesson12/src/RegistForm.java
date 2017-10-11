import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.SQLIntegrityConstraintViolationException;

public class RegistForm extends JFrame{
    private JPanel panel;
    private JTextField ageTextField;
    private JButton registrationButton;
    private JTextField loginTextFild;
    private JPasswordField passwordField;
    private JPasswordField repPasswordField;

    public RegistForm(){
        setLocation(300, 300);
        setContentPane(panel);
        registrationButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String login = loginTextFild.getText();
                String pass = new String(passwordField.getPassword());
                String passRep = new String(repPasswordField.getPassword());
                int age;

                if (loginTextFild.getText().length() == 0 || passwordField.getPassword().length == 0){
                    JOptionPane.showMessageDialog(null,"Все поля должны быть заполнены", "Error", JOptionPane.ERROR_MESSAGE);
                    return;
                }


                if (!(pass.equals(passRep))){
                    JOptionPane.showMessageDialog(null,"Пароли должны совпадать", "Error", JOptionPane.ERROR_MESSAGE);
                    return;
                }
                try {
                    age = Integer.parseInt(ageTextField.getText());
                }
                catch (Exception ex) {
                    JOptionPane.showMessageDialog(null, "Некорректно введен возраст", "Error", JOptionPane.ERROR_MESSAGE);
                    return;
                }
                if (age < 4 || age > 99){
                    JOptionPane.showMessageDialog(null,"Ваш возраст должен быть в от 4 до 99 лет", "Error", JOptionPane.ERROR_MESSAGE);
                    return;
                }
                Player p = new Player();
                p.login = login;
                p.pass_hash = pass;
                p.age = age;
                PlayersRep pr = new PlayersRep();
                try {
                    pr.registr(p);
                }
                catch (SQLIntegrityConstraintViolationException ex){
                    JOptionPane.showMessageDialog(null,"Такой логин уже зарегистрирован", "Error", JOptionPane.ERROR_MESSAGE);
                    return;
                }
                catch (Exception e1) {
                    JOptionPane.showMessageDialog(null,"Ощибка регистрации", "Error", JOptionPane.ERROR_MESSAGE);
                    return;
                }
                GameForm gf = new GameForm();
                gf.setVisible(true);
                setVisible(false);
            }
        });



    }
}
