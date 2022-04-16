import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        // color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountEmail: Text("Hello@gmail.com"),
                  accountName: Text("Subrata"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://www.biography.com/.image/t_share/MTc5ODc1NTM4NjMyOTc2Mzcz/gettyimages-693134468.jpg"),
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.black,
                ),
                title: Text(
                  "Home",
                  textScaleFactor: 1.2,
                ),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {},
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.black,
                ),
                title: Text(
                  "Email",
                  textScaleFactor: 1.2,
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.phone,
                  color: Colors.black,
                ),
                title: Text(
                  "Phone",
                  textScaleFactor: 1.2,
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.location,
                  color: Colors.black,
                ),
                title: Text(
                  "Location",
                  textScaleFactor: 1.2,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
