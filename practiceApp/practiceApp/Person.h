//
//  Person.h
//  practiceApp
//
//  Created by Christian Nicoletti on 8/11/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    BOOL isInsecure;
}

@property(nonatomic, strong) NSString *firstName;
@property(nonatomic, strong) NSString *lastName;

@end

NS_ASSUME_NONNULL_END
