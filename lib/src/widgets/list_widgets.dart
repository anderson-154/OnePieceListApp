import 'package:flutter/material.dart';
import 'package:onepiecelist/src/pages/detail_page.dart';

class ListCharacter extends StatefulWidget {
  const ListCharacter({super.key});

  @override
  State<ListCharacter> createState() => _ListCharacterState();
}

class _ListCharacterState extends State<ListCharacter> {
  double widthScreen=0;


  final titleTextStyle = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white,
  );

  final subTitleTextStyle = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Colors.blueGrey,
  );

  @override
  Widget build(BuildContext context) {

    widthScreen = MediaQuery.of(context).size.width-50;

    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          Text('Portadas', style: titleTextStyle),
          Row(
            children: [
              blockFront('p1.jpg', 'Portada 1', '2023'),            
              SizedBox(
                width: widthScreen*.03,
              ),
              blockFront('p2.jpg', 'Portada 2', '2018'),
              SizedBox(
                width: widthScreen*.03,
              ),
              blockFront('p3.jpg', 'Portada 3', '2017'),
            ],
          ),
          const Divider(
            thickness: 1,
            color: Colors.white30,
          ),
          const SizedBox(
            height: 10,
          ),
          Text('Personajes', style: titleTextStyle),
          blockCharacters('Nombre',0xff21E295,'o1'),
          blockCharacters('Nombre',0xff21E295,'o2'),
          blockCharacters('Nombre',0xff21E295,'o3'),
          blockCharacters('Nombre',0xff21E295,'o4'),
          blockCharacters('Nombre',0xff21E295,'o5'),
          blockCharacters('Nombre',0xff21E295,'o6'),
          

        ],
      ),
    );
  }

  Widget blockCharacters (String name, int color, String img){
    return GestureDetector(
      onTap: () => {
        Navigator.of(context).push(MaterialPageRoute(builder: ((context)=> const DetailPage())))
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(82, 43, 43, 43),
        ),
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(color),
                        blurRadius: 8,
                        offset: const Offset(0, 0),
                        blurStyle: BlurStyle.normal
                      ),
                    ],
                  borderRadius: BorderRadius.circular(20)
                  ),
                  child: Image.asset('assets/$img.png'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(name, style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white
                  ),
                ),
              ],
            ),
            IconButton(
              icon: const Icon(Icons.more_vert_outlined, size: 28, color: Colors.white),
                onPressed: () {}
            )
          ],
        ),
      ),
    );
  }

  Widget blockFront (String img, String title, String subtitle){
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(
            'assets/$img', 
            width: widthScreen*.31, 
            height: 110,fit: 
            BoxFit.cover,
          ),
        ),
        const SizedBox(
            height: 15,
        ),
        RichText(
          text: TextSpan(
            text: '$title ', style: const TextStyle(
              color: Colors.white70,
              fontSize: 14
            ),
            children: [
              TextSpan(
                text: subtitle, style: const TextStyle(
                  color: Colors.white30,
                  fontSize: 12
                )
              )
            ]
          )
        )
      ],
    );
  }
}