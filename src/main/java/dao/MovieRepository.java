package dao;

import dto.Movie;
import java.util.ArrayList;

public class MovieRepository {
    ArrayList<Movie> listOfMovies = new ArrayList<Movie>();
    private static MovieRepository instance = new MovieRepository();

    public MovieRepository() {
        Movie movie1 = new Movie();
        movie1.setMovieId("1");
        movie1.setName("헤어질 결심");
        movie1.setDescription("산 정상에서 추락한 한 남자의 변사 사건. 담당 형사 '해준'(박해일)은 사망자의 아내 '서래'(탕웨이)와 마주하게 된다. \"산에 가서 안 오면 걱정했어요, 마침내 죽을까 봐.\" 남편의 죽음 앞에서 특별한 동요를 보이지 않는 '서래'. 경찰은 보통의 유가족과는 다른 '서래'를 용의선상에 올린다. '해준'은 사건 당일의 알리바이 탐문과 신문, 잠복수사를 통해 '서래'를 알아가면서 그녀에 대한 관심이 점점 커져가는 것을 느낀다. 한편, 좀처럼 속을 짐작하기 어려운 '서래'는 상대가 자신을 의심한다는 것을 알면서도 조금의 망설임도 없이 '해준'을 대하는데…. 진심을 숨기는 용의자 용의자에게 의심과 관심을 동시에 느끼는 형사 그들의 <헤어질 결심>");
        movie1.setGenre("로맨스");
        movie1.setFileName("movie1_img.png");
        movie1.setDirector("박찬욱");
        movie1.setGrade("15세관람가");
        movie1.setRunningTime(138);
        listOfMovies.add(movie1);

        Movie movie2 = new Movie();
        movie2.setMovieId("2");
        movie2.setName("외계인");
        movie2.setDescription("인간의 몸에 가두어 왔다”\n" +
                "2022년 현재, ‘가드’(김우빈)’와 ‘썬더’는 인간의 몸에 가두어진 외계인 죄수를 관리하며 지구에 살고 있다.\n" +
                "어느 날, 서울 상공에 우주선이 나타나고\n" +
                "형사 ‘문도석’(소지섭)은 기이한 광경을 목격하게 되는데..\n" +
                "한편, 630년 전 고려에선 얼치기 도사 ‘무륵’(류준열)과 천둥 쏘는 처자 ‘이안’(김태리)이\n" +
                "엄청난 현상금이 걸린 신검을 차지하기 위해 서로를 속고 속이는 가운데\n" +
                "신검의 비밀을 찾는 두 신선 ‘흑설’(염정아)과 ‘청운’(조우진),\n" +
                "가면 속의 ‘자장’(김의성)도 신검 쟁탈전에 나선다.\n" +
                "그리고 우주선이 깊은 계곡에서 빛을 내며 떠오르는데…\n" +
                "2022년 인간 속에 수감된 외계인 죄수를 쫓는 이들\n" +
                "1391년 고려 말 소문 속의 신검을 차지하려는 도사들\n" +
                "시간의 문이 열리고 모든 것이 바뀌기 시작했다!");
        movie2.setGenre("액션");
        movie2.setFileName("movie2.png");
        listOfMovies.add(movie2);

        Movie movie3 = new Movie();
        movie3.setMovieId("3");
        movie3.setName("스파이더맨");
        movie3.setDescription("‘엔드게임’ 이후 변화된 세상, 스파이더맨 ‘피터 파커’는 학교 친구들과 유럽 여행을 떠나게 된다. 그런 그의 앞에 ‘닉 퓨리’가 등장해 도움을 요청하고 정체불명의 조력자 ‘미스테리오’까지 합류하게 되면서 전 세계를 위협하는 새로운 빌런 ‘엘리멘탈 크리쳐스’와 맞서야만 하는 상황에 놓이게 되는데... ");
        movie3.setGenre("액션");
        movie3.setFileName("movie3.png");
        listOfMovies.add(movie3);

        Movie movie4 = new Movie();
        movie4.setMovieId("4");
        movie4.setName("공작");
        movie4.setDescription("1993년, 북한 핵 개발을 둘러싸고 한반도의 위기가 고조된다. 정보사 소령 출신으로 안기부에 스카우트된 박석영(황정민)은 ‘흑금성’이라는 암호명으로 북핵의 실체를 캐기 위해 북의 고위층 내부로 잠입하라는 지령을 받는다. 안기부 해외실장 최학성(조진웅)과 대통령 외에는 가족조차도 그의 실체를 모르는 가운데 대북사업가로 위장해 베이징 주재 북 고위간부 리명운(이성민)에게 접근한 흑금성. 그는 수 년에 걸친 공작 끝에, 리명운과 두터운 신의를 쌓고 그를 통해서, 북한 권력층의 신뢰를 얻는데 성공한다. 그러나, 1997년. 남의 대선 직전에 흑금성은 남과 북의 수뇌부 사이 은밀한 거래를 감지한다. 조국을 위해 굳은 신념으로 모든 것을 걸고 공작을 수행했던 그는 걷잡을 수 없는 갈등에 휩싸이는데…");
        movie4.setGenre("드라마");
        movie4.setFileName("movie4.png");
        listOfMovies.add(movie4);

        Movie movie5 = new Movie();
        movie5.setMovieId("5");
        movie5.setName("미씽-사라진여자");
        movie5.setDescription("이혼 후 육아와 생계를 혼자 책임져야 하는 워킹맘 지선은 헌신적으로 딸을 돌봐주는 보모 한매가 있어 늘 다행이라고 생각한다. 어느 날, 퇴근 후 집에 돌아온 지선은 보모 한매와 딸 다은이가 흔적도 없이 사라져 버린 것을 알게 된다. 지선은 뒤늦게 경찰과 가족에게 사실을 알리지만 아무도 그녀의 말을 믿지 않고, 오히려 양육권 소송 중 일으킨 자작극으로 의심한다. 결국 홀로 한매의 흔적을 추적하던 지선은 집 앞을 서성이는 정체불명의 남자와 주변 사람들의 이상한 증언들로 더욱 혼란에 빠지게 되고, 그녀의 실체에 가까워질수록 이름, 나이, 출신 등 모든 것이 거짓이었다는 충격적인 진실을 알게 되는데…");
        movie5.setGenre("액션");
        movie5.setFileName("movie5.png");
        listOfMovies.add(movie5);

        Movie movie6 = new Movie();
        movie6.setMovieId("6");
        movie6.setName("발신제한");
        movie6.setDescription("은행센터장 성규(조우진)는 아이들을 차에 태우고 출발한 평범한 출근길에 한 통의 발신번호 표시제한 전화를 받는다. 전화기 너머 의문의 목소리는 차에 폭탄이 설치되어 있고, 자리에서 일어날 경우 폭탄이 터진다고 경고하는데… 의문의 전화를 보이스피싱이라고 대수롭지 않게 여기던 성규는 곧 회사 동료의 차가 같은 방식으로 폭파되는 것을 바로 눈 앞에서 목격하고, 졸지에 부산 도심 테러의 용의자가 되어 경찰의 추격을 받게 된다. 내리면 폭탄이 터지는 절체절명의 순간, 경찰의 추격 속 의문의 발신자와의 전화마저 끊을 수 없는 상황에 놓이게 되는데…!");
        movie6.setGenre("드라마");
        movie6.setFileName("movie6.png");
        listOfMovies.add(movie6);

        Movie movie7 = new Movie();
        movie7.setMovieId("7");
        movie7.setName("무간도");
        movie7.setDescription("‘삼합회’의 숨은 조직원 유건명. 18살 때부터 경찰에 잠입해 스파이로 활동해 온 그는 현재 경찰 내에서 가장 뛰어난 강력반 요원으로 인정받고 있다. 경찰로서의 경력이 벌써 10년째에 이르는 그는 이제 그만 조직원으로서의 신분을 버리고 싶어한다.\n" +
                "\n" +
                "진영인과 유건명은 ‘삼합회’ 보스의 범죄를 캐내는 대대적인 작전 중에 서로의 존재를 감지한다. 유건명의 정체를 밝혀 떳떳한 경찰이 되려는 진영인과 스파이 신분에서 벗어나기 위해 보스를 제거하고 진영인의 비밀 기록을 없애려는 유건명. 숨막히게 서로를 추적해 가는 두 사람의 운명은 점점 다른 방향으로 엇갈리는데...");
        movie7.setGenre("액션");
        movie7.setFileName("movie7.png");
        listOfMovies.add(movie7);

        Movie movie8 = new Movie();
        movie8.setMovieId("8");
        movie8.setName("연애 빠진 로맨스");
        movie8.setDescription("일도 연애도 마음대로 되지 않는 스물아홉 ‘자영’(전종서). 전 남친과의 격한 이별 후 호기롭게 연애 은퇴를 선언했지만 참을 수 없는 외로움에 못 이겨 최후의 보루인 데이팅 어플로 상대를 검색한다. 일도 연애도 호구 잡히기 일쑤인 서른셋 ‘우리’(손석구). 뒤통수 제대로 맞은 연애의 아픔도 잠시 편집장으로부터 19금 칼럼을 떠맡게 되고 데이팅 어플에 반강제로 가입하게 된다. 그렇게 설 명절 아침! 이름, 이유, 마음 다 감추고 만난 ‘자영’과 ‘우리’. 1도 기대하지 않았지만, 1일 차부터 둘은 서로에게 급속도로 빠져들게 되고 연애인 듯 아닌 듯 미묘한 관계 속에 누구 하나 속마음을 쉽게 터놓지 못하는데... 이게 연애가 아니면 도대체 뭔데? 발 빼려다 푹 빠졌다!");
        movie8.setGenre("로맨스");
        movie8.setFileName("movie8.png");
        listOfMovies.add(movie8);

        Movie movie9 = new Movie();
        movie9.setMovieId("9");
        movie9.setName("아바타");
        movie9.setDescription("가까운 미래, 지구는 에너지 고갈 문제를 해결하기 위해 머나먼 행성 판도라에서 대체 자원을 채굴하기 시작한다. 하지만 판도라의 독성을 지닌 대기로 인해 자원 획득에 어려움을 겪게 된 인류는 판도라의 토착민 나비족(Na'vi)의 외형에 인간의 의식을 주입, 원격 조종이 가능한 새로운 생명체 ‘아바타’를 탄생시키는 프로그램을 개발한다. 평범한 삶을 살아가던 전직 해병대원 제이크, 우주의 미래가 걸린 거대한 운명이 그에게 찾아왔다! 한편, 하반신이 마비된 전직 해병대원 ‘제이크 설리(샘 워싱턴)’는 ‘아바타 프로그램’에 참가할 것을 제안받아 판도라로 향한다. 그곳에서 자신의 ‘아바타’를 통해 자유롭게 걸을 수 있게 된 ‘제이크’는 자원 채굴을 막으려는 나비족(Na'vi)의 무리에 침투하라는 임무를 부여받는다.");
        movie9.setGenre("SF");
        movie9.setFileName("movie9.png");
        listOfMovies.add(movie9);

        Movie movie10 = new Movie();
        movie10.setMovieId("10");
        movie10.setName("듄-드리프터");
        movie10.setDescription("10191년, 아트레이데스 가문의 후계자인 폴(티모시 샬라메)은 시공을 초월한 존재이자 전 우주를 구원할 예지된 자의 운명을 타고났다. 그리고 어떤 계시처럼 매일 꿈에서 아라키스 행성에 있는 한 여인을 만난다. 모래언덕을 뜻하는 '듄'이라 불리는 아라키스는 물 한 방울 없는 사막이지만 우주에서 가장 비싼 물질인 신성한 환각제 스파이스의 유일한 생산지로 이를 차지하기 위한 전쟁이 치열하다. 황제의 명령으로 폴과 아트레이데스 가문은 죽음이 기다리는 아라키스로 향하는데… 위대한 자는 부름에 응답한다, 두려움에 맞서라, 이것은 위대한 시작이다!");
        movie10.setGenre("액션");
        movie10.setFileName("movie10.png");
        listOfMovies.add(movie10);

        Movie movie11 = new Movie();
        movie11.setMovieId("11");
        movie11.setName("인셉션");
        movie11.setDescription("타인의 꿈에 들어가 생각을 훔치는 특수 보안요원 코브. 그를 이용해 라이벌 기업의 정보를 빼내고자 하는 사이토는 코브에게 생각을 훔치는 것이 아닌, 생각을 심는 ‘인셉션’ 작전을 제안한다. 성공 조건으로 국제적인 수배자가 되어있는 코브의 신분을 바꿔주겠다는 거부할 수 없는 제안을 하고, 사랑하는 아이들에게 돌아가기 위해 그 제안을 받아들인다. 최강의 팀을 구성, 표적인 피셔에게 접근해서 ‘인셉션’ 작전을 실행하지만 예기치 못한 사건들과 마주하게 되는데… 꿈 VS 현실 시간, 규칙, 타이밍 모든 것이 완벽해야만 하는, 단 한 번도 성공한 적 없는 ‘인셉션’ 작전이 시작된다!");
        movie11.setGenre("판타지");
        movie11.setFileName("movie11.png");
        listOfMovies.add(movie11);

        Movie movie12 = new Movie();
        movie12.setMovieId("12");
        movie12.setName("마스터");
        movie12.setDescription("화려한 언변, 사람을 현혹하는 재능, 정관계를 넘나드는 인맥으로 수만 명 회원들에게 사기를 치며 승승장구해 온 원네트워크 ‘진회장’(이병헌). 반년간 그를 추적해 온 지능범죄수사팀장 ‘김재명’(강동원)은 진회장의 최측근인 ‘박장군’(김우빈)을 압박한다. 원네트워크 전산실 위치와 진회장의 로비 장부를 넘기라는 것. 뛰어난 프로그래밍 실력과 명석한 두뇌로 원네트워크를 키워 온 브레인 박장군은 계획에 차질이 생긴 것을 감지하자 빠르게 머리를 굴리기 시작한다. 진회장은 물론 그의 뒤에 숨은 권력까지 모조리 잡기 위해 포위망을 좁혀가는 재명, 오히려 이 기회를 틈타 돈도 챙기고 경찰의 압박에서도 벗어날 계획을 세우는 장군. 하지만 진회장은 간부 중에 배신자가 있음을 눈치채고, 새로운 플랜을 가동하는데… 지능범죄수사대, 희대의 사기범, 그리고 브레인 서로 속고 속이는 추격이 시작된다!");
        movie12.setGenre("액션");
        movie12.setFileName("movie12.png");
        listOfMovies.add(movie12);



    }

    public ArrayList<Movie> getAllMovies() {
        return listOfMovies;
    }

    public static MovieRepository getInstance() {
        return instance;
    }

    public Movie getMovieById(String movieId) {
        Movie movieById = null;
        for (int i = 0; i < listOfMovies.size(); i++) {
            Movie movie = listOfMovies.get(i);
            if (movie != null && movie.getMovieId() != null && movie.getMovieId().equals(movieId)) {
                movieById = movie;
                break;
            }
        }
        return movieById;
    }

}
