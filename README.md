# Flutter Story Grid App

A simple Flutter app showcasing a grid of story previews fetched from an API, with error handling, smooth scrolling, and a clean design.

## Features
- **Grid Layout**: Displays stories in a grid format with thumbnail images.
- **API Integration**: Fetches story data from a mock API.
- **Error Handling**: Handles API errors and shows loading states.
- **Responsive UI**: Designed to look good on mobile devices.

## Screenshot



## How It Works
- The app fetches data from an API that returns a list of stories.
- Each story contains a title and thumbnail image.
- The grid dynamically displays these stories in a 2-column layout.

## Technologies Used
- **Flutter**: For the cross-platform user interface.
- **Dart**: Flutter’s programming language.
- **http**: For making HTTP requests to the API.
  
## Setup Instructions

### Prerequisites
Make sure you have the following installed:
- Flutter SDK
- Dart SDK
- Android Studio or Visual Studio Code with Flutter extension

### Getting Started
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/flutter-story-grid.git
   cd flutter-story-grid
2. Install dependencies:
   ```bash
   flutter pub get
3. Start the app:
   ```bash
   flutter run

## Folder Structure
```
  StoryApp/
  ├── lib/
  │   ├── pages/
  |   │   ├── my_tab_bar.dart   
  |   │   ├── my_story.dart      
  |   │   ├── my_grid_view.dart     
  |   │   ├── my_bottom_nav.dart      
  │   ├── pages/
  |   │   ├── homepage.dart      # Homepage of the app
  │   ├── main.dart              # Entry point of the app
  ├── pubspec.yaml               # Dependencies and assets configuration
  └── README.md                  # Project description
```
## Contributions
Feel free to fork this repository and submit pull requests for new features, bug fixes, or enhancements. Any contributions are greatly appreciated!



