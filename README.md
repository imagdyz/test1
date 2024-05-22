# test1

This is a boilerplate project for Flutter. This can be used as a starting point for all Flutter projects.

## 1. Environment setup
This project uses the Flutter framework. Before starting, make sure that proper environment is setup.

### 1.1. Flutter setup
Follow the instructions on the [Flutter install](https://docs.flutter.dev/get-started/install).

_Note: iOS builds can only be built on a Mac._

### 1.2. IDE
Either [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio) can be used as an IDE for this project.

Check the [Offical Flutter Guide](https://docs.flutter.dev/get-started/editor?tab=vscode) for more details.

### 1.3. GIT and SSH
Make sure that [GIT](https://git-scm.com/download/mac) and [SSH](http://git.emaratech.ae/help/ssh/index#generate-an-ssh-key-pair) keys are properly setup.

## 2. Customizing the project
The project name should be updated whenever starting a new project.
The following classes and fields need to be updated:
- `/` root folder
- `pubspec.yaml`
  - Update the `name` (line 1)
- `env` files
  - Update the `APP_NAME` in the `env/dev.json`, `env/staging.json` and `env/prod.json` (line 4)
- `android/app/src/build.gradle`
  - Update the `android.defaultConfig.applicationId` to your unique application ID (line 72)

## 3. Project setup
The project uses code generation and multiple environments to automate boilerplate tasks. These tasks require several steps for setup.

### 3.1. First Run
The project uses code generation for generating some boilerpate code. Make sure to run the following commands before the first run.

Make sure that you are in the project root folder before typing these commands in the terminal.

#### 3.1.1 Setup dependencies
`flutter pub get`

#### 3.1.2. Build Runner
Required for Dependency Injection, Freezed model classes and JSON serialization
`dart run build_runner build --delete-conflicting-outputs`

### 3.2. Product flavors
The project has multiple flavors setup for easy switch between the different runtime environments. The build environment needs to be specified at compile using the build commands.

The project uses 3 environments as flavors:

| Env     | Description                                                                                  |
|---------|----------------------------------------------------------------------------------------------|
| dev     | Used by the developers for features development and testing. _Can contain significant bugs._ |
| staging | Used by the QA and for internal testing. _May contain some bugs._                            |
| prod    | Used by the clients and customers. _Should always be stable with negligible bugs._           |


### 3.3 Build and Run
The app can be run from the terminal using CLI commands or by using the debug command in the IDE.

#### 3.3.1 Using the Terminal
When running the app from the terminal, the running environment also needs to be specified. Make sure to use the appropriate commands based on the desired environment.

| Env     | CLI command                                            |
|---------|--------------------------------------------------------|
| dev     | `flutter run --dart-define-from-file=env/dev.json`     |
| staging | `flutter run --dart-define-from-file=env/staging.json` |
| prod    | `flutter run --dart-define-from-file=env/prod.json`    |

#### 3.3.2 Using Android Studio
The run configurations have been to the `.run` folder. Select the appropriate configuration when 
debugging from Android Studio.

#### 3.3.3

