import 'package:flutter/material.dart';
import 'package:project/layout/ourProducts/our_product.dart';
import 'package:project/shared/component/drawer.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    String lan = 'Arabic';
    var _key = GlobalKey<ScaffoldState>();
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Hello hoda! ',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            Text(
              'How can we help you today? ',
              style: TextStyle(color: Color(0xff123456), fontSize: 13),
            )
          ],
        ),
        leading: Container(
          margin: const EdgeInsets.only(left: 10, top: 10),
          child: FloatingActionButton(
            elevation: 0.0,
            onPressed: (() {}),
            child: Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://st.depositphotos.com/2101611/3925/v/600/depositphotos_39258143-stock-illustration-businessman-avatar-profile-picture.jpg')))),
          ),
        ),
        actions: [
          InkWell(
            onTap: () => _key.currentState!.openEndDrawer(),
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              child: const Icon(
                Icons.settings,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
      extendBody: true,
      body: ListView(
        children: [
          //Search Field بس محتاج تعديل
          Container(
            width: 10,
            height: 40,
            margin: EdgeInsets.only(
                top: width * 0.05, left: width * 0.08, right: width * 0.08),
            child: TextField(
              cursorHeight: 25,
              decoration: InputDecoration(
                  filled: true,
                  suffixIcon: const Icon(
                    Icons.search,
                    size: 40,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 1.0))),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: width * 0.03, left: width * 0.03),
            child: const ListTile(
              title: Text(
                'Most popular',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff123456)),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            width: double.infinity,
            height: 150,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return vertical();
              },
            ),
          ),
          ListTile(
            title: const Text('Our product',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff123456))),
            trailing: InkWell(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const OurProduct())),
              child: const Text('See ALL>',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            width: width,
            height: height * 0.5,
            child: GridView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                return vertical();
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: Colors.black,
          selectedFontSize: 10,
          backgroundColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Setting'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined), label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.camera_indoor), label: 'cAMERSa'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'LogOut'),
          ]),
      endDrawer: const DrawerClass(),
    );
  }
}

Widget vertical() {
  return Container(
    height: 150,
    width: 100,
    margin: const EdgeInsets.only(bottom: 10),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 150,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/visa-logo-.png'))),
          alignment: Alignment.topRight,
          child: const Icon(Icons.favorite_outline),
        ),
        SizedBox(
          height: 0.0,
        ),
        Container(
            width: 100,
            // height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('green Sheet',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff123456))),
                Text('20',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown))
              ],
            ))
      ],
    ),
  );
}
