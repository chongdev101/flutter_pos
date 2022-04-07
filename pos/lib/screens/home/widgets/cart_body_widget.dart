import 'package:flutter/material.dart';

class CartBodyWidget extends StatelessWidget {
  const CartBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fullWidth = ((MediaQuery.of(context).size.width * 0.35) + 40) / 3;

    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black.withOpacity(0.1),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '${index + 1}',
                            style: const TextStyle(color: Colors.black54),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "โกโก้ คลาวด์ มัคคิอาโต $fullWidth",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        border: Border.all(color: Colors.red, width: 1),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: fullWidth,
                      child: Row(
                        children: const [
                          SizedBox(width: 20),
                          Text('฿'),
                          SizedBox(width: 5),
                          Text('170'),
                          SizedBox(width: 5),
                          Text(
                            '/หน่วย',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 160,
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              border: Border.all(color: Colors.red, width: 1),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.horizontal_rule,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Expanded(
                            child: Text(
                              '140',
                              style: TextStyle(
                                color: Colors.red,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.red,
                              border: Border.all(color: Colors.red, width: 1),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
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
                            '140',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 8),
    );
  }
}
