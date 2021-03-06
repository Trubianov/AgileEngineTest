//
//  GalleryCollectionViewDataSource.m
//  AgileEngine
//
//  Created by Anton on 10/11/16.
//  Copyright © 2016 AT. All rights reserved.
//

#import "GalleryCollectionViewDataSource.h"
#import "GalleryCollectionViewCell.h"
#import "Photo.h"
#import <SDWebImage/UIImageView+WebCache.h>

static NSString *const kCellReuseID = @"galleryCellReuseID";

@interface GalleryCollectionViewDataSource ()

@property (nonatomic, strong) NSArray<Photo *> *photos;

@end

@implementation GalleryCollectionViewDataSource

- (void)setGalleryPhotos:(NSArray<Photo *> *)photos
{
    self.photos = photos;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.photos.count;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    GalleryCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kCellReuseID forIndexPath:indexPath];
    
    Photo *photo = self.photos[indexPath.row];
    cell.activityIndicator.hidden = NO;
    [cell.photoImageView sd_setImageWithURL:photo.imageURL placeholderImage:nil options:SDWebImageRefreshCached completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        cell.activityIndicator.hidden = YES;
    }];
    
    return cell;
}


@end
