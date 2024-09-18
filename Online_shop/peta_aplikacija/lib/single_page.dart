import 'package:flutter/material.dart';
import 'package:peta_aplikacija/models/single_page_model.dart';
import 'package:peta_aplikacija/single_c.dart';

class SinglePage extends StatelessWidget {
  SinglePageModel sPage;
  VoidCallback onTap;
  VoidCallback onTapLike;

  SinglePage({
    super.key,
    required this.sPage,
    required this.onTap,
    required this.onTapLike,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 256,
              width: 167,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color.fromARGB(255, 243, 248, 254),
                image: DecorationImage(
                    image: AssetImage(sPage.image), fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: onTapLike,
                    child: Container(
                      margin: EdgeInsets.only(top: 10, right: 10),
                      height: 34,
                      width: 34,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.favorite_outlined, //favorite_outline_rounded
                          size: 20,
                          color: sPage.press
                              ? Color.fromARGB(255, 255, 0, 0)
                              : Color.fromARGB(255, 206, 189, 189),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              sPage.des,
              style: TextStyle(
                fontSize: 18,
                color: const Color.fromARGB(255, 68, 68, 68),
              ),
            ),
            Text(
              "\$" + sPage.price.toString(),
              style: TextStyle(
                fontSize: 18,
                color: const Color.fromARGB(255, 156, 156, 156),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
