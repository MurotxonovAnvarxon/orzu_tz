import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  const SliderDemo({super.key});

  @override
  State<SliderDemo> createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: Row(
        children: [
          const SizedBox(
            width: 15,
          ),
          Container(
            width: 292,
            height: 152,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Column(
                  children: [
                    const Text(
                      'Готов к выдаче',
                      style: TextStyle(
                        color: Color(0xFFFF7010),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w700,
                        height: 0.06,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 24.0),
                      child: Text(
                        'Заказ №10021122',
                        style: TextStyle(
                          color: Color(0xFF7B7B7B),
                          fontSize: 14,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w600,
                          height: 0.07,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 48.0, left: 15),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 151,
                          height: 34,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18, vertical: 6),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFFF7010),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Забрать заказ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w700,
                                  height: 0.07,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 250.0, top: 15),
                child: Image.asset("assets/images/tick.png"),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 74.0, left: 15),
                child: Text(
                  'Самовывоз до 29 марта',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                    height: 0.07,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 195.0, top: 55),
                child: Image.asset("assets/images/box.png"),
              ),
            ]),
          ),
          SizedBox(width: 7.5,)
        ],
      ),
    );
  }
}
