part of 'pages.dart';

class MapsPage extends StatefulWidget {
  @override
  _MapsPageState createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  late GoogleMapController mapController;

  final LatLng _center = LatLng(mockUser[1].lat!, mockUser[1].lng!);
  final Map<String, Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {
      _markers.clear();
      for (final user in mockUser) {
        final marker = Marker(
          markerId: MarkerId(user.name!),
          position: LatLng(user.lat!, user.lng!),
          infoWindow: InfoWindow(
            title: user.name,
            snippet: user.address,
          ),
        );
        _markers[user.name!] = marker;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: _center,
        zoom: 14,
      ),
      markers: _markers.values.toSet(),
      zoomControlsEnabled: false,
    );
  }
}
