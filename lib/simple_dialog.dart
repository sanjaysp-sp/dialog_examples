import 'package:flutter/material.dart';

class SimpleDialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleDialog Demo'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showSimpleDialog(context),
          child: Text('Show SimpleDialog'),
        ),
      ),
    );
  }

  void _showSimpleDialog(BuildContext context) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('Choose an item'),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context, 'Tv '),
              child: Text('Tv'),
            ),
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context, ' Fridge'),
              child: Text(' Fridge'),
            ),
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
