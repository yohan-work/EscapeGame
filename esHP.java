// #문제의 답 및 정답,오답의 경우 분기 처리가 될 파일입니다.
public class esHP {
    protected static int heart=50; // 게임 기회 세팅(임의 값 50)

    static String es_qu1 = "1";
    static String es_qu2 = "2";
    static String es_qu3 = "3";
    static String es_qu4 = "4";

    static int cnt = 0; // ++
    static int a1;
    static int a2;
    static int a3;
    static int a4;

    static void q_01(){
        // 첫번째 문제의 답이 선언한 답과 같다면 +1(중복 방지)
        if(QU_01.answer.equals(es_qu1)){
            // 최종 조합을 위한 랜덤 숫자 생성
            a1=esRandomNum.esrNum();
            esRoom.sleep(1000);
            System.out.println();
            System.out.println("정답!!");
            esRoom.sleep(1000);
            System.out.println();
            System.out.println();
            System.out.println("*****************");
            // 랜덤 숫자 1개 받아줌
            System.out.println("*\t"+a1+"\t*");
            System.out.println("*****************");
            esRoom.sleep(1000);
            System.out.println();
            System.out.println();
            System.out.println("최종 문제를 위한 숫자 하나 획득");
            System.out.println();
            esRoom.sleep(1000);
            cnt++;
            QU_01.count1++;
        } else {
            esRoom.sleep(1000);
            System.out.println();
            System.out.println("오답입니다 :: 체력 - 10)");
            heart-=10;
            esRoom.sleep(1000);
            System.out.println();
            System.out.printf("현재 HP:%d\n",heart);
            esRoom.sleep(1000);
        }

    }

    static void q_02(){
        if(QU_02.answer.equals(es_qu2)){
            // 최종 조합을 위한 랜덤 숫자 생성
            a2=esRandomNum.esrNum();
            esRoom.sleep(1000);
            System.out.println();
            System.out.println("정답!!");
            esRoom.sleep(1000);
            System.out.println();
            System.out.println();
            System.out.println("*****************");
            // 랜덤 숫자 1개 받아줌
            System.out.println("*\t"+a2+"\t*");
            System.out.println("*****************");
            esRoom.sleep(1000);
            System.out.println();
            System.out.println();
            System.out.println("최종 문제를 위한 숫자 하나 획득");
            System.out.println();
            esRoom.sleep(1000);
            cnt++;
            QU_02.count2++;
        } else {
            esRoom.sleep(1000);
            System.out.println();
            System.out.println("오답입니다 :: 체력 - 10)");
            heart-=10;
            esRoom.sleep(1000);
            System.out.println();
            System.out.printf("현재 HP:%d\n",heart);
            esRoom.sleep(1000);
        }
    }

    static void q_03(){
        if(QU_03.answer.equals(es_qu3)){
            // 최종 조합을 위한 랜덤 숫자 생성
            a3=esRandomNum.esrNum();
            esRoom.sleep(1000);
            System.out.println();
            System.out.println("정답!!");
            esRoom.sleep(1000);
            System.out.println();
            System.out.println();
            System.out.println("*****************");
            // 랜덤 숫자 1개 받아줌
            System.out.println("*\t"+a3+"\t*");
            System.out.println("*****************");
            esRoom.sleep(1000);
            System.out.println();
            System.out.println();
            System.out.println("최종 문제를 위한 숫자 하나 획득");
            System.out.println();
            esRoom.sleep(1000);
            cnt++;
            QU_03.count3++;
        } else {
            esRoom.sleep(1000);
            System.out.println();
            System.out.println("오답입니다 :: 체력 - 10)");
            heart-=10;
            esRoom.sleep(1000);
            System.out.println();
            System.out.printf("현재 HP:%d\n",heart);
            esRoom.sleep(1000);
        }
    }

    static void q_04(){
        if(QU_04.answer.equals(es_qu4)){
            // 최종 조합을 위한 랜덤 숫자 생성
            a4=esRandomNum.esrNum();
            esRoom.sleep(1000);
            System.out.println();
            System.out.println("정답!!");
            esRoom.sleep(1000);
            System.out.println();
            System.out.println();
            System.out.println("*****************");
            // 랜덤 숫자 1개 받아줌
            System.out.println("*\t"+a4+"\t*");
            System.out.println("*****************");
            esRoom.sleep(1000);
            System.out.println();
            System.out.println();
            System.out.println("최종 문제를 위한 숫자 하나 획득");
            System.out.println();
            esRoom.sleep(1000);
            cnt++;
            QU_04.count4++;
        } else {
            esRoom.sleep(1000);
            System.out.println();
            System.out.println("오답입니다 :: 체력 - 10)");
            heart-=10;
            esRoom.sleep(1000);
            System.out.println();
            System.out.printf("현재 HP:%d\n",heart);
            esRoom.sleep(1000);
        }
    }

}
