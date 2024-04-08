import 'package:flutter/material.dart';
import 'package:flutter_up/helpers/up_image_helper.dart';
import 'package:flutter_up/widgets/up_text.dart';

class ImageHelperExample extends StatefulWidget {
  const ImageHelperExample({Key? key}) : super(key: key);

  @override
  State<ImageHelperExample> createState() => _ImageHelperExampleState();
}

class _ImageHelperExampleState extends State<ImageHelperExample> {
  Size? size;
  getImageDimension() async {
    size = await UpImageHelper.calculateImageDimension(
        Image.asset("assets/image.jpeg"));
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getImageDimension();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Row(
            children: [
              const UpText(
                "Image width : ",
              ),
              UpText("${size?.width ?? 0}"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Row(
            children: [
              const UpText(
                "Image height : ",
              ),
              UpText("${size?.height ?? 0}"),
            ],
          ),
        ),
      ],
    );
  }
}
