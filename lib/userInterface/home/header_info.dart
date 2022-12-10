
import 'package:flutter/material.dart';
import 'package:shopping_page/userInterface/utils/sizeconfig.dart';

class HeaderInfo extends StatelessWidget {
  const HeaderInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffD0DAFF),
      height: getScreenHeight(189),
      width: double.maxFinite,
      child: Padding(
        padding: EdgeInsets.only(
            top: getScreenHeight(70),
            bottom: getScreenHeight(43),
            right: getScreenWidth(16),
            left: getScreenWidth(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Pay later \neverywhere',
                  style: TextStyle(
                      fontSize: getScreenHeight(28),
                      fontWeight: FontWeight.w800,
                      color: Colors.black87),
                ),
                Image.asset('assets/images/info.png'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Shopping limit: ₦0',
                  style: TextStyle(
                      fontSize: getScreenHeight(12), color: Colors.black87),
                ),
                Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: getScreenWidth(16),
                        vertical: getScreenHeight(8)),
                    color: Color(0xff274FED),
                    child: Text('Activate Credit'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
