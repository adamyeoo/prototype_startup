import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import "package:latlong2/latlong.dart" as latLng;

class MapUI extends StatefulWidget {
  const MapUI({Key? key}) : super(key: key);

  @override
  State<MapUI> createState() => _MapUIState();
}

class _MapUIState extends State<MapUI> {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
          center: latLng.LatLng(43.662081, -79.395245),
          zoom: 9.2,
      ),
      layers: [
        TileLayerOptions(
            urlTemplate: "https://api.mapbox.com/styles/v1/samuelljackson/cl6fe9xdl002l14qxx1xtmgxa/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoic2FtdWVsbGphY2tzb24iLCJhIjoiY2w2ZmUyaGltMGhuZzNjbzM3dWpxa3ZjaiJ9.fqfaM5rCK8imQcu7kYh8GQ",
            additionalOptions: {
              'accessToken': 'pk.eyJ1Ijoic2FtdWVsbGphY2tzb24iLCJhIjoiY2w2ZmUyaGltMGhuZzNjbzM3dWpxa3ZjaiJ9.fqfaM5rCK8imQcu7kYh8GQ',
              // for street data
              'id': 'mapbox.mapbox-streets-v8'
            }
        ),
      ],
      // search bar (not working)
      children: [
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.red
          )
        ),
      ],
    );
  }
}
