import 'package:flutter_up/helpers/up_console.dart';

info() {
  upConsole(UpConsoleLevel.info, "Hello World!");
}

error() {
  upConsole(UpConsoleLevel.error, "It is error");
}

debug() {
  upConsole(UpConsoleLevel.debug, "Debug");
}

