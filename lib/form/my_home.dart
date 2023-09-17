import 'package:flutter/material.dart';
import 'package:tugas1/page/login_page.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  void logout(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
            child: Text(
              'Dashboard',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(25),
              crossAxisCount: 2,
              children: <Widget>[
                Card(
                  margin: const EdgeInsets.all(5),
                  child: InkWell(
                    onTap: () {},
                    splashColor: Colors.blue,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          Icon(
                            Icons.person,
                            size: 70,
                            color: Colors.blueAccent,
                          ),
                          Text("Profile", style: TextStyle(fontSize: 17.0)),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(5),
                  child: InkWell(
                    onTap: () {},
                    splashColor: Colors.blue,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          Icon(
                            Icons.settings,
                            size: 70,
                            color: Colors.blueGrey,
                          ),
                          Text("Pengaturan", style: TextStyle(fontSize: 17.0)),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(5),
                  child: InkWell(
                    onTap: () {},
                    splashColor: Colors.blue,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          Icon(
                            Icons.shopping_cart,
                            size: 70,
                            color: Colors.deepOrange,
                          ),
                          Text("Belanja", style: TextStyle(fontSize: 17.0)),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(5),
                  child: InkWell(
                    onTap: () {
                      logout(context);
                    },
                    splashColor: Colors.blue,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          Icon(
                            Icons.logout,
                            size: 70,
                            color: Colors.green,
                          ),
                          Text("Keluar", style: TextStyle(fontSize: 17.0)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
