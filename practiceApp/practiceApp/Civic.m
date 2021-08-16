//
//  Civic.m
//  practiceApp
//
//  Created by Christian Nicoletti on 8/16/21.
//

#import "Civic.h"

@implementation Civic

-(id)init {
    if (self = [super init]) {
        
    }
    
    [self drive];
    return self;
}

-(void)test {
    self.make = @"Honda";
    self.model = @"Civic";
    [self drive];
}

-(void)drive {
    NSLog(@"Drive from subclass");
    
    [super drive];
}

@end
