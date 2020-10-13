import 'dart:io';

import '../../../shared/interfaces/igenerate_layers.dart';

class GenerateDomain implements IGenerateLayers {
  @override
  Future<bool> call(String path) async {
    var isValidDirectory = await Directory(path).exists();

    if (isValidDirectory) {
      var dir = await Directory('$path/domain').create();

      await Directory('${dir.path}/entities').create();
      await Directory('${dir.path}/usecases').create();
      await Directory('${dir.path}/repositories').create();
      await Directory('${dir.path}/errors').create();
      return true;
    } else {
      return false;
    }
  }
}
