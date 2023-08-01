library flutter_polyline_points;

import 'package:flutter_polyline_points/src/my_network_util.dart';
import 'package:flutter_polyline_points/src/point_latlng.dart';
import 'package:flutter_polyline_points/src/utils/my_request_enums.dart';
import 'package:flutter_polyline_points/src/utils/result_polyline.dart';
import 'package:flutter_polyline_points/src/utils/waypoint_polyline.dart';
 

class PolylinePointsFlutter {
  MyNetworkUtil util = MyNetworkUtil();

  Future<ResultPolyline> getRouteBetweenCoordinates(
      String googleApiKey, MyPointLatLng origin, MyPointLatLng destination,
      {MyTravelMode travelMode = MyTravelMode.driving,
      List<WayPointPolyline> wayPoints = const [],
      bool avoidHighways = false,
      bool avoidTolls = false,
      bool avoidFerries = true,
      bool optimizeWaypoints = false}) async {
    return await util.getRouteBetweenCoordinates(
        googleApiKey,
        origin,
        destination,
        travelMode,
        wayPoints,
        avoidHighways,
        avoidTolls,
        avoidFerries,
        optimizeWaypoints);
  }

  /// Decode and encoded google polyline
  /// e.g "_p~iF~ps|U_ulLnnqC_mqNvxq`@"
  ///
  List<MyPointLatLng> decodePolyline(String encodedString) {
    return util.decodeEncodedPolyline(encodedString);
  }
}