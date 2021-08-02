import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Información',
          style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromRGBO(74, 191, 180, 1),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              color: Color.fromRGBO(255, 240, 236, 1),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 3,
                  indicatorColor: Color.fromRGBO(255, 120, 83, 1),
                  tabs: [
                    Tab(
                      child: Container(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Recomendaciones",
                            style: TextStyle(
                                color: Color.fromRGBO(149, 152, 176, 1),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Sintomas",
                            style: TextStyle(
                                color: Color.fromRGBO(149, 152, 176, 1),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
              child: TabBarView(
                children: [
                  Container(
                      color: Color.fromRGBO(246, 248, 250, 1),
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: GridView.count(
                          primary: false,
                          crossAxisCount: 2,
                          mainAxisSpacing: 2,
                          crossAxisSpacing: 3,
                          children: [
                            _CardGrid(237, 230, 255, 'disinfectant',
                                'Usa gel antibacterial'),
                            _CardGrid(219, 239, 255, 'medical-mask',
                                'Porta mascarilla'),
                            _CardGrid(227, 228, 253, 'stayhome',
                                'Quedate en casa si te es posible'),
                            _CardGrid(
                                254, 227, 229, 'plane', 'Evita aglomeraciones'),
                          ],
                        ),
                      )),
                  Container(child: Text('Luke'))
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class _CardGrid extends StatelessWidget {
  final int r;
  final int g;
  final int b;
  final String ruta;
  final String titulo;
  const _CardGrid(this.r, this.g, this.b, this.ruta, this.titulo);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  child: SvgPicture.asset('assets/${this.ruta}.svg'),
                  color: Color.fromRGBO(this.r, this.g, this.b, 1),
                ),
              ),
              flex: 7,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(4),
                child: Text(
                  this.titulo,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(49, 55, 70, 1),
                      fontSize: 10.sp),
                ),
              ),
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}
