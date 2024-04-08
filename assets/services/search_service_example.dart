import 'package:flutter/material.dart';
import 'package:flutter_up/locator.dart';
import 'package:flutter_up/services/up_search.dart';
import 'package:flutter_up/widgets/up_icon.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up/widgets/up_textfield.dart';

class SearchServiceExample extends StatefulWidget {
  const SearchServiceExample({super.key});

  @override
  State<SearchServiceExample> createState() => _SearchServiceExampleState();
}

class _SearchServiceExampleState extends State<SearchServiceExample> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Row(
            children: [
              SizedBox(
                width: 200,
                child: UpTextField(
                  controller: controller,
                  label: "Search",
                  prefixIcon: const UpIcon(
                    icon: Icons.search,
                    semanticLabel: 'Search',
                  ),
                  suffixIcon: controller.text.isNotEmpty
                      ? IconButton(
                          icon: const UpIcon(
                            icon: Icons.clear,
                            semanticLabel: 'Clear Search text',
                          ),
                          onPressed: () {
                            controller.text = "";
                            setState(() {
                              ServiceManager<UpSearchService>().remove();
                            });
                          },
                        )
                      : null,
                  keyboardType: TextInputType.text,
                  onChanged: (input) {
                    setState(() {
                      ServiceManager<UpSearchService>().update(input);
                    });
                  },
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Row(children: [
            StreamBuilder(
                stream: ServiceManager<UpSearchService>().stream$,
                builder: (context, searchStream) {
                  if (searchStream.hasData) {
                    return UpText("Search stream :  ${searchStream.data}");
                  } else {
                    return const UpText("");
                  }
                })
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Row(children: [
            UpText(
                "Search text current value :  ${ServiceManager<UpSearchService>().current}")
          ]),
        ),
      ],
    );
  }
}
