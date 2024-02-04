import 'package:alertdialog/simple_dialog.dart';
import 'package:alertdialog/toast.dart';
import 'package:flutter/material.dart';
import 'Dialog.dart';
import 'alert_dialog.dart';
import 'overlay.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dialogs Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialogs Demo Home'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AlertDialogPage()),
                );
              },
              child: Text('Show AlertDialog'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SimpleDialogPage()),
                );
              },
              child: Text('Show SimpleDialog'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CustomDialogPage()),
                );
              },
              child: Text('Show Custom Dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OverlayExamplePage()),
                );
              },
              child: Text('Show Overlay Example'),
            ),
            ElevatedButton(
              onPressed: () => ToastMessage.show(context, 'This is a toast message!'),
              child: Text('Show Toast Message'),
            ),


          ],
        ),
      ),
    );
  }
}
