package dto;

public class Movie {
    private String movieId; //영화아이디
    private String name;    //영화제목
    private String genre; //장르
    private String description; //영화상세소개
    //감독
    //출연자
    //등급 (15세 관람가)
    //러닝타임
    private String fileName; //사진파일 이름

    public Movie() {
        super();
    }

    public String getMovieId() {
        return movieId;
    }

    public void setMovieId(String movieId) {
        this.movieId = movieId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }
}
