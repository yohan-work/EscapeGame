import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class swingMain extends JFrame {

    static JPanel page1 = new JPanel() {
        Image background=new ImageIcon(swingMain.class.getResource("es_main.png")).getImage();
        public void paint(Graphics g) {//그리는 함수
            g.drawImage(background, 0, 0, null);//background를 그려줌
        }
    };

    public swingMain() {
        setTitle("MASTERKEY");
        setSize(1266, 744);
        setResizable(false);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);

        page1.setLayout(null); //레이아웃 설정하기 위해.
        page1.setBounds(0, 0, 1266, 744);//패널의 위치와 크기.
        page1.setSize(1266,744);
        add(page1);//프레임에 패널을 추가.

        JPanel panel = new JPanel(new GridBagLayout()); // Use GridBagLayout
        JButton btn1 = new JButton("PLAY");
        GridBagConstraints gbc = new GridBagConstraints();
        gbc.gridx = 0;
        gbc.gridy = 0;
        gbc.insets = new Insets(440, 10, 0, 0); // Set custom insets for position
        gbc.gridwidth = 2; // Set width to span 2 cells
        gbc.gridheight = 2; // Set height to span 2 cells
        panel.add(btn1, gbc);
        add(panel);

        setVisible(true);

        btn1.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                new swingSub1();
                setVisible(false); // 창 안보이게 하기
            }
        });
    }

    public static void main(String[] args) {
        new swingMain();
    }
}
