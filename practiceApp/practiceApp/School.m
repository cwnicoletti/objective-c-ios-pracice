//
//  School.m
//  practiceApp
//
//  Created by Christian Nicoletti on 8/17/21.
//

#import "School.h"
#import "Person3.h"

@implementation School
-(void)initData {
    self.student = [[Person3 alloc] init];
    [self.student initializeData];
    
    // This dummy pulled a prank
    self.student = nil;
}
@end
