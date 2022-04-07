import 'package:flutter/material.dart';
import 'package:pos/screens/home/widgets/cart_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(47, 52, 71, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            color: const Color.fromRGBO(47, 52, 71, 1),
            child: const Text(
              'Appbar',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: const Color.fromRGBO(47, 52, 71, 1),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          width: double.infinity,
                          color: const Color.fromRGBO(47, 52, 71, 1),
                          child: const Text(
                            'Appbar',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            color: const Color.fromRGBO(244, 243, 248, 1),
                            child: const Text('Hotkey'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.35,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 0.1,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: const CartWidget(),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
