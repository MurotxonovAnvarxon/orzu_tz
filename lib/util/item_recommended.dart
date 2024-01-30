import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ItemRec(
  String name,
  String price,
  String img,
) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              img,
              height: 91,
              width: 81,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 28.0),
                          child: Text(
                            // ASL NARXI EKAN BU TEKST
                            // HAMMASIDAYAM BOR KEREMAS JOYIDA
                            // OPTASHORASAN PARAMETRDANAM KELEDIGAN QIMADIM ATE
                            '2 000 000 сум',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w600,
                              // textDecoration: TextDecoration.lineThrough,
                              // height: 0.07,
                            ),
                          ),
                        ),
                        Text(
                          price,
                          style: TextStyle(
                            color: Color(0xFFFF7010),
                            fontSize: 16,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w700,
                            // height: 0.06,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 65,
                      height: 32,
                      padding: const EdgeInsets.only(
                          top: 3, left: 20, right: 19, bottom: 3),
                      decoration: ShapeDecoration(
                        color: Color(0xFFFF7010),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              height: double.infinity,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 26,
                                    height: 26,
                                    child: Image.asset(
                                        'assets/images/shoppingcart.png'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget ButtonOrange(
  String name,
) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 6),
    clipBehavior: Clip.antiAlias,
    decoration: ShapeDecoration(
      color: Color(0xFFFF7010),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Text(
          name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w700,
            height: 0.06,
          ),
        ),
      ),
    ),
  );
}

Widget ButtonOrange2(
  String name,
) {
  return Container(
    height: 28,
    width: 183,
    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 6),
    clipBehavior: Clip.antiAlias,
    decoration: ShapeDecoration(
      color: Color(0xFFFF7010),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0),
        child: Text(
          name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w700,
            height: 0.06,
          ),
        ),
      ),
    ),
  );
}

Widget Catalog() {
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
    child: Stack(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'У нас всё!',
                  style: TextStyle(
                    color: Color(0xFF14A23C),
                    fontSize: 14,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w700,
                    height: 0.07,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Хватит листать, \nпереходи в каталог.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: ButtonOrange2('Каталог'),
                )
              ],
            ),
          ),
          Positioned(bottom: 15, child: Image.asset('assets/images/note.png'))
        ],
      ),
    ]),
  );
}
