//
//  VideoCell.h
//  DevslopesTutorial
//
//  Created by Christian Nicoletti on 8/18/21.
//

#import <UIKit/UIKit.h>
@class Video;

NS_ASSUME_NONNULL_BEGIN

@interface VideoCell : UITableViewCell
-(void)updateUI:(Video*)video;
@end

NS_ASSUME_NONNULL_END
