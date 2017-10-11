import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.SQLException;

public class LoginForm extends JFrame {
    private JPanel panel;
    private JTextField Login;
    private JButton registrationButton;
    private JButton logInButton;
    private JPasswordField enteryPassword;

    private void createUIComponents() {
        // TODO: place custom component creation code here
    }
    public LoginForm() throws SQLException, ClassNotFoundException {
        JdbcConnection.init();
        setContentPane(panel);
        logInButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {

                String login = Login.getText();
                String password = new String(enteryPassword.getPassword());
                try{
                    PlayersRep playersRep = new PlayersRep();
                    playersRep.login(login, password);
                }
                catch (Exception ex){
                    JOptionPane.showMessageDialog(null, ex.getMessage(), "Error", JOptionPane.WARNING_MESSAGE);
                    return;
                }
                GameForm gf = new GameForm();
                gf.setVisible(true);
                setVisible(false);
            }
        });
        registrationButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                setVisible(false);
                RegistForm registForm = new RegistForm();
                registForm.setVisible(true);
                registForm.setBounds(200,200, 400,400);
                registForm.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
            }
        });
    }

    public void isVisible(boolean b) {
    }
}
