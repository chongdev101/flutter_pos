import 'package:flutter/material.dart';
import 'package:pos/screens/home/widgets/cart_body_widget.dart';
import 'package:pos/widgets/button_widget.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
            bottom: 4,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Bills',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              ButtonWidget(
                'ระบุรหัสสินค้า',
                onClicked: () {},
                buttonHeight: 50,
                style: const TextStyle(color: Colors.red),
                colorPrimary: Colors.white,
                borderColor: Colors.red,
              ),
            ],
          ),
        ),
        const Expanded(
          child: CartBodyWidget(),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        '฿',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        '971.00',
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text('รวมทั้งสิ้น: 10 หน่วย')
                ],
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 200.0,
                ),
                child: ButtonWidget(
                  'ชำระเงิน',
                  onClicked: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
