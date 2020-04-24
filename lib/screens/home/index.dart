import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> _bandMembers = [];
  TextEditingController _bandMemberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jairo\'s Band'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _bandMemberController,
              decoration: InputDecoration(
                labelText: 'Integrante',
              ),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _bandMembers.add(_bandMemberController.text);
                  _bandMemberController.clear();
                });
                print(_bandMembers);
              },
              child: Text('Adicionar integrante'),
            ),
            Flexible(
              child: ListView.builder(
                itemCount: _bandMembers.length,
                itemBuilder: (context, index) {
                  String bandMember = _bandMembers[index];
                  return ListTile(
                    title: Text(bandMember),
                  );
                },
              ),
            ),
          ],
          ),
      ),
    );
  }
}