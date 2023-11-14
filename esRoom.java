import java.util.*;
import java.io.*;

import static java.lang.Thread.sleep;

public class esRoom {
    public static void main(String[] args) throws InterruptedException {
        Scanner esChk = new Scanner(System.in);

        // Game Start
        System.out.println("---방탈출 게임 시작 멘트 :: Y or N---");
        System.out.println("=>>>>");

        char a = esChk.next().charAt(0);

        // input N or n 입력 시
        if(a=='N' || a=='n'){
            System.out.println("게임 종료");
            return;

            // input Y or y 입력 시
        }

        else if(a=='Y' || a=='y') {

            // 게임 완료 후 답안지 txt 파일 생성 예정. file exist -> game 완료 -> 종료
            File esFileEnd = new File("esAnswer.txt");

            if(esFileEnd.exists() == true){
                System.out.println("이미 게임을 완료하였습니다. ");
                System.exit(1);
            }
            


        /*** Game Start ***/
        
        // 게임 시작 전 멘트
        sleep(1000);
        System.out.println("=================================================");
        System.out.printf("\n\n\n");
        System.out.println("\t\t\t\t Terminal 환경 게임 시작 #01");
        System.out.printf("\n\n\n");
        System.out.println("=================================================");
        sleep(1500);
        System.out.println();
        System.out.printf("게임 설명이 들어갈 영역입니다... 한줄씩 텀을 두고 출력\n\n");
        sleep(1500);
        System.out.printf("게임 설명이 들어갈 영역입니다...\n\n");
        sleep(1500);
        System.out.printf("게임 설명이 들어갈 영역입니다...\n\n");
        sleep(1500);
        System.out.printf("게임 설명이 들어갈 영역입니다...\n\n");
        sleep(1500);
        System.out.printf("게임 시작\n\n");
        System.out.println("=================================================");
        sleep(1000);
        System.out.printf("\n\n\n\n\n");

        // 별도 클래스 구성이 필요할 것 같음. 여러 주제의 문제를 담고, 1개 맞추면 count+1 형식으로 진행
        while(esHP.cnt<4) {
            System.out.println("어떤 문제를 선택하시겠습니까?[문제1, 문제2, 문제3, 문제4, 생성하지 않은 문제1, 생성하지 않은 문제2, 생성하지 않은 문제3, 생성하지 않은 문제4]");
            System.out.println();
            System.out.print("=> ");
            String what = esChk.next();
            esSearch.search(what);
            System.out.println();
            if (esHP.heart == 0){
                System.out.println("기회가 소진되었습니다. 게임을 종료합니다.");
                System.out.printf("\n\n");
                esRoom.sleep(2000);
                System.out.println("===========================================================================");
                System.out.printf("\n\n\n");
                System.out.println("\t\t\t\t다음 기회에..");
                System.out.printf("\n\n\n");
                System.out.println("===========================================================================");
                System.out.printf("\n\n");
                esRoom.sleep(2000);
                File readFile = new File("Hint.txt");
                String [] st = {"", "", "", "", "", "", "", "", "", "", ""};
                int i = 0;
                if(readFile.exists() == false){
                    System.out.println("score.txt파일이 없습니다. 프로그램 종료합니다.");
                    System.exit(1);
                }
                try{
                    Scanner s2 = new Scanner(readFile);
                    while(s2.hasNext()){
                        st[i] = s2.nextLine();
                        i++;
                    }
                    s2.close();
                }catch(FileNotFoundException fnfe){
                    fnfe.printStackTrace();
                }
                for(i=0; i<st.length; i++){
                    System.out.println(st[i]);
                }
                System.out.println();
                System.out.println();
                return;
            }
            System.out.println();
        }

        // 정답일 경우
        esRoom.sleep(1000);
        System.out.println("모든 단서를 다 모은 것 같다. 잠긴 문으로 가보자.");
        System.out.println();
        System.out.println();
        esRoom.sleep(2000);

        esEnding.last();

        try{
            PrintWriter pw = new PrintWriter(esFileEnd);
            pw.printf("\n\n");
            pw.println("탈출을 축하합니다!");
            pw.println();
            pw.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
            pw.println("문제1에서 얻은 숫자 : "+esHP.a1);
            pw.println("문제2에서  얻은 숫자 : "+esHP.a2);
            pw.println("문제3에서  얻은 숫자 : "+esHP.a3);
            pw.println("문제4에서  얻은 숫자 : "+esHP.a4);
            pw.println("비밀번호 : "+esEnding.lastAnswer);
            pw.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
            pw.close();
        }catch(Exception e){
            e.printStackTrace();
        }

        System.out.println("파일 출력 완료");//이후 파일 입출력 이용

    }

      else System.out.println("Y(y) 또는 N(n)으로 입력해주십시오");
    }

    static void sleep(int time){
        try{
            Thread.sleep(time);
        }catch(InterruptedException e){}
    }
}
