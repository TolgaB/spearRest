//
//  appCommunicate.m
//  Pods
//
//  Created by Tolga Beser on 7/4/15.
//
//

#import "appCommunicate.h"

@implementation appCommunicate

-(NSDictionary *)restCall:(NSString *)url{
    
  //  __block NSDictionary *tempStore;
    NSString *restCallString = [NSString stringWithFormat:@"%@", url];
    NSURL *tempurl = [NSURL URLWithString:restCallString];
    NSURLRequest *request = [NSURLRequest requestWithURL:tempurl];
    NSURLResponse* response;
    NSError* error = nil;
    NSData* result = [NSURLConnection sendSynchronousRequest:request  returningResponse:&response error:&error];
    NSDictionary *retrievedData = [NSJSONSerialization JSONObjectWithData:result
                                                                  options:0
                                                                    error:NULL];
    return retrievedData;
}
@end
