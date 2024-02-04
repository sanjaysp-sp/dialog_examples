import 'package:flutter/material.dart';

class CustomDialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Dialog Demo'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showCustomDialog(context),
          child: Text('Show Custom Dialog'),
        ),
      ),
    );
  }

  void _showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(' Dialog', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
                  SizedBox(height: 15),
                  Text('This is a  dialog.', style: TextStyle(fontSize: 18)),
                  SizedBox(height: 24),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text('Close', style: TextStyle(fontSize: 18)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
