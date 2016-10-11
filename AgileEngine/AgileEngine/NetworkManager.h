//
//  NetworkManager.h
//  AgileEngine
//
//  Created by Anton on 10/11/16.
//  Copyright © 2016 AT. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Photo;

typedef void (^CompletionBlock) (NSArray<Photo *> *photos, NSError *error);

@interface NetworkManager : NSObject

+ (instancetype)sharedInstance;

- (void)searchImagesWithKey:(NSString *)searchKey completion:(CompletionBlock)completion;

@end
