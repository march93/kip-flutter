import 'package:flutter/material.dart';
import 'package:kip/widgets/KipBar.dart';
import 'package:kip/widgets/MenuItem.dart';
import 'package:kip/widgets/NoteItem.dart';

class KipMainPage extends StatefulWidget {
  @override
  _KipMainPageState createState() => _KipMainPageState();
}

class _KipMainPageState extends State<KipMainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.check_box),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.brush),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.mic),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.photo),
                onPressed: () {
                  showPictureChoiceDialog(context);
                },
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            KipBar(onRequestLogin: () {
              onNavigateToLogin(context);
            }),
            Expanded(
              child: ListView(
                children: <Widget>[
                  NoteItem(
                    child: ListTile(leading: Text("ffff")),
                  ),
                  NoteItem(
                    child: ListTile(leading: Text("ffff")),
                  ),
                  NoteItem(
                    child: ListTile(leading: Text("ffff")),
                  ),
                  NoteItem(
                    child: ListTile(leading: Text("ffff")),
                  ),
                  NoteItem(
                    child: ListTile(leading: Text("ffff")),
                  ),
                  NoteItem(
                    child: ListTile(leading: Text("ffff")),
                  ),
                ],
              ),
            )
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            addNote(context);
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  addNote(BuildContext context) {
    Navigator.of(context).pushNamed('/addNote');
  }

  onNavigateToLogin(BuildContext context) {
    Navigator.of(context).pushNamed('/login');
  }

  void showPictureChoiceDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Add Image"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            MenuItem(
              color: Colors.white,
              onPress: (){
                //TODO: TAKE PHOTO
              },
              icon: Icons.photo_camera,
              text: "Take photo",
            ),
            MenuItem(
              color: Colors.white,
              onPress: (){
                //TODO: Pick image
              },
              icon: Icons.image,
              text: "Coose image",
            )
          ],
        ),
      ),
    );
  }
}
