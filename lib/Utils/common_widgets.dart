import 'package:flutter/material.dart';
import 'package:mobo_app/Config/app_theme.dart';


class CommonWidgets {
  static final progressIndicator = Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              height: 20,
              width: 20,
              margin: const EdgeInsets.all(5),
              child: const CircularProgressIndicator(
                  strokeWidth: 2.0, backgroundColor: Colors.blue),
            ),
          ),
        ],
      ));

  // void progressIndicator = Column(
  //    crossAxisAlignment: CrossAxisAlignment.center,
  //    mainAxisAlignment: MainAxisAlignment.center,
  //    children: <Widget>[
  //      Center(
  //        child: Container(
  //          height: 17,
  //          width: 17,
  //          margin: EdgeInsets.all(5),
  //          child: CircularProgressIndicator(
  //              strokeWidth: 2.5,
  //              color: AppTheme.appBackgroundColorforCard2,
  //              backgroundColor: Colors.amber[600]),
  //        ),
  //      ),
  //    ],
  //  );

  static progressIndicatorCustom(double height, double width, double stroke) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                height: height,
                width: width,
                margin: EdgeInsets.all(5),
                child: CircularProgressIndicator(
                  strokeWidth: stroke,
                  backgroundColor: Colors.white,
                  semanticsLabel: "Loading",
                ),
              ),
            ),
          ],
        ));
  }

  static Widget fullScreenButton(
      BuildContext context, String text, VoidCallback callback) {
    return SizedBox(
      height: 45,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 0.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            gradient: LinearGradient(
                colors: [
                  AppTheme.appBackgroundColorforCard2,
                  AppTheme.appBackgroundColorforCard2
                ],
                begin: const FractionalOffset(0.0, 1.0),
                end: const FractionalOffset(0.0, 0.0),
                stops: const [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: MaterialButton(
              highlightColor: AppTheme.appBackgroundColorforCard4,
              splashColor: AppTheme.appBackgroundColorforCard1,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0))),
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 2.0),
                  child: Text("NEXT",
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          letterSpacing: 1.5))),
              onPressed: 
            
                callback
              ),
        ),
      ),
    );
  }

  static Widget customDevider(BuildContext context, double customWidth) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        color: Colors.black12.withOpacity(0.05),
        width: customWidth,
        height: 0.4,
      ),
    );
  }
}
