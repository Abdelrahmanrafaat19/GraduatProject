import 'package:flutter/material.dart';

class DrawerClass extends StatelessWidget {
  const DrawerClass({super.key});

  @override
  Widget build(BuildContext context) {
    String lan = 'Arabic';
    var _key = GlobalKey<ScaffoldState>();
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: const EdgeInsets.only(bottom: 30),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: height * 0.08,
                    width: width * 0.08,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: FittedBox(
                        fit: BoxFit.cover,
                        child: Image.network(
                            'https://st.depositphotos.com/2101611/3925/v/600/depositphotos_39258143-stock-illustration-businessman-avatar-profile-picture.jpg')),
                  ),
                ),
                const Text('My Profil Name',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff123456))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.location_on,
                      color: Colors.grey,
                    ),
                    Text('Cairo, Elmenofia',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                  ],
                ),
              ],
            ),
          ),
          const ListTile(
            title: Text('Profile Setting',
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff123456))),
          ),
          const Divider(
            thickness: 2,
            indent: 20,
            endIndent: 20,
            color: Colors.grey,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const ListTile(
                title: Text('Theme',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
                trailing: Text(
                  'light >',
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 0.0),
                child: const ListTile(
                  title: Text('Language',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey)),
                  trailing: Text(
                    'English >',
                  ),
                ),
              )
            ],
          ),
          const ListTile(
            title: Text('Payment',
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff123456))),
          ),
          const Divider(
            thickness: 2,
            indent: 20,
            endIndent: 20,
            color: Colors.grey,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const ListTile(
                title: Text('Change card ',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
              ),
              Container(
                margin: const EdgeInsets.only(top: 0.0),
                child: const ListTile(
                  title: Text('Add new card',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey)),
                ),
              )
            ],
          ),
          const ListTile(
            title: Text('Support',
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff123456))),
          ),
          const Divider(
            thickness: 2,
            indent: 20,
            endIndent: 20,
            color: Colors.grey,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const ListTile(
                title: Text('Call us ',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
              ),
              Container(
                margin: const EdgeInsets.only(top: 0.0),
                child: const ListTile(
                  title: Text('Fedback',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey)),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
