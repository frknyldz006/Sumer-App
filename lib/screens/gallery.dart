import 'dart:convert';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sumer/sumerico_icons.dart';
import 'package:sumer/translations/locale_keys.g.dart';
import 'package:sumer/widgets/sumer_appbar.dart';

import '../constants.dart';

class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  bool langswitcher = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: sumerAppBar(context, langswitcher)),
          backgroundColor: SumerColors().darkGrey,
          body: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString("assets/images/imagesfromassets.json"),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var getData = json.decode(snapshot.data.toString());
                return GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  physics: BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                        onTap: () {
                          print("tapped");
                          showCustomDialog(context, getData, index);
                        },
                        child: galleryItem(getData[index]["directory"]));
                    // gesture ile kapla
                  },
                  itemCount: getData.length ?? 0,
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(
                    backgroundColor: SumerColors().darkGrey,
                    color: SumerColors().yellow,
                  ),
                );
              }
            },
          )),
    );
  }

  showCustomDialog(context, getData, index) {
    return showDialog(
        context: context,
        builder: (context) {
          return Stack(
            alignment: Alignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                    color: SumerColors().darkGrey,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Colors.black,
                        offset: Offset(0, 5),
                      )
                    ]),
                height: 350,
                width: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(width: 6, color: Colors.white),
                        ),
                        child: Image.asset(
                          "${getData[index]["directory"]}",
                          fit: BoxFit.fitHeight,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 12),
                      child: Text(
                        getData[index]["exp"],
                        style: TextStyle(
                            color: SumerColors().white,
                            fontFamily: "Comfortaar",
                            fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 210,
                child: Container(
                    decoration: BoxDecoration(
                        color: SumerColors().darkGrey,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            color: Colors.black,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: Material(
                      color: Colors.transparent,
                      child: IconButton(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        iconSize: 24,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Sumerico.close_square),
                      ),
                    )),
              )
            ],
          );
        });
  }
}

Widget galleryItem(image) {
  return Stack(children: [
    Container(
      decoration: BoxDecoration(
          color: SumerColors().lightGrey,
          borderRadius: BorderRadius.circular(40),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
    ),
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(39),
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: <Color>[SumerColors().darkGrey, Colors.transparent],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Sumerico.search,
                color: SumerColors().white,
              )
            ],
          ),
        ),
      ),
    )
  ]);
}
