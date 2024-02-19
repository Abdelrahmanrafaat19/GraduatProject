import 'package:flutter/material.dart';

class ChairScreen extends StatefulWidget {
  const ChairScreen({super.key});

  @override
  State<ChairScreen> createState() => _ChairScreenState();
}

class _ChairScreenState extends State<ChairScreen> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      width: double.infinity,
      height: height * 0.5,
      child: GridView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 10,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return vertical();
        },
      ),
    );
  }
}

Widget vertical() {
  return Container(
    margin: EdgeInsets.all(10),
    child: Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://st.depositphotos.com/2101611/3925/v/600/depositphotos_39258143-stock-illustration-businessman-avatar-profile-picture.jpg'))),
          child: Icon(Icons.favorite_outline),
          alignment: Alignment.topRight,
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
                        color: const Color(0xff123456))),
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
