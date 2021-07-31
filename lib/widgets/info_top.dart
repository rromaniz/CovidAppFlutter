import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoTop extends StatelessWidget {
  const InfoTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 35.h,
      ),
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
                    width: 50.w,
                    height: 30.h,
                    child: Column(
                      children: [
                        Text(
                          'Utilizar mascarilla, salva vidas',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                              fontSize: 16.sp),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          'Evita grandes aglomeraciones y los espacios mal ventilados',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white60,
                              fontSize: 11.sp),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Text(
                          'Acude a los centros de pruebas gratuitas solo si presentas sintomas',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(217, 200, 134, 1),
                              fontSize: 9.sp),
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
