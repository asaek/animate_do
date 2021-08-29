import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:animate_do_app/providers/providers.dart';

class NavegacionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Notifications page'),
      ),
      floatingActionButton: _BotonFlotante(),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int numero = Provider.of<NavegacionProvider>(context).numero;
    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.deepOrange,
      items: [
        BottomNavigationBarItem(
            label: 'Bones', icon: FaIcon(FontAwesomeIcons.bone)),
        BottomNavigationBarItem(
          label: 'Notifications',
          icon: Stack(
            children: [
              FaIcon(FontAwesomeIcons.bell),
              Positioned(
                top: 0,
                right: 0,
                // child:
                //     Icon(Icons.brightness_1, size: 15, color: Colors.redAccent),
                child: BounceInDown(
                  from: 30,
                  animate: (numero > 0) ? true : false,
                  child: Bounce(
                    from: 20,
                    controller: (controller) =>
                        Provider.of<NavegacionProvider>(context)
                            .bounceController = controller,
                    child: Container(
                      width: 12,
                      height: 12,
                      child: Text('$numero',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w200,
                              fontSize: 12)),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.redAccent, shape: BoxShape.circle),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        BottomNavigationBarItem(
            label: 'My Cat', icon: FaIcon(FontAwesomeIcons.cat)),
      ],
    );
  }
}

class _BotonFlotante extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.deepOrange,
      child: FaIcon(
        FontAwesomeIcons.play,
      ),
      onPressed: () {
        final notimodel =
            Provider.of<NavegacionProvider>(context, listen: false);

        int numero = notimodel.numero;
        numero++;
        notimodel.numero = numero;

        if (numero >= 2) {
          // Future.microtask(() {
          //   AnimationController controller =
          //       Provider.of<NavegacionProvider>(context, listen: false)
          //           .bounceController;
          //   controller.forward(from: 0.0);
          // });
          final controller = notimodel.bounceController;
          controller!.forward(from: 0.0);
        }
      },
    );
  }
}
