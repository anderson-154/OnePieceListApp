import 'package:flutter/material.dart';

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
          //blockCharacters('Nombre',0xff21E295,'imagen')

        ],
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