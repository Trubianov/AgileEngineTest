//
//  NetworkManager.m
//  AgileEngine
//
//  Created by Anton on 10/11/16.
//  Copyright © 2016 AT. All rights reserved.
//

#import "NetworkManager.h"
#import "Constants.h"
#import "FlickrJSONParser.h"
#import "Photo.h"


@implementation NetworkManager

+ (instancetype)sharedInstance
{
    static dispatch_once_t pred;
    static id shared = nil;
    dispatch_once(&pred, ^{
        shared = [[super alloc] init];
    });
    
    return shared;
}

- (void)searchImagesWithKey:(NSString *)searchKey completion:(CompletionBlock)completion
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSURL *URL = [NSURL URLWithString:[NSString stringWithFormat:@"https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=%@&text=%@&per_page=20&format=json&nojsoncallback=1&extras=url_m", kFlickrKey, searchKey]];

    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:URL completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        if (json)
        {
            FlickrJSONParser *parser = [FlickrJSONParser new];
            NSArray *photos = [parser parsFlickrResponse:json];
            
            if (completion)
            {
                completion(photos, error);
            }
        }
        
    }];
    
    [dataTask resume];
}

@end
