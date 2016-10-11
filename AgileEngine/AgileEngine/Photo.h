//
//  Photo.h
//  AgileEngine
//
//  Created by Anton on 10/11/16.
//  Copyright © 2016 AT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Photo : NSObject

@property (nonatomic, strong, readonly) NSURL *imageURL;

@property (nonatomic, copy, readonly) NSString *imageTitle;

- (instancetype)initWithURL:(NSString *)urlString andTitle:(NSString *)title;

@end
