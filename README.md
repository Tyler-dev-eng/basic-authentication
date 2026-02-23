# Basic Authentication

A Flutter app with Firebase Authentication and Google Sign-In. Sign up or log in with email/password or use Google Sign-In, then access a protected home screen.

## Features

- **Email/password** – Register and log in with email and password
- **Google Sign-In** – One-tap sign-in with Google
- **Auth state** – Automatic navigation based on Firebase Auth state (logged in → Home, logged out → Login/Register)
- **Reusable UI** – Shared components: `MyButton`, `MyTextField`, `SquareTile`

## Project structure

```
lib/
├── main.dart                 # App entry, Firebase init
├── firebase_options.dart     # Generated Firebase config (gitignored in production)
├── pages/
│   ├── auth_page.dart        # Auth state stream → Home or Login/Register
│   ├── login_or_register_page.dart
│   ├── login_page.dart
│   ├── register.dart
│   └── home_page.dart
├── services/
│   └── auth_service.dart     # Firebase Auth + Google Sign-In
└── components/
    ├── my_button.dart
    ├── my_textfield.dart
    └── square_tile.dart
```

## Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (SDK ^3.11.0)
- A [Firebase](https://console.firebase.google.com/) project with:
  - **Authentication** enabled (Email/Password and Google sign-in methods)
  - iOS/Android apps registered and `google-services.json` (Android) / `GoogleService-Info.plist` (iOS) configured
- For Google Sign-In: OAuth client IDs set up in Firebase and (for iOS) URL scheme in `Info.plist`

## Getting started

1. **Clone and install**

   ```bash
   git clone <repo-url>
   cd basic_authentication
   flutter pub get
   ```

2. **Firebase setup**

   - Create a Firebase project and enable Email/Password and Google sign-in in **Authentication → Sign-in method**.
   - Add your iOS and/or Android app in the Firebase console.
   - For Flutter, you can use the [FlutterFire CLI](https://firebase.google.com/docs/flutter/setup) to generate config:

     ```bash
     dart run flutterfire configure
     ```

   This creates/updates `lib/firebase_options.dart` and configures platform files. If you configure manually, ensure `firebase_options.dart` exists and platform config files are in place.

3. **Run the app**

   ```bash
   flutter run
   ```

   Use a connected device or simulator (e.g. iPhone 16e).

## Dependencies

- `firebase_core` – Firebase initialization
- `firebase_auth` – Email/password and credential-based auth
- `google_sign_in` – Google Sign-In

## Resources

- [Flutter documentation](https://docs.flutter.dev/)
- [Firebase for Flutter](https://firebase.google.com/docs/flutter/setup)
- [Firebase Auth](https://firebase.google.com/docs/auth)
