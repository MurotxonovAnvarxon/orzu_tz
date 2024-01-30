import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class XitTovar extends StatefulWidget {
  const XitTovar({super.key});

  @override
  State<XitTovar> createState() => _XitTovarState();
}

class _XitTovarState extends State<XitTovar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 38.0),
      child: Container(
        width: 349,
        height: 303,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 0.05),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Center(
                      child: Image.asset(
                    "assets/images/ps5.png",
                    width: 170,
                    height: 130,
                  )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 18.0),
                  child: Text(
                    "Микроволновая печь соло Gorenje\n MO17E1W",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 22.0, left: 31),
                  child: Row(
                    children: [
                      const Column(
                        children: [
                          Text(
                            "2 000 000 сум",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          Text(
                            "1 750 000 сум",
                            style: TextStyle(
                              color: Color(0xFFFF7010),
                              fontSize: 16,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          width: 86,
                          height: 32,
                          decoration: const BoxDecoration(
                              color: Color(0xFFFF7011),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Image.asset("assets/images/shoppingcart.png"),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
