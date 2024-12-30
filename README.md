# IOS-Settings-App
Mobile Project

## Overview

This application is an iOS project that mimics the look and feel of the native Settings app on iOS, built with Swift using Xcode. The app demonstrates various UI elements and functionality to simulate a settings screen where users can set preferences.

### Features:

- **Profile Section**:
  - Displays a profile image with a "Change Picture" button.
  - Offers options to select an image from the gallery or take a new picture via an action sheet.
- **Username Input**:
  - Includes a text field for entering a username with a "Save" button.
  - Displays a confirmation alert upon saving the username.
- **Notification Preferences**:
  - Toggles for enabling/disabling push and email notifications.
- **Theme and Color Scheme**:
  - Segmented control to select themes (Light, Dark, System Default).
  - A color picker slider to choose the primary theme color, with a live preview.
- **Volume Control**:
  - Slider to adjust notification sound volume, displaying the level as a percentage.
- **Reset Preferences**:
  - A reset button that confirms and resets all settings to default values.

## Project Structure

```
IOS-Settings-App/
├── IOS-Settings-App/                # Main application code
│   ├── AppDelegate.swift       # App lifecycle management
│   ├── SceneDelegate.swift     # Scene lifecycle management
│   ├── ViewController.swift    # Main view logic
│   ├── Info.plist              # Configuration file for the app
│   ├── Assets.xcassets/        # App icons and other image assets
│   └── Base.lproj/             # Storyboards for UI design
│       ├── LaunchScreen.storyboard
│       └── Main.storyboard
├── IOS-Settings-App.xcodeproj/      # Xcode project files
│   ├── project.pbxproj         # Project settings
│   ├── project.xcworkspace/    # Workspace settings
│   └── xcshareddata/           # Shared schemes
├── IOS-Settings-AppTests/           # Unit test files
├── IOS-Settings-AppUITests/         # UI test files
└── README.md                   # Project documentation
```

## Getting Started

### Prerequisites

- **Xcode**: Ensure you have Xcode installed on your macOS system.
- **iOS Version**: The project is configured to run on iOS 14.0 or later.

### Steps to Run

1. Clone the repository:
   ```bash
   git clone <repository_url>
   ```
2. Open the project in Xcode:
   ```bash
   open IOS-Settings-App/IOS-Settings-App.xcodeproj
   ```
3. Build and run the app on a simulator or a connected device.

## Tests

The project includes unit tests and UI tests located in the `IOS-Settings-AppTests` and `IOS-Settings-AppUITests` folders. To run tests:

1. Open the project in Xcode.
2. Select `Product > Test` from the menu or use the shortcut `Cmd + U`.

## Contribution

Feel free to contribute to this project by submitting pull requests or reporting issues. Contributions are welcome!

