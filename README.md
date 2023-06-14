# ios-epic-math-testrunner

## :evergreen_tree: Purpose

An XCUITest project used to test EpicMath, but kept in a separate repository. 
Serves as an example of how such a project could be set up. 
The artifacts this project creates are called testrunners and can be installed as an app on an iOS device or simulator. 
Launching this app will start the ui tests. 

## :seedling: Getting started

To get a valid testrunner file, the project must be built for testing. This can be done in two ways. 

### 1. Using XCode

First you open the project in Xcode. Once opened navigate to `Product > Build for` and select `Testing`.
Alternatively you can enter the key combination `Cmd + Shift + U`. 
You can view the file by navigating to `Product` and selecting `Show Build Folder in Finder`. 
This will open the build folder. 
The app can be found under `Build > Products > Debug-iphone{target}`. 

### 2. Using the command line

Alternative to using Xcode you can use the command line to build the file. 
To do so run the following command:

```bash
xcodebuild -project PATH/TO/YOUR_WORKSPACE/YOUR_PROJECT.xcodeproj \
   -scheme YOUR_SCHEME \
   -derivedDataPath FOLDER_WITH_TEST_OUTPUT \
   -sdk iphoneos build-for-testing
```

### :cool: Technology stack

* Swift
* SwiftUI
* XCUITest
