// #문제가 담긴 파일입니다.

import java.util.*;
public class esQuestion{
    // 문제를 이미 맞추었을 경우 생각해야 함
    static int count1, count2, count3, count4;
    public static String answer;
    static void quiz(){};
}

class QU_01 extends esQuestion{
    static void quiz(){
        // 문제를 이미 맞췄을 case
        if(count1 == 1){
            System.out.println();
            System.out.println();
            esRoom.sleep(1000);
            System.out.println("이미 해결한 문제입니다.");
            esRoom.sleep(1000);
            System.out.println();
            System.out.println();
        } else {
            // 문제를 처음 마주한 case
            Scanner s = new Scanner(System.in);
            System.out.println();
            esRoom.sleep(1000);
            System.out.println("첫번째 문제에 대한 설명 설명 설명 설명");
            System.out.println();
            esRoom.sleep(1000);
            System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
            System.out.println();
            System.out.println("         문제 설명이 나타날-1번째 줄 ");
            System.out.println("         문제 설명이 나타날-2번째 줄");
            System.out.println("         문제 설명이 나타날-3번째 줄");
            System.out.println("         문제 설명이 나타날-4번째 줄");
            System.out.println();
            System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
            System.out.println();
            System.out.println();
            esRoom.sleep(1000);
            System.out.print("정답 입력 ->> ");
            answer = s.next();
            esHP.q_01();
        }
    }
}

class QU_02 extends esQuestion{
    static void quiz(){
        // 문제를 이미 맞췄을 case
        if(count2 == 1){
            System.out.println();
            System.out.println();
            esRoom.sleep(1000);
            System.out.println("이미 해결한 문제입니다.");
            esRoom.sleep(1000);
            System.out.println();
            System.out.println();
        } else {
            // 문제를 처음 마주한 case
            Scanner s = new Scanner(System.in);
            System.out.println();
            esRoom.sleep(1000);
            System.out.println("두번째 문제에 대한 설명 설명 설명 설명");
            System.out.println();
            esRoom.sleep(1000);
            System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
            System.out.println();
            System.out.println("         문제 설명이 나타날-1번째 줄 ");
            System.out.println("         문제 설명이 나타날-2번째 줄");
            System.out.println("         문제 설명이 나타날-3번째 줄");
            System.out.println("         문제 설명이 나타날-4번째 줄");
            System.out.println();
            System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
            System.out.println();
            System.out.println();
            esRoom.sleep(1000);
            System.out.print("정답 입력 ->> ");
            answer = s.next();
            esHP.q_02();
        }
    }
}

class QU_03 extends esQuestion{
    static void quiz(){
        // 문제를 이미 맞췄을 case
        if(count3 == 1){
            System.out.println();
            System.out.println();
            esRoom.sleep(1000);
            System.out.println("이미 해결한 문제입니다.");
            esRoom.sleep(1000);
            System.out.println();
            System.out.println();
        } else {
            // 문제를 처음 마주한 case
            Scanner s = new Scanner(System.in);
            System.out.println();
            esRoom.sleep(1000);
            System.out.println("세번째 문제에 대한 설명 설명 설명 설명");
            System.out.println();
            esRoom.sleep(1000);
            System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
            System.out.println();
            System.out.println("         문제 설명이 나타날-1번째 줄 ");
            System.out.println("         문제 설명이 나타날-2번째 줄");
            System.out.println("         문제 설명이 나타날-3번째 줄");
            System.out.println("         문제 설명이 나타날-4번째 줄");
            System.out.println();
            System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
            System.out.println();
            System.out.println();
            esRoom.sleep(1000);
            System.out.print("정답 입력 ->> ");
            answer = s.next();
            esHP.q_03();
        }
    }
}

// 4번째 문제
class QU_04 extends esQuestion{
    static void quiz(){
        // 문제를 이미 맞췄을 case
        if(count4 == 1){
            System.out.println();
            System.out.println();
            esRoom.sleep(1000);
            System.out.println("이미 해결한 문제입니다.");
            esRoom.sleep(1000);
            System.out.println();
            System.out.println();
        } else {
            // 문제를 처음 마주한 case
            Scanner s = new Scanner(System.in);
            System.out.println();
            esRoom.sleep(1000);
            System.out.println("네번째 문제에 대한 설명 설명 설명 설명");
            System.out.println();
            esRoom.sleep(1000);
            System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
            System.out.println();
            System.out.println("         문제 설명이 나타날-1번째 줄 ");
            System.out.println("         문제 설명이 나타날-2번째 줄");
            System.out.println("         문제 설명이 나타날-3번째 줄");
            System.out.println("         문제 설명이 나타날-4번째 줄");
            System.out.println();
            System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
            System.out.println();
            System.out.println();
            esRoom.sleep(1000);
            System.out.print("정답 입력 ->> ");
            answer = s.next();
            esHP.q_04();
        }
    }
}