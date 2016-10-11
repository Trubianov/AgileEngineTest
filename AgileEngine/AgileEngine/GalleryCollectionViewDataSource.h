//
//  GalleryCollectionViewDataSource.h
//  AgileEngine
//
//  Created by Anton on 10/11/16.
//  Copyright © 2016 AT. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@class Photo;

@interface GalleryCollectionViewDataSource : NSObject <UICollectionViewDataSource, UICollectionViewDelegate>

- (void)setGalleryPhotos:(NSArray<Photo *> *)photos;

@end
