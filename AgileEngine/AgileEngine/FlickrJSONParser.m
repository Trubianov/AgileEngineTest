//
//  FlickrJSONParser.m
//  AgileEngine
//
//  Created by Anton on 10/11/16.
//  Copyright © 2016 AT. All rights reserved.
//

#import "FlickrJSONParser.h"
#import "Photo.h"
@implementation FlickrJSONParser

- (NSArray<Photo *> *)parsFlickrResponse:(NSDictionary *)flickrInfo
{
    NSArray *photosInfo = flickrInfo[@"photos"][@"photo"];
    
    NSMutableArray *parsedPhotots = [NSMutableArray new];
    
    for (NSDictionary *photoInfo in photosInfo)
    {
        NSString *urlString = photoInfo[@"url_m"];
        NSString *tittle = photoInfo[@"title"];
        Photo *photo = [[Photo alloc] initWithURL:urlString andTitle:tittle];
        [parsedPhotots addObject:photo];
    }
    
    return [parsedPhotots copy];
}


@end
