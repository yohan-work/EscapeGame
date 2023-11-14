import javax.swing.*;
import java.awt.*;

public class swingSub1 extends JFrame{

    static JPanel page1 = new JPanel() {
        Image background=new ImageIcon(swingMain.class.getResource("es_choice.png")).getImage();
        public void paint(Graphics g) {//그리는 함수
            g.drawImage(background, 0, 0, null);//background를 그려줌
        }
    };
    swingSub1(){
        super("창2"); //타이틀
        JPanel jPanel = new JPanel();
        jPanel.setBackground(Color.BLUE);
        setSize(1266, 744);
        add(jPanel);

        page1.setLayout(null); //레이아웃 설정하기 위해.
        page1.setBounds(0, 0, 1266, 744);//패널의 위치와 크기.
        page1.setSize(1266,744);
        add(page1);//프레임에 패널을 추가.

        Dimension frameSize = getSize();
        Dimension windowSize = Toolkit.getDefaultToolkit().getScreenSize();
        setLocation((windowSize.width - frameSize.width) / 2,
                (windowSize.height - frameSize.height) / 2); //화면 중앙에 띄우기
        setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        setVisible(true);
    }
}