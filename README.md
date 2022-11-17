# Pre-requisites
- Install your IDE of choice - Android Studio or Visual Studio Code
- Install Flutter SDK for your OS
- Met Flutter platform dependencies by running "flutter doctor" command
- Clone this folder from github or download the zip file
- Open this folder in any code editor 
- Run the command in terminal in the root of this folder `flutter pub get`
- Project is setup and we are ready to perfom testing
- All the test scripts are written in `test` folder in the root.
- Run the command in terminal in the root of this project folder `flutter test test/login_controller_test.dart`
  
  This command will run the `test` which is in `test\login_controller_test.dart` 
  all the test in this file `login_controller_test.dart` will be run and output will be shown in terminal 


# TYPES OF TEST [FLUTTER] 
1) Unit test
2) Widget test
3) Integration test

To perform these test we have created some files in this project folder

# PROJECT STRUCTURE [UNIT] TESTING

- in lib folder we have define login_controller.dart which contains a function login which will return
  true or false depends on parameters.
  we will be using this file for [1st] type of testing i.e unit testing.
- To perform unit testing we have created login_controller_test.dart file in
  test folder.
- To [unit] test any function in login_controller.dart we have used test() function
- test function requires two paramters i.e description and callback function
- callback function perform the test and show output in terminal
- To combine two different test() functions we use the group function provided by flutter_test 
- Run the following command 
  `flutter test test/login_controller_test.dart` to run the test the login_controller_test.dart

  
# PROJECT STRUCTURE [WIDGET] TESTING
 
- in lib folder we have define login_form.dart which contains a two input fields i.e email and password and a button
  we enter email address and password in the fields and tap the button to login.
  we will be using this file for [2nd] type of testing i.e widget testing.
  
- To perform widget testing we have created login_widget_test.dart file in
  test folder.

- To [widget] test any function in login_controller.dart we have used testWidgets() function
  
- test function requires two paramters i.e description and callback function
  
- callback function perform the test and show output in terminal
  
- To combine two different test() functions we use the group function provided by flutter_test 



# PROJECT STRUCTURE [INTEGRATION] TESTING

- in lib folder we have define three files. all these files will be used in integration testing

 each file contains a widget/screen login_form.dart, dashboard.dart and profile.dart.
 the flow is user enter email and password and tap the button to login in login_form 
 and navigate to dashboard page and click the button in dashboard to open the profile form.
 we will be using these files for [3rd] type of testing i.e integration testing.
  
- To perform integration testing we have added below code in pubspec.yaml under dev_dependencies
  integration_test:
    sdk: flutter

- We have created a folder integration_test
- inside that folder we have created app_test.dart. This file will contain all 
  test which will be a part of our integration test.
- To run the test we need to run this command `flutter test integration_test/app_test.dart`
  in terminal in the root of the project.
- If multiple devices are connected and we run this command we need to select the emulator/simulator
  where we want to run the test.
- Integration test actually run on device and simulate all the test steps

- In app_test.dart file we have to define the main function.
- We call function IntegrationTestWidgetsFlutterBinding.ensureInitialized(); to initialize the integration testing
- We define group function which requires two parameters i.e description and callback functions.
- All test functions are defined inside the callback function.


# General points for testing in flutter 

- In any flutter project to enable testing add the following lines in pubsec.yaml 
  under dev_dependencies

 flutter_test:
    sdk: flutter
