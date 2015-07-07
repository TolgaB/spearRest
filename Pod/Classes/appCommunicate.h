//
//  appCommunicate.h
//  Pods
//
//  Created by Tolga Beser on 7/4/15.
//
//

#import <Foundation/Foundation.h>

@interface appCommunicate : NSObject

//This calls the get request
-(NSDictionary *)getRestCall:(NSString *)url;
//This calls the post request
-(NSDictionary *)postRestCall:(NSString *)url params:(NSArray *)theParams;
//This calls the put request
-(BOOL)putRequestCall:(NSString *)url bodyString:(NSString *)theBody;







@end
