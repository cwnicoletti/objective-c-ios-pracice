//
//  Vehicle2.h
//  practiceApp
//
//  Created by Christian Nicoletti on 8/16/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Vehicle2 : NSObject

@property (nonatomic, strong) NSString *make;
@property (nonatomic, strong) NSString *model;
@property (nonatomic, strong) NSString *engineSize;

-(void)drive;

@end

NS_ASSUME_NONNULL_END
