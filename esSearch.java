// #각 문제의 키워드
public class esSearch {
    static void search(String a){
        switch (a){
            case "문제1":
                QU_01.quiz();
                break;
            case "문제2":
                QU_02.quiz();
                break;
            case "문제3":
                QU_03.quiz();
                break;
            case "문제4":
                QU_04.quiz();
                break;
            case "생성하지 않은 문제1": case "생성하지 않은 문제2": case "생성하지 않은 문제3": case"생성하지 않은 문제4":{
                esRoom.sleep(1000);
                System.out.println();
                System.out.println(a+"문제에서는 찾을 수 없습니다.");
                System.out.println();
                esRoom.sleep(1000);
            }
            break;
        }
    }
}
