import 'package:flutter/material.dart';
import 'package:shopping_page/userInterface/home/header_info.dart';
import 'package:shopping_page/userInterface/home/product_display_widget.dart';
import 'package:shopping_page/userInterface/utils/constants.dart';
import 'package:shopping_page/userInterface/utils/sizeconfig.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderInfo(),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: getScreenWidth(20),
                  vertical: getScreenHeight(18)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: getScreenWidth(309),
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: const Color(0xffF4F5FE),
                            filled: true,
                            hintText: 'Search for products or stores',
                            icon:
                                Image.asset('assets/images/search-normal.png'),
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18)),
                                borderSide: BorderSide.none)),
                      )),
                  Container(
                    color: const Color(0xffF4F5FE),
                    child: Image.asset(
                      'assets/images/scan.png',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0XffF1F3FE),
              height: getScreenHeight(405),
              width: getScreenWidth(414),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: getScreenHeight(14)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: getScreenHeight(174),
                      width: double.maxFinite,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: productList.length,
                        itemBuilder: (context, index) {
                          productList.shuffle();
                          return ProductDisplayWidget(
                              productname: productList[index].productname,
                              productMainPrice:
                                  productList[index].productMainPrice,
                              productDiscoutPrice:
                                  productList[index].productDiscoutPrice,
                              productImage: productList[index].productImage,
                              sellerImage: productList[index].sellerImage);
                        },
                      ),
                    ),
                    SizedBox(
                      height: getScreenHeight(174),
                      width: double.maxFinite,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: productList.length,
                        itemBuilder: (context, index) {
                          productList.shuffle();
                          return ProductDisplayWidget(
                              productname: productList[index].productname,
                              productMainPrice:
                                  productList[index].productMainPrice,
                              productDiscoutPrice:
                                  productList[index].productDiscoutPrice,
                              productImage: productList[index].productImage,
                              sellerImage: productList[index].sellerImage);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getScreenWidth(20),
                        vertical: getScreenHeight(33)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Featured Merchants',
                          style: TextStyle(
                              fontSize: getScreenHeight(16),
                              fontWeight: FontWeight.w800,
                              color: Colors.black87,
                              fontStyle: FontStyle.normal),
                        ),
                        Text(
                          'View all',
                          style: TextStyle(
                            color: const Color(0xFF274FED),
                            fontSize: getScreenHeight(12),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      featuredMerChants(
                          'assets/images/merchartone.png', 'Justrite'),
                      featuredMerChants(
                          'assets/images/merchartone2.png', 'Orile Restaurant'),
                      featuredMerChants(
                          'assets/images/merchartone3.png', 'Slot'),
                      featuredMerChants(
                          'assets/images/merchartone5.png', 'Pointek')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      featuredMerChants(
                          'assets/images/merchartone7.png', 'ogabassey'),
                      featuredMerChants(
                          'assets/images/merchartone6776.png', 'Casper Stores'),
                      featuredMerChants(
                          'assets/images/merchartone9.png', 'Dreamworks '),
                      featuredMerChants(
                          'assets/images/merchartone00.png', 'Hubmart')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      featuredMerChants(
                          'assets/images/merchartonekj.png', 'Just Used'),
                      featuredMerChants(
                          'assets/images/merchartonejhgg.png', 'Just fones')
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

  SizedBox featuredMerChants(String imagePath, String name) {
    return SizedBox(
      height: 90,
      width: 90,
      child: Column(
        children: [
          SizedBox(
              child: Image.asset(
            imagePath,
            height: 50,
            width: 50,
          )),
          Text(
            name,
            style: TextStyle(
                fontSize: getScreenHeight(10), fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
