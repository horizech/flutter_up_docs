import 'package:flutter/cupertino.dart';
import 'package:flutter_up/locator.dart';
import 'package:flutter_up/services/up_url.dart';
import 'package:flutter_up/widgets/up_button.dart';

class URLService extends StatelessWidget {
  const URLService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    urlServiceExample() async {
      await ServiceManager<UpUrlService>().openUrl("https://google.com/");
    }

    return UpButton(
      isRounded: true,
      roundedBorderRadius: 8,
      onPress: () {
        urlServiceExample();
      },
      child: const Text("Open google"),
    );
  }
}
