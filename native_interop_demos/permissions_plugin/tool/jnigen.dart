import 'dart:io';

import 'package:jnigen/jnigen.dart';

void main(List<String> args) {
  final packageRoot = Platform.script.resolve('../');
  generateJniBindings(
    Config(
      outputConfig: OutputConfig(
        dartConfig: DartCodeOutputConfig(
          path: packageRoot.resolve('lib/gen/android.g.dart'),
          structure: OutputStructure.singleFile,
        ),
      ),
      androidSdkConfig: AndroidSdkConfig(addGradleDeps: true, androidExample: 'example/'),
      //sourcePath: [packageRoot.resolve('android/src/main/kotlin/com/example/android_launch_activity')],
      classes: [
        // provided by Android OS
        'androidx.activity.ComponentActivity',
        'androidx.fragment.app.FragmentActivity',
        'androidx.activity.result.ActivityResult',
        'androidx.activity.result.ActivityResultCallback',
        'androidx.activity.result.ActivityResultLauncher',
        'androidx.activity.result.contract.ActivityResultContract',
        'android.content.Intent',
        'android.content.Context',
      ],
    ),
  );
}
