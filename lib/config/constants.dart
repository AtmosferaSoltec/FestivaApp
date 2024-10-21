import 'package:latlong2/latlong.dart';

class AppConstants {
  static const String mapBoxAccessToken =
      "pk.eyJ1Ijoib25ub3J2IiwiYSI6ImNsdTBjazRpbzA5ajYycWp2cmN5b3JpcGYifQ.6cqka9cePI6ZgCEv9IBFtQ";

  static const String urlTemplate =
      "https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token=$mapBoxAccessToken";

  static const String mapBoxStyleDarkId = "mapbox/dark-v11";
  static const String mapBoxStyleOutdoorId = "mapbox/outdoors-v12";
  static const String mapBoxStyleStreetId = "mapbox/streets-v12";
  static const String mapBoxStyleNightId = "mapbox/navigation-night-v1";

  static const myLocation = LatLng(-13.418516, -76.138359);

  static const String baseUrl =
      'http://sv-YaAUgKfBpu.cloud.elastika.pe:2424/api';
}
