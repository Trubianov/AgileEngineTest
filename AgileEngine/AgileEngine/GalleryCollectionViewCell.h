//
//  GalleryCollectionViewCell.h
//  AgileEngine
//
//  Created by Anton on 10/11/16.
//  Copyright © 2016 AT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GalleryCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic, readonly) IBOutlet UIImageView *photoImageView;
@property (weak, nonatomic, readonly) IBOutlet UIActivityIndicatorView *activityIndicator;


@end
