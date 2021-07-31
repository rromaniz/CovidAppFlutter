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
                    width: size.width * 0.4,
                    height: size.height * 0.3,
                    child: Text('pol'),
                    color: Colors.amber,
                  ),
                  SizedBox(
                    width: size.width * 0.1,
                  ),
                  Expanded(child: SvgPicture.asset('assets/mask-man.svg'))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
