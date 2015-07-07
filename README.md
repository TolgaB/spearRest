# spearREST

[![Build Status](https://travis-ci.org/TolgaB/spearRest.svg?branch=master)](https://travis-ci.org/TolgaB/spearRest)
[![Version](https://img.shields.io/cocoapods/v/spearREST.svg?style=flat)](http://cocoapods.org/pods/spearREST)
[![License](https://img.shields.io/cocoapods/l/spearREST.svg?style=flat)](http://cocoapods.org/pods/spearREST)
[![Platform](https://img.shields.io/cocoapods/p/spearREST.svg?style=flat)](http://cocoapods.org/pods/spearREST)

## ULTRA DUPER SUPER IMPORTANT

This project is nowhere near done doanload at your own risk.

## Install

To run the example project, clone the repo, and run `pod install`. --Work in progress

##SetUp

Import the appCommunicate into your .m file
```Objective-C
#import <appCommunicate.h>
```

Next set up a property of AppCommunicate class
```Objective-C
@property (nonatomic, strong) appCommunicate *communicate;
```

After that initialize _communicate (preferably in the viewDidLoad method)
```Objective-C
 _communicate = [[appCommunicate alloc] init];
```

##Using Get Calls
To use a get call simply give your url with the params in it and it will return an variable of type NSDictionary
```Objective-C
NSDictionary *result = [_communicate getRestCall:@"your url goes here"];
```

##Using Post Calls
TBD

##Using Put Calls
TBDs

## Requirements

spearREST requires no seperate installations just add it to your project and import it.

## Installation

spearREST is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "spearREST"
```

## Author

Tolga Beser

## License

spearREST is available under the MIT license. See the LICENSE file for more info.
