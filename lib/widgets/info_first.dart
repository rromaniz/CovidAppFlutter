import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(maxHeight: 35.h),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Card(
                color: Color.fromRGBO(179, 217, 209, 1),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(child: SvgPicture.asset('assets/remote.svg')),
                      Container(
                        width: 50.w,
                        height: 30.h,
                        child: Column(
                          children: [
                            Text(
                              'Mantente informado en medios oficiales',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54,
                                  fontSize: 16.sp),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Text(
                              'Sigue las recomendaciones de los organismos de salud pública de tu zona.',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                  fontSize: 11.sp),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Text(
                              'Vacunarse también puede proteger a las personas a tu alrededor ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                  fontSize: 10.sp),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )),
        ));
  }
}
