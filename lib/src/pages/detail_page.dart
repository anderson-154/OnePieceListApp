import 'package:flutter/material.dart';
import 'package:onepiecelist/src/widgets/blur_container.dart';
import 'package:onepiecelist/src/widgets/infoTitle_widget.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.color, required this.image, required this.name});

  final int color;
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(color),
              Colors.black
            ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 12),
                  child: SizedBox(
                    height: 500, 
                    child: Image.asset(image),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 20,
                  child: BlurContainer(
                    child: Container(
                      width: 160,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(0.1)
                      ),
                      child: Text(name, 
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white
                        ),
                      ),
                    )
                  )
                )

              ],
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text('$name #Personaje', 
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              )
            ),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text('One Piece', style: TextStyle(
                color: Colors.white70,
                ),
              ),
            ),
            const SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InfoTitle(title: 'Eiichiro Oda', subTitle: 'Creator'),
                  InfoTitle(title: 'Japan', subTitle: 'Country')
                ],
              ),
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(color)
              ),
              child: const Text('Volver', style: TextStyle(
                color: Colors.white60,
                fontSize: 16,
                fontWeight: FontWeight.bold
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}