# Dishwashers
Technical test for John Lewis by Iain McLean.

# Requirements

* Xcode 8.2.1/iOS 10.2 SDK
* Cocoapods 1.1.1 or later

# Building

1. Clone the project
1. Install cocoapods with Administrator privileges using ```sudo gem install cocoapods```
1. Open a terminal and issue the following command within the top level project directory: ```pod install```
1. Open the Xcode workspace file and build in the normal way

I chose Cocoapods as a dependency manager purely because:
 * It still has more support than Carthage, although personally I believe Carthage has more legs in the long run
 * It separates out libraries before compile time from the main project

# Solution Notes

I focussed on initial test-driven implementation of the main product grid screen however this requires a more in depth testing scenario due to the VIPER stack used.

The product detail screen is not complete for content but layout is handled for orientation using traits and size classes.  I have used a traits trick to make the iPad think it is in another size when it is indeed not to layout the screen for landscape orientation.

# Architecture

The app uses the VIPER architecture with concrete class instantiation for the up-flow and protocol orientation for the down-flow, this helps move away from the ```massive-view-controller``` issue but more importantly, it helps decouple the code into more manageable and understandable stack elements.

MVVM and MVC were considered, but I am a fan of VIPER and prefer to keep things clean and readable.

# Unit Testing

With less than 24 hours spent on this test, I concentrated in preparing tests for the VIPER stack to show the use of Unit testing in XCode.
 
# Credits & Libraries Used
 
* AlamofireImageView - by the Alamofire Software Foundation; a library written in Swift which makes working with images in a network environment much simpler and cleaner. I chose to use this because:
 * It reduces code volume and improves simplicity for populating a grid of ```UIImageView``` objects.

* KVNProgress - a fork of the implementation by AssistoLab, forked to add some extra functionality
 * A simple and easy to use display HUD, used purely here for user feedback

# Areas for Improvement
 * Use of Alamofire for Networking to reduce code volume, it is almost an industry standard now but I wanted to show the use of standard iOS Networking in this case.
 * Use of Reachability to monitor Network online status, which ultimately would help in providing better user feedback.
 * Unit testing improvements - Mocks, Spy's (and a lot more of them) and all the good things that come with proper TDD practices.
 * UITests
 * Fastlane, Fabric, BranchIO etc for analytics, crash management etc