import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  static const id = "/contacts";

  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              size: 30,
              color: Colors.black,
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  bottom: 20,
                ),
                alignment: const Alignment(-0.9, 0.2),
                child: const Text(
                  "Contacts",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      ),

      body: ListView(
        children: const <Widget>[
          Card(
            elevation: 0,
            child: ListTile(
              subtitle: Text("Online"),
              leading: Image(
                image: AssetImage("assets/images/img.png"),
              ),
              title: Text(
                'Langle',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              leading: Image(
                image: AssetImage("assets/images/img.png"),
              ),
              title: Text(
                'Isco',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              leading: Image(
                image: AssetImage("assets/images/img.png"),
              ),
              title: Text(
                'Haverts',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              leading: Image(
                image: AssetImage("assets/images/img.png"),
              ),
              title: Text(
                'Dias',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              leading: Image(
                image: AssetImage("assets/images/img.png"),
              ),
              title: Text(
                'Mane',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              leading: Image(
                image: AssetImage("assets/images/img.png"),
              ),
              title: Text(
                'Mbappe',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,

        selectedIconTheme: const IconThemeData(size: 30),
        selectedItemColor: Colors.red,

        unselectedIconTheme: const IconThemeData(size: 20),
        unselectedItemColor: Colors.blueGrey,
        showUnselectedLabels: false,

        enableFeedback: true,

        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,

        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

        type: BottomNavigationBarType.fixed,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.ellipses_bubble),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
