//
//  VideoVC.h
//  DevslopesTutorial
//
//  Created by Christian Nicoletti on 8/19/21.
//

#import <UIKit/UIKit.h>
@class Video;

NS_ASSUME_NONNULL_BEGIN

@interface VideoVC : UIViewController <UIWebViewDelegate>
@property (nonatomic, strong) Video *video;

@end

NS_ASSUME_NONNULL_END
