

// /// A pair of latitude and longitude coordinates, stored as degrees.
// class MyPointLatLngs {

//   /// Creates a geographical location specified in degrees [latitude] and
//   /// [longitude].
//   ///
//   const MyPointLatLngs(double latitude, double longitude)
//       : this.latitude = latitude,
//         this.longitude = longitude;

  

//   @override
//   String toString() {
//     return "lat: $latitude / longitude: $longitude";
//   }
// }

class MyPointLatLng {
  /// The latitude in degrees.
  final double? latitude;

  /// The longitude in degrees
  final double? longitude;

  MyPointLatLng(this.latitude, this.longitude);

  @override
  String toString() {
    return "lat: $latitude / longitude: $longitude";
  }
  
}