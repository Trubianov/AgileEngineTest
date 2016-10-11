//
//  FlickrJSONParser.h
//  AgileEngine
//
//  Created by Anton on 10/11/16.
//  Copyright © 2016 AT. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Photo;

@interface FlickrJSONParser : NSObject

- (NSArray<Photo *> *)parsFlickrResponse:(NSDictionary *)flickrInfo;

@end
