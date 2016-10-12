//
//  GalleryViewController+CollectionViewDelegate.m
//  AgileEngine
//
//  Created by Anton on 10/12/16.
//  Copyright © 2016 AT. All rights reserved.
//

#import "GalleryViewController+CollectionViewDelegate.h"

@interface GalleryViewController ()

@property (nonatomic, assign) PhotoDisplayMode displayMode;

@end

@implementation GalleryViewController (CollectionViewDelegate)

#pragma mark UICollectionViewDelegateFlowLayout

- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    int numberOfColumns = self.displayMode;
    
    UICollectionViewFlowLayout *flowLayout = (UICollectionViewFlowLayout *)collectionViewLayout;
    CGFloat totalSpace = flowLayout.sectionInset.left + flowLayout.sectionInset.right + (flowLayout.minimumInteritemSpacing * (numberOfColumns - 1));
    CGFloat width = (collectionView.bounds.size.width - totalSpace) / (CGFloat)numberOfColumns;
    
    CGSize size = CGSizeMake(width, width);
    
    return size;
}

@end
