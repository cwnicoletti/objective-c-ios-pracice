//
//  Person.m
//  practiceApp
//
//  Created by Christian Nicoletti on 8/11/21.
//

#import "Person.h"

@implementation Person

-(void)test {
    self.firstName = @"Blah";
    
    _firstName = @"Jack";
    
    isInsecure = YES;
    
    [self setLastName:@"Davis"];
    
    NSString *name = [self firstName];
}

@end
