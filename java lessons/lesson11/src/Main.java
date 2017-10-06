import com.sun.prism.paint.Color;
import javafx.scene.control.ProgressBar;

import javax.swing.*;
import java.awt.*;

public class Main {
    public static void main(String[] args) {
        JFrame frame = new JFrame("Главное меню");
        frame.setSize(400, 400);
        //frame.setResizable(false);
        frame.setLocation(100, 100);


        setGridLoyout(frame);

        frame.setVisible(true);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

    }

    public static void setBorderLoyout(JFrame f){
        Container c = f.getContentPane();
        BorderLayout bl = new BorderLayout();
        c.setLayout(bl);

        JButton button1 = new JButton("Press me button 1");
        c.add(button1, BorderLayout.WEST);

        JButton button2 = new JButton("Press me button 2");
        c.add(button2, BorderLayout.EAST);

        JButton button3 = new JButton("Press me button 3");
        c.add(button3, BorderLayout.NORTH);

        JButton button4 = new JButton("Press me button 4");
        c.add(button4, BorderLayout.SOUTH);

        JButton button5 = new JButton("Press me button 5");
        c.add(button5, BorderLayout.CENTER);

    }

    public static void setFlowLoyout(JFrame f){
        Container c = f.getContentPane();
        FlowLayout bl = new FlowLayout();
        c.setLayout(bl);

        JButton button1 = new JButton("Press me button 1");
        c.add(button1);

        JButton button2 = new JButton("Press me button 2");
        c.add(button2);

        JButton button3 = new JButton("Press me button 3");
        c.add(button3);

        JButton button4 = new JButton("Press me button 4");
        c.add(button4);

        JButton button5 = new JButton("Press me button 5");
        c.add(button5);

    }

    public static void setGridLoyout(JFrame f){
        Container c = f.getContentPane();
        GridLayout bl = new GridLayout(10,1,10,10);
        c.setLayout(bl);


        JLabel label = new JLabel("Hello");
        label.setText("Hello world");
        c.add(label);

        JTextField textField = new JTextField();

        c.add(textField);

        JPasswordField jpf = new JPasswordField();

        c.add(jpf);

        JProgressBar bar = new JProgressBar();
        bar.setValue(30);
        c.add(bar);

        JSlider slider = new JSlider();
        slider.setValue(30);

        slider.setToolTipText("Hello");

        c.add(slider);

        JCheckBox checkBox = new JCheckBox("qwerty");
        checkBox.setSelected(true);
        c.add(checkBox);

        JToolBar toolBar = new JToolBar();
        JRadioButton radioButton1 = new JRadioButton("radioButton1");
        toolBar.add(radioButton1);
        JRadioButton radioButton2 = new JRadioButton("radioButton2");
        toolBar.add(radioButton2);
        ButtonGroup bg = new ButtonGroup();
        bg.add(radioButton1);
        bg.add(radioButton2);

        c.add(toolBar);

        JMenuBar menuBar = new JMenuBar();
        JMenu menuFile = new JMenu("File");
        menuBar.add(menuFile);
        JMenu menuEdit = new JMenu("Edit");
        menuFile.add(menuEdit);
        JMenuItem menuItem1 = new JMenuItem("1");
        menuEdit.add(menuItem1);
        JMenuItem menuItem2 = new JMenuItem("2");
        menuEdit.add(menuItem2);
        JMenuItem menuItem = new JMenuItem("menuItem");
        menuFile.add(menuItem);
        JMenu menuAbout = new JMenu("About");
        menuBar.add(menuAbout);


        c.add(menuBar);


        /*JButton button1 = new JButton("Press me button 1");
        c.add(button1);

        JButton button2 = new JButton("Press me button 2");
        c.add(button2);

        JButton button3 = new JButton("Press me button 3");
        c.add(button3);

        JButton button4 = new JButton("Press me button 4");
        c.add(button4);

        JButton button5 = new JButton("Press me button 5");
        c.add(button5);*/

    }

    public static void setAbsoluteLayout(JFrame f){
        Container c = f.getContentPane();
        c.setLayout(null);

        JButton button1 = new JButton("1Press me\nbutton 1");
        button1.setLocation(50,50);
        button1.setSize(100,100);
        c.add(button1);

        JButton button2 = new JButton("Press me\nbutton 2");
        button2.setLocation(200,200);
        button2.setSize(100,100);
        c.add(button2);

        JButton button3 = new JButton("3Press me\nbutton 3");
        button3.setLocation(75,75);
        button3.setSize(100,100);
        c.add(button3);


    }
}
