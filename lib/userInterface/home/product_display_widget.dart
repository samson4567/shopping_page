import 'package:flutter/material.dart';
import 'package:shopping_page/userInterface/utils/sizeconfig.dart';

class ProductDisplayWidget extends StatelessWidget {
  const ProductDisplayWidget({
    Key? key,
    required this.productname,
    required this.productMainPrice,
    required this.productDiscoutPrice,
    required this.productImage,
    required this.sellerImage,
  }) : super(key: key);
  final String productImage,
      sellerImage,
      productname,
      productDiscoutPrice,
      productMainPrice;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getScreenWidth(12)),
      child: Container(
        height: getScreenHeight(174),
        width: getScreenWidth(161),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.all(Radius.circular(getScreenHeight(14))),
            boxShadow: [
              BoxShadow(
                  blurRadius: 0.031,
                  spreadRadius: 0.3,
                  color: Colors.black87.withOpacity(0.1))
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getScreenWidth(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: getScreenHeight(100),
                child: Stack(children: [
                  Positioned(
                    left: 7,
                    top: 6,
                    child: CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      //foregroundColor: Colors.black,
                      child: Image.asset(sellerImage),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 25,
                    child: Image.asset(
                      productImage,
                      height: getScreenHeight(120),
                      width: getScreenWidth(112),
                    ),
                  ),
                ]),
              ),
              Text(                productname,

                style: TextStyle(
                    color: Colors.black87,
                    fontSize: getScreenHeight(14),
                    fontWeight: FontWeight.w900),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    productMainPrice,
                    style: TextStyle(
                        color: Color(0Xff274FED),
                        fontSize: getScreenHeight(14),
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    productDiscoutPrice,
                    style: TextStyle(
                        fontSize: getScreenHeight(12),
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.lineThrough),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
