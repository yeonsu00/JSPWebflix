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
        movie2.setMovieId("1");
        movie2.setName("헤어질 결심");
        movie2.setDescription("산 정상에서 추락한 한 남자의 변사 사건. 담당 형사 '해준'(박해일)은 사망자의 아내 '서래'(탕웨이)와 마주하게 된다. \"산에 가서 안 오면 걱정했어요, 마침내 죽을까 봐.\" 남편의 죽음 앞에서 특별한 동요를 보이지 않는 '서래'. 경찰은 보통의 유가족과는 다른 '서래'를 용의선상에 올린다. '해준'은 사건 당일의 알리바이 탐문과 신문, 잠복수사를 통해 '서래'를 알아가면서 그녀에 대한 관심이 점점 커져가는 것을 느낀다. 한편, 좀처럼 속을 짐작하기 어려운 '서래'는 상대가 자신을 의심한다는 것을 알면서도 조금의 망설임도 없이 '해준'을 대하는데…. 진심을 숨기는 용의자 용의자에게 의심과 관심을 동시에 느끼는 형사 그들의 <헤어질 결심>");
        movie2.setGenre("로맨스");
        movie2.setFileName("movie1_img.png");
        listOfMovies.add(movie2);
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
