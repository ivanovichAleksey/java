import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.SQLException;
import java.util.ArrayList;

public class GameForm extends JFrame {

    private JPanel panel;
    private JTextField answerTextFild;
    private JButton buttonOk;
    private JButton buttonExit;
    private JButton buttonHelp;
    private JPanel associationPanel;
    private JLabel countLabel;
    private ArrayList<Question> question;
    private int questionNumber = 0;
    private Question currentQuestion;
    private int associationNumber;
    private int hintCount;
    private int tryCount;
    private int score = 0;



    public GameForm() throws SQLException {
        setContentPane(panel);
        setBounds(200,200,500,500);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        QuestionRep qr = new QuestionRep();
        question = qr.getQustions();
        showNextQuestion();
        buttonOk.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String answer = answerTextFild.getText();
                String correctAnswer = currentQuestion.answer;
                answerTextFild.setText("");
                if (answer.equalsIgnoreCase(correctAnswer)){
                    JOptionPane.showMessageDialog(null, "Вы угодали", "Победа", JOptionPane.INFORMATION_MESSAGE);
                    score += tryCount + 2 * hintCount;
                    if (questionNumber == question.size()){
                        RecordsRep rr = new RecordsRep();
                        try {
                            rr.addRecord(PlayersRep.playerId,score);
                        } catch (SQLException e1) {
                            e1.printStackTrace();
                        }
                        setVisible(false);
                        RecordsForm rf = null;
                        try {
                            rf = new RecordsForm();
                        } catch (SQLException e1) {
                            e1.printStackTrace();
                        }
                        rf.setVisible(true);
                    }
                    else {
                        showNextQuestion();
                    }
                }
                else {
                    tryCount--;
                    if (tryCount == 0){
                        JOptionPane.showMessageDialog(null, "Вы проиграли!Правильный ответ: " + currentQuestion.answer +
                                "", "Ваши попытки закончились", JOptionPane.INFORMATION_MESSAGE);
                        if (questionNumber == question.size()){
                            RecordsRep rr = new RecordsRep();
                            try {
                                rr.addRecord(PlayersRep.playerId,score);
                            } catch (SQLException e1) {
                                e1.printStackTrace();
                            }
                            setVisible(false);
                            RecordsForm rf = null;
                            try {
                                rf = new RecordsForm();
                            } catch (SQLException e1) {
                                e1.printStackTrace();
                            }
                            rf.setVisible(true);
                        }
                        else {
                            showNextQuestion();
                        }

                    }
                    else {
                        updateTryCountLabelText();

                    }
                }
            }
        });
        buttonExit.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                JOptionPane.showMessageDialog(null, "Вы проиграли!Правильный ответ: " + currentQuestion.answer +
                        "", "Ваши попытки закончились", JOptionPane.INFORMATION_MESSAGE);
                if (questionNumber == question.size()){
                    RecordsRep rr = new RecordsRep();
                    try {
                        rr.addRecord(PlayersRep.playerId,score);
                    } catch (SQLException e1) {
                        e1.printStackTrace();
                    }
                    setVisible(false);
                    RecordsForm rf = null;
                    try {
                        rf = new RecordsForm();
                    } catch (SQLException e1) {
                        e1.printStackTrace();
                    }
                    rf.setVisible(true);
                }
                else {
                    showNextQuestion();
                }
            }
        });
        buttonHelp.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                hintCount--;
                associationNumber++;
                String association = currentQuestion.words[associationNumber];
                addAssociation(association);
                if (hintCount == 0){
                    buttonHelp.setEnabled(false);

                }
                updateHinstsButtonText();
            }
        });
    }
    private void addAssociation(String association){
        JLabel label = new JLabel(association);
        label.setBackground(Color.GRAY);
        label.setForeground(Color.ORANGE);
        associationPanel.add(label);
        associationPanel.updateUI();
    }
    private void showNextQuestion(){
        questionNumber++;
        currentQuestion = question.get(questionNumber - 1);
        associationPanel.removeAll();
        associationNumber = 0;
        addAssociation(currentQuestion.words[0]);
        buttonHelp.setEnabled(true);
        tryCount = 3;
        hintCount = currentQuestion.words.length - 1;
        updateHinstsButtonText();
        updateTryCountLabelText();
    }
    private void updateHinstsButtonText(){
        String s = String.format("Подсказка (%d)", hintCount);
        buttonHelp.setText(s);
    }
   private void updateTryCountLabelText(){
        String s = String.format("У вас осталось (%d) попыток", tryCount);
        countLabel.setText(s);
    }

}
