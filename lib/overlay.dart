import 'package:flutter/material.dart';

class OverlayExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Overlay '),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showOverlay(context),
          child: Text('Show Overlay'),
        ),
      ),
    );
  }

  void _showOverlay(BuildContext context) {
    OverlayEntry overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: MediaQuery.of(context).size.height * 0.4,
        left: MediaQuery.of(context).size.width * 0.1,
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding: EdgeInsets.all(10),
            color: Colors.black54,
            child: Text(
              'This is an overlay',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );

    // Insert the overlay entry into the overlay
    Overlay.of(context).insert(overlayEntry);

    // Remove the overlay after 3 seconds
    Future.delayed(Duration(seconds: 3)).then((value) => overlayEntry.remove());
  }
}
