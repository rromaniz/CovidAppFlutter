import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoTop extends StatelessWidget {
  const InfoTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.3,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Card(
            color: Color.fromRGBO(68, 133, 252, 1),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width * 0.5,
                    height: size.height * 0.3,
                    child: Column(
                      children: [
                        Text(
                          'Utilizar mascarilla, salva vidas',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Evita grandes aglomeraciones y los espacios mal ventilados',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white60,
                              fontSize: 13),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          'Acude a los centros de pruebas gratuitas solo si presentas sintomas',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(217, 200, 134, 1),
                              fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: SvgPicture.asset('assets/mask-woman.svg'))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
