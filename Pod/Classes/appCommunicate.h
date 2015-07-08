//
//  appCommunicate.h
//  Pods
//
//  Created by Tolga Beser on 7/4/15.
//
//

#import <Foundation/Foundation.h>

@interface appCommunicate : NSObject

//This calls the get request and returns a NSDictionary
-(NSDictionary *)getRestCallAsDictionary:(NSString *)url;
//This calls the post request and returns a NSDictionary
-(NSDictionary *)postRestCallAsDictionary:(NSString *)url params:(NSArray *)theParams;
//This calls the get request and returns NSDATA
-(NSData *)getRestCallAsData:(NSString *)url;
//This calls the post request and returns NSDATA
-(NSData *)postRestCallAsData:(NSString *)url params:(NSArray *)theParams;
//This calls the put request
-(BOOL)putRequestCall:(NSString *)url bodyString:(NSString *)theBody;







@end
