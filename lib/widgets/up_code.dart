import 'package:dart_code_viewer2/dart_code_viewer2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class UpCode extends StatelessWidget {
  final String? code;
  final String? assetCode;
  final double codeHeight;
  final double maxHeight;
  final EdgeInsetsGeometry padding;
  const UpCode(
      {super.key,
      this.code,
      this.assetCode,
      this.codeHeight = 256,
      this.maxHeight = 256,
      this.padding = const EdgeInsets.only(top: 12)});

  String _fixAssetCode(String data) {
    return data.replaceAll("\u000d", "").replaceAll("\u0022", "'");
  }

  Widget _fixedWidget(String text) {
    return Padding(
      padding: padding,
      child: DartCodeViewer(
        backgroundColor: Colors.grey[100],
        text,
        height: codeHeight,
        // backgroundColor: GoogleFonts.robotoMono().copyWith(color: Colors.pink),
      ),
    );
  }

  Widget _scrollableWidget(String text) {
    return Container(
      height: maxHeight,
      padding: padding,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: DartCodeViewer(
          backgroundColor: Colors.grey[100],
          text,
          height: codeHeight,
          width: 10000,
          // backgroundColor: GoogleFonts.robotoMono().copyWith(color: Colors.pink),
        ),
      ),
    );
  }

  Widget _showCode(String text) {
    if (maxHeight >= codeHeight) {
      return _fixedWidget(text.trim());
    } else {
      return _scrollableWidget(text.trim());
    }
  }

  Widget _showMessage(String message) {
    return SizedBox(
      height: maxHeight,
      child: Text(message),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (code != null) {
      return _showCode(code!);
    } else if (assetCode != null) {
      return FutureBuilder(
        future: rootBundle.loadString(assetCode!),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              return _showCode(_fixAssetCode(snapshot.data ?? ""));
            } else {
              return _showMessage("Error occured while loading Code!");
            }
          } else {
            return _showMessage("Loading!");
          }
        },
      );
    } else {
      return _showMessage("Nothing to show!");
    }
  }
}
