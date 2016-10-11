//
//  GalleryViewController.m
//  AgileEngine
//
//  Created by Anton on 10/11/16.
//  Copyright © 2016 AT. All rights reserved.
//

#import "GalleryViewController.h"
#import "GalleryCollectionViewDataSource.h"
#import "NetworkManager.h"

@interface GalleryViewController () <UISearchBarDelegate>

@property (weak, nonatomic) IBOutlet GalleryCollectionViewDataSource *galleryCollectionViewDataSource;

@property (weak, nonatomic) IBOutlet UICollectionView *photosCollectionView;

@end

@implementation GalleryViewController

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    [self.view endEditing:YES];
    
    if (searchBar.text.length > 0)
    {
        [[NetworkManager sharedInstance] searchImagesWithKey:searchBar.text completion:^(NSArray<Photo *> *photos, NSError *error) {
            
            if (!error && photos.count > 0)
            {
                [self.galleryCollectionViewDataSource setGalleryPhotos:photos];
            }
            
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.photosCollectionView reloadData];
            });
        }];
    }
}


@end
