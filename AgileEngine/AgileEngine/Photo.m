//
//  Photo.m
//  AgileEngine
//
//  Created by Anton on 10/11/16.
//  Copyright © 2016 AT. All rights reserved.
//

#import "Photo.h"

@implementation Photo

- (instancetype)initWithURL:(NSString *)urlString andTitle:(NSString *)title
{
    self = [super init];
    
    if (self)
    {
        _imageURL = [NSURL URLWithString:urlString];
        
        _imageTitle = title;
    }
    return self;
}

@end
