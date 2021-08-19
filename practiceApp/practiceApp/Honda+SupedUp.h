//
//  Honda+SupedUp.h
//  practiceApp
//
//  Created by Christian Nicoletti on 8/17/21.
//

#import "Honda.h"

NS_ASSUME_NONNULL_BEGIN

@interface Honda (SupedUp)
-(void)addUglySpoiler;
-(void)addGoldPlasticSpinnerRims;
-(void)scrapeOffHalfThePaint;
-(void)addHorribleSoundingMuffler;
@property (nonatomic, strong) NSNumber *wowFactor;
@end

NS_ASSUME_NONNULL_END
