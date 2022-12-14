import 'dart:async';

import 'package:tridev/src/cli/command.dart';
import 'package:tridev/src/cli/commands/auth.dart';
import 'package:tridev/src/cli/commands/build.dart';
import 'package:tridev/src/cli/commands/create.dart';
import 'package:tridev/src/cli/commands/db.dart';
import 'package:tridev/src/cli/commands/document.dart';
import 'package:tridev/src/cli/commands/serve.dart';
import 'package:tridev/src/cli/commands/setup.dart';

class Runner extends CLICommand {
  Runner() {
    registerCommand(CLITemplateCreator());
    registerCommand(CLIDatabase());
    registerCommand(CLIServer());
    registerCommand(CLISetup());
    registerCommand(CLIAuth());
    registerCommand(CLIDocument());
    registerCommand(CLIBuild());
  }

  @override
  Future<int> handle() async {
    printHelp();
    return 0;
  }

  @override
  String get name {
    return "tridev";
  }

  @override
  String get description {
    return "Tridev is a tool for managing Tridev applications.";
  }
}
