//
//  Person3.m
//  practiceApp
//
//  Created by Christian Nicoletti on 8/16/21.
//

#import "Person3.h"
#import "Backpack.h"

@implementation Person3

-(void)initializeData {
    self.backpack = [[Backpack alloc]init];
    self.backpack.owner = self;
}
@end
