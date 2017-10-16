import javax.swing.*;
import java.sql.SQLException;
import java.util.ArrayList;

public class RecordsForm extends JFrame {
    private JPanel panelRecord;
    private JTextArea recordTextField;

    public RecordsForm() throws SQLException {
        setContentPane(panelRecord);
        setLocation(200,300);
        setSize(400,400);
        RecordsRep rR = new RecordsRep();
        ArrayList<Record> records = rR.getRecords();
        for (Record record: records) {
            recordTextField.setText(recordTextField.getText() + record);
        }
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

    }
}
