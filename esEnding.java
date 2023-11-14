// #문제를 완료한 후 최종 파일(맞출경우/틀릴경우/기회가 없을 경우)
import java.util.Scanner;

public class esEnding {
    static int lastAnswer = esHP.a1+esHP.a2+esHP.a3+esHP.a4;

    static void last(){
        Scanner s = new Scanner(System.in);
        System.out.println("각 문제에 해당하는 숫자를 조합하여 입력하시오.");
        esRoom.sleep(1000);
        System.out.printf("\n\n\n");
        System.out.println("ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ");
        System.out.println("힌트:  ㅁ+ㅁ+ㅁ+ㅁ    ");
        System.out.println("ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ");
        System.out.printf("\n\n\n");
        while(true){
            System.out.print("=> ");
            int x = s.nextInt();
            // 입력한 답과 미리 담아둔 값이 같은 케이스
            if(x==lastAnswer){
                esRoom.sleep(1000);
                System.out.printf("\n\n\n");
                System.out.println("정답입니다. 게임을 종료합니다.");
                System.out.printf("\n\n\n");
                esRoom.sleep(1000);
                break;
            }
            // 정답이 틀린 케이스
            else{
                esRoom.sleep(1000);
                System.out.printf("\n\n\n");
                System.out.println("답이 틀렸습니다.");
                esRoom.sleep(1000);
                System.out.printf("\n\n\n");
                System.out.println("정답이 아닙니다. 기회가 소진됩니다.(체력 - 10)");
                esRoom.sleep(1000);
                System.out.printf("\n\n\n");
                esHP.heart-=10;
                System.out.printf("현재 HP:%d\n",esHP.heart);
                System.out.printf("\n\n\n");
                esRoom.sleep(1000);

                // 기회가 전부 소진된 경우
                if(esHP.heart == 0){
                    esRoom.sleep(1000);
                    System.out.printf("\n\n\n");
                    System.out.println("기회가 소진되었습니다. 게임을 종료합니다.");
                    esRoom.sleep(1000);
                    System.out.printf("\n\n\n");
                    System.out.println("===========================================================================");
                    System.out.printf("\n\n\n");
                    System.out.println("\t\t\t\t다음 기회에..");
                    System.out.printf("\n\n\n");
                    System.out.println("===========================================================================");
                    System.out.printf("\n\n\n\n\n\n");
                    return;
                }
            }
        }
    }
}
