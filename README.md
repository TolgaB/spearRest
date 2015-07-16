# spearREST

[![Build Status](https://travis-ci.org/TolgaB/spearRest.svg?branch=master)](https://travis-ci.org/TolgaB/spearRest)
[![Version](https://img.shields.io/cocoapods/v/spearREST.svg?style=flat)](http://cocoapods.org/pods/spearREST)
[![License](https://img.shields.io/cocoapods/l/spearREST.svg?style=flat)](http://cocoapods.org/pods/spearREST)
[![Platform](https://img.shields.io/cocoapods/p/spearREST.svg?style=flat)](http://cocoapods.org/pods/spearREST)


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
There are 2 types of get calls one that returns a type of NSData and the other that returns an NSDictionary

To call the Nsdictionary one just call the method like this
```Objective-C
NSDictionary *result = [_communicate getRestCallAsDictionary:@"your url goes here"];
```

To call the NSData one just call the method like this
```Objective-C
NSData *result = [_communicate getRestCallAsData:@"your url goes here"];
```

##Using Post Calls
To use the post call you will give the method an array with your data such as
[0] - name=hello
[1] - pass=ilovekittens
You will also add the needed url your end code will look like one these
```Objective-C
NSDictionary *result = [_communicate postRestCallAsDictionary:@"your url here" params:array];
```
```Objective-C
NSData *result = [_communicate postRestCallAsData:@"your url here" params:array];
```

##Using Put Calls
To use a Put Call just call the method and give it your url and you're body of data. It will return a BOOL of tru or false depending on if it works or not.
```Objective-C
BOOL worked = [_communicate putRequestCall:@"your url here" bodyString:@"name=Tolga&pass=ILoveKittens"];
```

## Requirements

spearREST requires no seperate installations just add it to your project and import it.



## Installation

spearREST is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "spearREST"
```

# How the hell do you use REST?

The most important thing to remember while using REST is

##POST = Use when adding something

##GET = Use to get something

##PUT = Used to update something



##Get Requests

 The important thing to know about get requests is that you type in a url with filled in params like http:/ Hello/myname=hi&mypasss=no. That url is sent to the server and it will return data on the page which you retrieve. For iOS all you will need to do is get the url and fill in the required params. From there spearREST will retrieve the data and give it to you in type NSDATA.

##Post Requests

  The important thing to know about post requests is that you need a url and a list of params that you want to send such as name=hi pass=hello. After sending these the server will post onto the page whether you're data was added successfully. For iOS all you will need to do is give spearREST the url and the params, the returned data will be of type NSDATA

##Put Requests

Coming Soon

#Feautures coming out next update (1.3.0)
##Multipart requests
##Documentation connected with xcode
##Delete Requests
##Added guide (post)

##To Do List
Multipart -Coming out in version 1.3.0
Delete Requests - Coming out in version 1.3.0
Dynamic Requests
Guide on how to use REST - DONE


## Author

Tolga Beser

## License

spearREST is available under the MIT license. See the LICENSE file for more info.
