# Getting Started with Cloud Anchors

## Overview

The **ar_flutter_reloaded** plugin utilizes the Google Cloud Anchor API to enable collaborative AR experiences. With **OAuth 2.0 authentication**, you can extend the lifetime of cloud anchors from 24 hours to up to 365 days, enhancing the capabilities of your AR applications. Follow these steps to set up your application and start creating immersive shared AR experiences.

---

## Setting up Google Cloud Anchor Service

The **Google Cloud Anchor API** is essential for uploading, storing, and downloading AR anchors. If your app uses collaborative AR features, complete the following setup:

### 1. Activate the Cloud Anchor API
- Go to the [Cloud Anchor API](https://console.cloud.google.com/apis/api/arcorecloudanchor.googleapis.com) page.
- Enable the API in your [Google Cloud Console](https://console.cloud.google.com) for your project.

---

### 2. Register the Android Part of Your Flutter Application

#### Steps for OAuth 2.0 Setup:
1. Open the [Google Cloud Platform Console](https://console.cloud.google.com).
2. Navigate to **APIs & Services > Credentials**.
3. Click **Create Credentials > OAuth client ID** and select **Android** as the Application type.
4. Enter:
    - **Name**: A descriptive name for your app.
    - **Package name**: This must match the package name in your `AndroidManifest.xml`.
    - **SHA-1 Certificate Fingerprint**: Run this command in your terminal:
      ```
      keytool -keystore ~/.android/debug.keystore -list -v
      ```
5. Click **Create Client ID**.
6. If required, configure the **OAuth Consent Screen**:
    - Go to the [OAuth Consent Screen](https://console.cloud.google.com/apis/credentials/consent) page.
    - Fill in details such as product name and support email.
    - Add required scopes, including `ARCore Cloud Anchor API`.

#### Keyless Authentication Setup:
1. Add the dependency in `android/app/build.gradle`:
   ```gradle
   implementation 'com.google.android.gms:play-services-auth:16+'
   ```
2. If using **ProGuard**, update `build.gradle`:
   ```gradle
   buildTypes {
       release {
           proguardFiles getDefaultProguardFile('proguard-android-optimize.txt'), 'proguard-rules.pro'
       }
   }
   ```
3. Add these rules to `proguard-rules.pro`:
   ```proguard
   -keep class com.google.android.gms.common.** { *; }
   -keep class com.google.android.gms.auth.** { *; }
   -keep class com.google.android.gms.tasks.** { *; }
   ```

---

### 3. Register the iOS Part of Your Flutter Application

#### Steps for Google Service Account Setup:
1. Navigate to **APIs & Services > Credentials**.
2. Create a **Service Account**:
    - Fill in a name and assign the role **Service Account Token Creator**.
    - Create and download the JSON private key file.
3. Add the JSON file to your Flutter project:
    - Rename it to `cloudAnchorKey.json`.
    - Move it to `example/ios/Runner`.
    - Open Xcode and add the file to the Runner target.

---

## Setting up Firebase (Optional)

If using **Firebase** for managing cloud anchors:
1. Create a Firebase project in the [Firebase Console](https://console.firebase.google.com).
2. Register your app for Android and iOS:
    - Download the `google-services.json` and `GoogleService-Info.plist` files, and place them in the respective directories (`android/app` and `ios/Runner`).
3. Update your Android `build.gradle` files:
    - Add:
      ```gradle
      classpath 'com.google.gms:google-services:4.3.3'
      ```
    - Apply the plugin:
      ```gradle
      apply plugin: 'com.google.gms.google-services'
      ```
4. Enable **Cloud Firestore** in the Firebase Console.

---

## Setting up Location Services

To enable location-based AR features:
1. Add the following to your `Info.plist` file for iOS:
   ```xml
   <key>NSLocationWhenInUseUsageDescription</key>
   <string>This app needs access to location when open.</string>
   <key>NSLocationAlwaysUsageDescription</key>
   <string>This app needs access to location when in the background.</string>
   ```

---

Now you're ready to create shared AR experiences with **ar_flutter_reloaded**! 🚀 Dive in and start building.