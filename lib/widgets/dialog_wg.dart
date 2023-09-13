
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

/// Set useRootNavigator = false becuase we want dialog near visible navigator.
dialogLoading(BuildContext context, {String? animationAsset, String? content, bool isDismissable = true, bool useRootNavigator = false}) {
  return showDialog(
    barrierDismissible: isDismissable,
    useRootNavigator: useRootNavigator,
    context: context,
    builder: (context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: progress(animationAsset: animationAsset, content: content)
      );
      // WillPopScope(
      //   onWillPop: () => Future(() => false),
      //   child: ,
      // );
    }
  );
}

/* Progress */
Widget progress({String? animationAsset, String? content}) {
  return const Material(
    color: Colors.transparent,
    child: Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CircularProgressIndicator()
            // Lottie.asset(
            //   animationAsset ?? "assets/animation/loading-block.json",
            //   repeat: true,
            //   // reverse: true,
            // ),
            // if (content == null)
            // Container()
            // else
            // Padding(
            //   padding: const EdgeInsets.only(bottom: 10.0, top: 16.0),
            //   child: MyTextConstant(
            //     text: content, 
            //     color2: hexaCodeToColor(AppColors.whiteColorHexa),
            //     fontWeight: FontWeight.w600,
            //     fontSize: 17,
            //   ),
            // ),
          ],
        )
      ],
    ),
  );
}