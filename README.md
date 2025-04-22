# Food Order App

A Flutter-based mobile application for ordering food, featuring a clean and intuitive user interface with support for both vegetables and fish products.

## Features

- **Search Functionality**: Integrated search box for quick product lookup
- **Category Navigation**: Easy switching between vegetable and fish categories
- **Responsive Design**: Optimized for various screen sizes
- **Clean UI**: Modern and user-friendly interface

## Project Structure

The app follows a structured organization:

```
lib/
  ├── components/
  │   └── search_box.dart
  ├── screens/
  │   └── home/
  │       ├── home_body.dart
  │       ├── fishes_layer.dart
  │       ├── vegetablelayer.dart
  │       └── category_list.dart
```

## Getting Started

### Prerequisites

- Flutter SDK (Channel: stable)
- Android Studio / VS Code
- iOS development setup (for iOS deployment)

### Installation

1. Clone the repository:
```bash
git clone [your-repository-url]
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## Development Setup

### Android Setup
- Minimum SDK version: As specified in android/app/build.gradle
- Target SDK version: Latest stable
- Gradle version: 5.6.2

### iOS Setup
- Minimum iOS version: 8.0
- XCode project configuration included

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request

## License

This project is licensed under standard licensing terms - see the LICENSE file for details.

## Acknowledgments

- Flutter team for the excellent framework
- Contributors and maintainers

## Contact

For any queries or suggestions, please open an issue in the repository.
