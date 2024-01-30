import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orzu_tz/util/slider_demo2.dart';

import '../../util/item_recommended.dart';
import '../../util/testFlutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images = [
    "assets/images/rectange_item.png",
    "assets/images/rectange_item.png",
    "assets/images/rectange_item.png",
    "assets/images/rectange_item.png",
    "assets/images/rectange_item.png",
  ];

  bool isSelect1 = false;
  bool isSelect2 = false;
  bool isSelect3 = false;

  List<String> category = [
    "Новинки",
    "Популярное",
    "Скидки + Рассрочка",
    "Новинки",
    "Популярное",
    "Скидки + Рассрочка"
  ];
  bool isSelectColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF0F0F0),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 48.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Image.asset("assets/icons/location.png"),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 98.0),
                          child: Text(
                            'ORZUGRAND',
                            style: TextStyle(
                              color: Color(0xFFFF7010),
                              fontSize: 18,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w800,
                              height: 0.07,
                              letterSpacing: 1.08,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 98.0),
                          child: Image.asset("assets/icons/messages.png"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0, left: 16),
                    child: Row(
                      children: [
                        Image.asset("assets/icons/profil.png"),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Здравствуйте, ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w600,
                                  height: 0.06,
                                ),
                              ),
                              TextSpan(
                                text: 'Дониёр',
                                style: TextStyle(
                                  color: Color(0xFF14A23C),
                                  fontSize: 16,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w600,
                                  height: 0.06,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  // const SliderDemo(),
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return SliderDemo();
                          }),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 28.0),
                child: Container(
                  color: Colors.white,
                  height: 2100,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Container(
                          // width: 368,
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          padding: EdgeInsets.symmetric(vertical: 16),
                          // height: 40,
                          decoration: const BoxDecoration(
                              color: Color(0xFFF0F0F0),
                              borderRadius:
                                  BorderRadius.all((Radius.circular(10)))),
                          // color: const Color(0xFFF0F0F0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 13.0),
                                child: Image.asset(
                                    "assets/icons/search_normal.png"),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 14.0),
                                child: Text(
                                  'Поиск товаров',
                                  style: TextStyle(
                                    color: Color(0xFF7B7B7B),
                                    fontSize: 14,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w600,
                                    // height: 0.07,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Container(
                          width: double.infinity,
                          height: 200,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: images.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      left: index == 0 ? 16 : 0,
                                      right:
                                          index == images.length - 1 ? 16 : 8,
                                      top: 10,
                                      bottom: 10),
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    child: Image.asset(
                                      images[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFF7010),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Все акции',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 16.0, top: 50),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              Text(
                                'Товар дня',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(right: 16.0),
                                child: Text(
                                  '22:33:15',
                                  style: TextStyle(
                                    color: Color(0xFF7B7B7B),
                                    fontSize: 15,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
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
                                      isSelect1 == true
                                          ? "assets/images/ps5.png"
                                          : isSelect2 == true
                                              ? "assets/images/iphone2.png"
                                              : isSelect3 == true
                                                  ? "assets/images/armchair2.png"
                                                  : "assets/images/ps5.png",
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
                                    padding: const EdgeInsets.only(
                                        top: 22.0, left: 31),
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
                                                decoration:
                                                    TextDecoration.lineThrough,
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
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Container(
                                            width: 86,
                                            height: 32,
                                            decoration: const BoxDecoration(
                                                color: Color(0xFFFF7011),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                            child: Image.asset(
                                                "assets/images/shoppingcart.png"),
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
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 11.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                isSelect1 = !isSelect1;
                                if (isSelect3 == true) {
                                  isSelect3 = false;
                                }
                                if (isSelect2 == true) {
                                  isSelect2 = false;
                                }
                                setState(() {});
                              },
                              child: Container(
                                width: 34,
                                height: 34,
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://via.placeholder.com/34x34"),
                                    fit: BoxFit.cover,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 2,
                                        color: isSelect1
                                            ? Color(0xFFFF9F5F)
                                            : Colors.grey),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                child: Image.asset("assets/images/ps5.png"),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () {
                                isSelect2 = !isSelect2;
                                if (isSelect1 == true) {
                                  isSelect1 = false;
                                }
                                if (isSelect3 == true) {
                                  isSelect3 = false;
                                }
                                setState(() {});
                              },
                              child: Container(
                                width: 34,
                                height: 34,
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://via.placeholder.com/34x34"),
                                    fit: BoxFit.cover,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 2,
                                        color: isSelect2
                                            ? Color(0xFFFF9F5F)
                                            : Colors.grey),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                child: Image.asset("assets/images/iphone.png"),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () {
                                isSelect3 = !isSelect3;
                                if (isSelect1 == true) {
                                  isSelect1 = false;
                                }
                                if (isSelect2 == true) {
                                  isSelect2 = false;
                                }
                                setState(() {});
                              },
                              child: Container(
                                width: 34,
                                height: 34,
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://via.placeholder.com/34x34"),
                                    fit: BoxFit.cover,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 2,
                                        color: isSelect3
                                            ? Color(0xFFFF9F5F)
                                            : Colors.grey),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                child:
                                    Image.asset("assets/images/armchair.png"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 156.0, top: 40),
                        child: Text(
                          'Рекомендуем вам',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w700,
                            height: 0.05,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 18.0),
                        child: Container(
                          height: 30,
                          child: ListView.builder(
                              itemCount: category.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Row(
                                  children: [
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        isSelectColor = true;
                                      },
                                      child: Text(
                                        category[index],
                                        style: const TextStyle(
                                          color: Color(0xFF7B7B7B),
                                          fontSize: 16,
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10)
                                  ],
                                );
                              }),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          height: 700,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.1),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        child: Column(
                                          children: [
                                            Container(
                                                width: 400,
                                                height: 200,
                                                child: ItemRec(
                                                    "Электрическая варочная поверхность MAUNFELD EEHE.32.4B",
                                                    "1 750 000 сум",
                                                    "assets/images/pilisos.png")),
                                            Container(
                                                width: 400,
                                                height: 200,
                                                child: ItemRec(
                                                    "Электрическая варочная поверхность MAUNFELD EEHE.32.4B",
                                                    "1 750 000 сум",
                                                    "assets/images/ps5.png")),
                                            Container(
                                                width: 400,
                                                height: 200,
                                                child: ItemRec(
                                                    "Электрическая варочная поверхность MAUNFELD EEHE.32.4B",
                                                    "1 750 000 сум",
                                                    "assets/images/xolodilnik.png")),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 18.0),
                                        child: Container(
                                          width: 329,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8)),
                                              color: Color(0xFFFF7010)),
                                          child: Center(
                                              child: Text(
                                            "Смотреть все 15",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontFamily: 'Open Sans',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'ORZU',
                              style: TextStyle(
                                color: Color(0xFF14A23C),
                                fontSize: 22,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w700,
                                height: 0.05,
                              ),
                            ),
                            Text(
                              'BLOG',
                              style: TextStyle(
                                color: Color(0xFFFF7010),
                                fontSize: 22,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w700,
                                height: 0.05,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: SizedBox(
                          height: 166,
                          child: ListView.builder(
                              itemCount: 10,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: SizedBox(
                                    width: 300,
                                    child: Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10)),
                                          child: Image.asset(
                                            width: 300,
                                            "assets/images/windows.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 12.0, top: 17),
                                          child: Container(
                                            width: 73,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(6)),
                                                color: Colors.white.withOpacity(
                                                    0.800000011920929)),
                                            child: const Center(
                                                child: Text("Статья")),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(top: 88.0),
                                          child: Text(
                                            textAlign: TextAlign.center,
                                            "Топ-20 лучших недорогих планшетов\n на сегодняшний день",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontFamily: 'Open Sans',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Container(
                          width: 367,
                          height: 40,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10))
                                ,color:  Color(0xFFFF7010)
                          ),
                          child: const Center(
                            child: Text("Читать все", style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w700,
                              height: 0.06,
                            ), ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 78.0),
                        child: Catalog(),
                      )
                    ],
                  ),
                ),
              ),
            )
            // SliverGrid.builder(
            //     gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            //         crossAxisCount: 1,
            //         mainAxisSpacing: 15.0,
            //         crossAxisSpacing: 15.0,
            //         mainAxisExtent: 195.0),
            //     itemCount: 10,
            //     itemBuilder: (context, index) {
            //       return SliderDemo();
            //     })
          ],
        ));
  }
}
