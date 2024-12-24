# Getting Started with Cloud Anchors

Bring your AR experiences to life with Cloud Anchors! Follow this guide to set up your app for hosting, saving, and sharing AR anchors across devices.

---

## Why Choose OAuth 2.0?

Using an **API key** limits anchor lifetime to **24 hours**, but with **OAuth 2.0**, anchors can last up to **365 days**. Here's how to configure OAuth for your app.

---

## Step 1: Set Up Google Cloud Anchor Service

The plugin uses Google Cloud Anchor API to manage AR anchors. Follow these steps to enable shared AR experiences:

### 1. **Activate Cloud Anchor API**
- Go to the [Google Cloud Console](https://console.cloud.google.com).
- Enable the [Cloud Anchor API](https://console.cloud.google.com/apis/api/arcorecloudanchor.googleapis.com) for your project.

### 2. **Configure for Android**
- Open the [Google Cloud Platform Console](https://console.cloud.google.com).
- Navigate to **APIs & Services > Credentials**.
- Create an OAuth client ID:
    - Choose **Application Type: Android**.
    - Use your app’s package name (found in `AndroidManifest.xml`).
    - Add the SHA-1 key (generate with: `keytool -keystore ~/.android/debug.keystore -list -v`).
- Add OAuth consent details:
    - Go to the [OAuth consent screen](https://console.cloud.google.com/apis/credentials/consent).
    - Provide a product name, support email, and select required API scopes (e.g., ARCore Cloud Anchor API).
- Update `build.gradle` and ProGuard rules for keyless authentication:
  ```gradle  
  dependencies {  
      implementation 'com.google.android.gms:play-services-auth:16+'  
  }  
  ```  
  Add ProGuard rules:
  ```java  
  -keep class com.google.android.gms.common.** { *; }  
  -keep class com.google.android.gms.auth.** { *; }  
  -keep class com.google.android.gms.tasks.** { *; }  
  ```  

### 3. **Configure for iOS**
- Create a Google Service account:
    - Go to **APIs & Services > Credentials**.
    - Add a new service account, assign the role **Service Account Token Creator**, and download the JSON key.
- Add the JSON key to your Flutter project:
    - Rename the file to `cloudAnchorKey.json`.
    - Add it to the `ios/Runner` directory and link it in Xcode.

---

## Step 2: Set Up Firebase

Firebase simplifies anchor distribution for shared AR experiences.

### 1. **Create a Firebase Project**
- Head to the [Firebase Console](https://console.firebase.google.com).

### 2. **Configure Android**
- Register your app and download the `google-services.json` file.
- Add it to `android/app` and update your `build.gradle` files:
  ```gradle  
  dependencies {  
      classpath 'com.google.gms:google-services:4.3.3'  
  }  
  ```  
  ```gradle  
  apply plugin: 'com.google.gms.google-services'  
  ```  

### 3. **Configure iOS**
- Register your app and download the `GoogleService-Info.plist` file.
- Add it to the `ios/Runner` directory and link it in Xcode.

### 4. **Enable Cloud Firestore**
- Go to [Firestore](https://console.firebase.google.com/firestore) and enable it for your project.

---

## Step 3: Enable Location Services

Add the following permissions to your iOS app’s `Info.plist`:
```xml  
<key>NSLocationWhenInUseUsageDescription</key>  
<string>This app needs access to location when open.</string>  
<key>NSLocationAlwaysUsageDescription</key>  
<string>This app needs access to location when in the background.</string>  
```  

---

With everything set up, you're ready to create collaborative AR experiences! 🌟