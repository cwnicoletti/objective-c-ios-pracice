//
//  Person3.h
//  practiceApp
//
//  Created by Christian Nicoletti on 8/16/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Backpack;

@interface Person3 : NSObject

@property (nonatomic, strong) Backpack *backpack;
-(void)initializeData;
@end

NS_ASSUME_NONNULL_END
