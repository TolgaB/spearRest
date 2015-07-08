//
//  appCommunicate.m
//  Pods
//
//  Created by Tolga Beser on 7/4/15.
//
//

#import "appCommunicate.h"

@implementation appCommunicate

-(NSDictionary *)getRestCallAsDictionary:(NSString *)url{
    
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
    if (retrievedData == NULL) {
        NSLog(@"spearRest::::ERROR:::::no data was given from the url:%@", url);
        return NULL;
    }
    else {
    return retrievedData;
      
    }
}

-(NSDictionary *)postRestCallAsDictionary:(NSString *)url params:(NSArray *)theParams {
    //This assumes that data will be given such as theParams[0] is equal to @"hello=string"
    NSString *bodyData;
    for (int i = 0; i < theParams.count; i ++) {
        if (bodyData != NULL) {
            bodyData = [NSString stringWithFormat:@"%@&%@", bodyData, theParams[i]];
        }
        else {
            bodyData = [NSString stringWithFormat:@"%@", theParams[0]];
        }
    }
    NSMutableURLRequest *postRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:url]];
    [postRequest setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [postRequest setHTTPMethod:@"POST"];
    [postRequest setHTTPBody:[NSData dataWithBytes:[bodyData UTF8String] length:strlen([bodyData UTF8String])]];
    
        NSURLResponse *requestResponse;
        NSData *requestHandler = [NSURLConnection sendSynchronousRequest:postRequest returningResponse:&requestResponse error:nil];
        NSDictionary *retrievedData = [NSJSONSerialization JSONObjectWithData:requestHandler
                                                                      options:0
                                                                        error:NULL];
        return retrievedData;
}
-(NSData *)getRestCallAsData:(NSString *)url {
    NSString *restCallString = [NSString stringWithFormat:@"%@", url];
    NSURL *tempurl = [NSURL URLWithString:restCallString];
    NSURLRequest *request = [NSURLRequest requestWithURL:tempurl];
    NSURLResponse* response;
    NSError* error = nil;
    NSData* result = [NSURLConnection sendSynchronousRequest:request  returningResponse:&response error:&error];
    return result;
}

-(NSData *)postRestCallAsData:(NSString *)url params:(NSArray *)theParams {
    NSString *bodyData;
    for (int i = 0; i < theParams.count; i ++) {
        if (bodyData != NULL) {
            bodyData = [NSString stringWithFormat:@"%@&%@", bodyData, theParams[i]];
        }
        else {
            bodyData = [NSString stringWithFormat:@"%@", theParams[0]];
        }
    }
    NSMutableURLRequest *postRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:url]];
    [postRequest setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [postRequest setHTTPMethod:@"POST"];
    [postRequest setHTTPBody:[NSData dataWithBytes:[bodyData UTF8String] length:strlen([bodyData UTF8String])]];
        NSURLResponse *requestResponse;
        NSData *requestHandler = [NSURLConnection sendSynchronousRequest:postRequest returningResponse:&requestResponse error:nil];
        return requestHandler;
}

-(BOOL)putRequestCall:(NSString *)url bodyString:(NSString *)theBody {
    
    NSMutableURLRequest *putRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:url]];
    
    [putRequest setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    
    [putRequest setHTTPMethod:@"PUT"];
    [putRequest setHTTPBody:[NSData dataWithBytes:[theBody UTF8String] length:strlen([theBody UTF8String])]];
    NSURLConnection *conn = [[NSURLConnection alloc] initWithRequest:putRequest delegate:self];
    if(conn) {
        return true;
        
    } else {
        NSLog(@"spearRest::::::::Critical Error::::Put request with body data: %@ and url: %@ failed", url, theBody);
        return false;
    }
}


@end
