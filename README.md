# ar_flutter_reloaded
[![pub package](https://img.shields.io/pub/v/ar_flutter_reloaded.svg)](https://pub.dev/packages/ar_flutter_reloaded)

A Flutter plugin enabling collaborative Augmented Reality (AR) experiences with support for **ARKit** on iOS and **ARCore** on Android.

Special thanks to Oleksandr Leuschenko for the [arkit_flutter_plugin](https://github.com/olexale/arkit_flutter_plugin) and Gian Marco Di Francesco for the [arcore_flutter_plugin](https://github.com/giandifra/arcore_flutter_plugin), which served as the foundation for this project.

---

## Getting Started

### Installation

To add the plugin to your project, use:

```bash  
flutter pub add ar_flutter_reloaded  
```  

Alternatively, add this to your `pubspec.yaml` file and run `flutter pub get`:

```yaml  
dependencies:  
  ar_flutter_reloaded: ^0.7.3  
```  

### Importing

Include the plugin in your Dart code:

```dart  
import 'package:ar_flutter_reloaded/ar_flutter_reloaded.dart';  
```  

### iOS Permissions

If you encounter issues with camera permissions on iOS (e.g., a blank camera view), add the following configuration to the `Podfile` in your app’s `ios` directory:

```pod  
post_install do |installer|  
  installer.pods_project.targets.each do |target|  
    flutter_additional_ios_build_settings(target)  
    target.build_configurations.each do |config|  
      config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] ||= [  
        '$(inherited)',  
        'PERMISSION_CAMERA=1',  
        'PERMISSION_PHOTOS=1',  
        'PERMISSION_LOCATION=1',  
        'PERMISSION_SENSORS=1',  
        'PERMISSION_BLUETOOTH=1',  
      ]  
    end  
  end  
end  
```  

---

## Example Applications

Explore these sample implementations to see the plugin in action:

| Example Name                  | Description                                                                                                                                                                  | Code Link                                                                                     |  
|-------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------|  
| **Debug Options**             | A simple AR scene with toggles for visualizing the world origin, feature points, and tracked planes.                                                                        | [View Code](https://github.com/CariusLars/ar_flutter_reloaded/blob/main/example/lib/examples/debugoptionsexample.dart)            |  
| **Local & Online Objects**     | Place GLTF/GLB objects from assets, the web, or your device. Modify their scale, position, and rotation interactively.                                                      | [View Code](https://github.com/CariusLars/ar_flutter_reloaded/blob/main/example/lib/examples/localandwebobjectsexample.dart)      |  
| **Objects & Anchors on Planes** | Tap on a plane to create an anchor with a 3D model attached to it.                                                                                                          | [View Code](https://github.com/CariusLars/ar_flutter_reloaded/blob/main/example/lib/examples/objectgesturesexample.dart)          |  
| **Object Transformation Gestures** | Enables gestures to pan, rotate, or resize objects after placing them in the AR scene.                                                                                  | [View Code](https://github.com/CariusLars/ar_flutter_reloaded/blob/main/example/lib/examples/objectsonplanesexample.dart)         |  
| **Screenshots**               | Take snapshots of your AR scene using a screenshot function.                                                                                                               | [View Code](https://github.com/CariusLars/ar_flutter_reloaded/blob/main/example/lib/examples/screenshotexample.dart)              |  
| **Cloud Anchors**             | Share AR experiences across devices by uploading and downloading anchors using Google Cloud Anchor Service and Firebase. Requires additional setup.                          | [View Code](https://github.com/CariusLars/ar_flutter_reloaded/blob/main/example/lib/examples/cloudanchorexample.dart)             |  
| **External Object Management** | Uses Firestore to manage models and provides UI for selecting and placing objects. Requires Cloud Anchor Service and Firestore setup.                                        | [View Code](https://github.com/CariusLars/ar_flutter_reloaded/blob/main/example/lib/examples/externalmodelmanagementexample.dart) |  

For details on setting up Cloud Anchors, check the [Cloud Anchor Setup Guide](cloudAnchorSetup.md).

---

## Contributing

Contributions are always welcome! Here’s how you can help:
- Submit a [pull request](https://github.com/CariusLars/ar_flutter_reloaded/compare).
- Report issues or suggest features by [opening an issue](https://github.com/CariusLars/ar_flutter_reloaded/issues/new).
- Share your ideas in the [discussions section](https://github.com/CariusLars/ar_flutter_reloaded/discussions).

---

## Plugin Architecture

Below is a high-level overview of the plugin’s architecture:

![Plugin Architecture](./AR_Plugin_Architecture_highlevel.svg)

---  

Unleash the power of Augmented Reality in your Flutter apps today! 🚀  