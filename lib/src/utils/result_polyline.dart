 

import 'package:flutter_polyline_points/src/point_latlng.dart';

class ResultPolyline {

  String? status;

  /// list of decoded points
  List<MyPointLatLng> points;

  /// the error message returned from google, if none, the result will be empty
  String? errorMessage;

  ResultPolyline({this.status, this.points = const [], this.errorMessage = ""});


}