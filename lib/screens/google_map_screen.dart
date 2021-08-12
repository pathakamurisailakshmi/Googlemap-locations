//import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class GoogleMapScreen extends StatefulWidget {
  
  @override
  _GoogleMapScreen createState() => _GoogleMapScreen();
}

class _GoogleMapScreen extends State<GoogleMapScreen>{
  Set<Marker>_markers={ };
  void _onMapCreated(GoogleMapController controller){
    setState((){
  _markers.add(
     Marker(markerId:MarkerId('id-1'),
     position:LatLng(14.847420,78.389908),
     infoWindow:InfoWindow(title: 'Jammalamadugu',
     snippet: 'Mandal in kadapa',
     ),
     )
   );
 _markers.add(
     Marker(markerId:MarkerId('id-2'),
     position:LatLng(14.191110,79.160431),
     infoWindow:InfoWindow(title: 'Rajampet',
     snippet: 'Mandal in kadapa',
     ),
     )
     );
     _markers.add(
     Marker(markerId:MarkerId('id-3'),
     position:LatLng(14.584410,78.656517),
     infoWindow:InfoWindow(title: 'Kamalapuram',
     snippet: 'Mandal in kadapa',
     ),
     ),
     
   );

    }
    );
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Google Map'),
      ),
      body:GoogleMap(
        onMapCreated:_onMapCreated,
        markers:_markers,
        initialCameraPosition: CameraPosition(target: LatLng(15.912900,79.739990),
        zoom:15,
        ),  
      ),
      
      );
      
    
  }
}

