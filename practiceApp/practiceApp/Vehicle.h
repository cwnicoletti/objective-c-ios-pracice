//
//  Vehicle.h
//  practiceApp
//
//  Created by Christian Nicoletti on 8/11/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Vehicle : NSObject

@property (nonatomic) long odometer;
@property (nonatomic, strong) NSString *model;

@end

NS_ASSUME_NONNULL_END
