import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 35.h),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Card(
            color: Color.fromRGBO(236, 112, 111, 1),
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
                            'Busca atención médica solo si:',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white70,
                                fontSize: 16.sp),
                          ),
                          SizedBox(
                            height: 1.5.h,
                          ),
                          Text(
                            '- Tienes dificultad para respirar o sensación de falta de aire',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white60,
                                fontSize: 10.sp),
                          ),
                          SizedBox(
                            height: 1.5.h,
                          ),
                          Text(
                            '- Tienes Dolor o presión en el pecho',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white60,
                                fontSize: 10.sp),
                          ),
                          SizedBox(
                            height: 1.5.h,
                          ),
                          Text(
                            '- Tienes incapacidad para hablar o moverte',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white60,
                                fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ),
                    Expanded(child: SvgPicture.asset('assets/doctor-woman.svg'))
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
