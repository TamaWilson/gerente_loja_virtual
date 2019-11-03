import 'package:flutter/material.dart';

class AddSizesDialog extends StatelessWidget {

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextField(
              controller: _controller,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text("Adicionar"),
                textColor: Colors.pinkAccent,
                onPressed: (){
                  Navigator.of(context).pop(_controller.text);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}