import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'ride_request_screen.dart';

class MapScreen extends StatefulWidget {
  final String role; 

  const MapScreen({super.key, required this.role}); 

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? mapController;
  final Location _location = Location();
  LatLng _currentPosition = const LatLng(37.7749, -122.4194);

  @override
  void initState() {
    super.initState();
    _setInitialLocation();
  }

  void _setInitialLocation() async {
    var loc = await _location.getLocation();
    setState(() {
      _currentPosition = LatLng(loc.latitude!, loc.longitude!);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Neo Saver (${widget.role})"),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: _currentPosition,
          zoom: 15,
        ),
        onMapCreated: (controller) => mapController = controller,
        myLocationEnabled: true,
      ),
      floatingActionButton: widget.role == "User"
          ? FloatingActionButton.extended(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const RideRequestScreen()),
                );
              },
              label: const Text("Request a Ride"),
              icon: const Icon(Icons.local_taxi),
            )
          : null, 
    );
  }
}
