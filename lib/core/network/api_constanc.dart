class ApiConstance {
  static const String baseUrl = "https://api.themoviedb.org/3/";
  static const String apiKey = "1cfdb2ac156873a18dfbdd9316994b5b";
  static const String playingNowMoveiePath =
      "${baseUrl}movie/now_playing$apiKey";
  static const String populerMoviePath = "${baseUrl}movie/popular$apiKey";
  static const String topRatedMoviePath = "${baseUrl}movie/top_rated$apiKey";
  static const String baseImageUrl = "https://image.tmdb.org/t/p/w500";
  static String imageUrl (String path)=> '$baseImageUrl$path';
}
