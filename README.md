# ar_flutter_reloaded
[![pub package](https://img.shields.io/pub/v/ar_flutter_reloaded.svg)](https://pub.dev/packages/ar_flutter_reloaded)

Flutter Plugin for creating **collaborative Augmented Reality (AR)** experiences, supporting **ARKit** for iOS and **ARCore** for Android devices.

This plugin is a reimagined and enhanced version of the original **ar_flutter_plugin** by Lars Carius. Huge thanks to **Oleksandr Leuschenko** for the [arkit_flutter_plugin](https://github.com/olexale/arkit_flutter_plugin) and **Gian Marco Di Francesco** for the [arcore_flutter_plugin](https://github.com/giandifra/arcore_flutter_plugin), whose work laid the foundation for AR in Flutter. Gratitude also to **Lars Carius**, whose exceptional work inspired this reloaded version.

[GitHub Repository](https://github.com/TheJenilDGohel/ar_flutter_reloaded)

---

<div align="center">
  <img src="https://media.giphy.com/media/U3UP4fTE6QfuoooLaC/giphy.gif" alt="Dragon Ball Z Goku" />
  <p><em>GIF via <a href="https://giphy.com/gifs/TOEIAnimationUK-dragon-ball-z-son-goku-U3UP4fTE6QfuoooLaC">GIPHY</a></em></p>
</div>

---

## Getting Started

### Installing
Add the plugin to your Flutter project by running:
```bash
flutter pub add ar_flutter_reloaded
```  

Or manually add it to your `pubspec.yaml` file:
```yaml
dependencies:
  ar_flutter_reloaded: ^0.0.1
```  

Then, fetch the package using:
```bash
flutter pub get
```  

---

### Importing

Add this import to your Dart code:
```dart
import 'package:ar_flutter_reloaded/ar_flutter_plugin.dart';
```  

If you encounter issues with permissions on iOS, especially with the camera view, add the following to your `Podfile`:
```pod
post_install do |installer|
  installer.pods_project.targets.each do |target|
    flutter_additional_ios_build_settings(target)
    target.build_configurations.each do |config|
      config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] ||= [
        '$(inherited)',
        'PERMISSION_CAMERA=1',
        'PERMISSION_LOCATION=1',
        # Add other required permissions here
      ]
    end
  end
end
```  

---

## Example Applications

Explore the sample applications in the repository to understand how to use the plugin effectively:

| Example Name                 | Description                                                                                                                                                                                                                           | Code Link                                                                                                                                          |
|------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|
| **Debug Options**            | Visualize the world origin, feature points, and tracked planes with a simple AR scene.                                                                                                          | [Debug Options Code](https://github.com/TheJenilDGohel/ar_flutter_reloaded/blob/main/example/lib/examples/debug_options_example.dart)              |
| **Local & Online Objects**   | Place GLTF objects from assets, GLB objects from the web, or GLB objects from local storage. Modify scale, position, and orientation after placing objects.                                     | [Local & Online Objects Code](https://github.com/TheJenilDGohel/ar_flutter_reloaded/blob/main/example/lib/examples/local_and_online_objects.dart)  |
| **Objects on Planes**        | Tap on a plane to create an anchor with a 3D model attached.                                                                                                                                   | [Objects on Planes Code](https://github.com/TheJenilDGohel/ar_flutter_reloaded/blob/main/example/lib/examples/objects_on_planes_example.dart)      |
| **Cloud Anchors**            | Place objects, upload them to the cloud, and download them for shared AR experiences across multiple devices.                                                                                  | [Cloud Anchors Code](https://github.com/TheJenilDGohel/ar_flutter_reloaded/blob/main/example/lib/examples/cloud_anchors_example.dart)              |
| **External Object Management**| Manage 3D models dynamically using Firestore for shared AR experiences.                                                                                                                       | [External Model Management Code](https://github.com/TheJenilDGohel/ar_flutter_reloaded/blob/main/example/lib/examples/external_model_management.dart) |  

---

## Future Goals 🚀

This is just the beginning! The **ar_flutter_reloaded** plugin has ambitious plans for the future:

1. **Example Enhancements**:
   - Revamp the existing examples with realistic, interactive scenarios to better showcase the potential of AR.
   - Add new examples focusing on cutting-edge AR use cases like real-time collaboration, object manipulation, and interactive education.

2. **Architecture Overhaul**:
   - Refactor the plugin architecture to improve modularity, extensibility, and performance.
   - Adopt modern best practices to make the codebase easier to maintain and contribute to.

3. **Realistic Visuals**:
   - Introduce more visually appealing and realistic 3D models and AR interactions.
   - Add support for advanced rendering techniques like lighting and shadows for a lifelike AR experience.

4. **Cross-Device Collaboration**:
   - Enhance collaborative AR functionality to work seamlessly across multiple devices.
   - Add support for advanced synchronization features, making shared AR experiences more fluid.

5. **Advanced Features**:
   - Explore support for marker-based AR and object detection.
   - Add gesture-based interactions, such as scaling, rotation, and more.

6. **Documentation and Tutorials**:
   - Provide step-by-step guides and tutorials for common AR use cases to make onboarding easier for developers.
   - Regularly update documentation to reflect the latest changes and features.

Your feedback and contributions will help shape the future of this plugin!

---

## Contributing

Contributions are welcome! Whether it's bug fixes, new features, or discussions about improving the plugin, please:
- [Submit a Pull Request](https://github.com/TheJenilDGohel/ar_flutter_reloaded/pulls)
- [Report an Issue](https://github.com/TheJenilDGohel/ar_flutter_reloaded/issues)
- [Join the Discussion](https://github.com/TheJenilDGohel/ar_flutter_reloaded/discussions)

---

## Plugin Architecture

The plugin architecture has been carefully designed for extensibility and performance. Here’s a high-level view of its structure:

![Plugin Architecture](./AR_Plugin_Architecture_highlevel.svg)

---  

Get started with **ar_flutter_reloaded** and bring your AR dreams to life! 🚀  