//
//  Backpack.h
//  practiceApp
//
//  Created by Christian Nicoletti on 8/16/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Person3;

@interface Backpack : NSObject
@property (nonatomic, weak) Person3 *owner;
@end

NS_ASSUME_NONNULL_END
