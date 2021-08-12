//
//  Vehicle.m
//  practiceApp
//
//  Created by Christian Nicoletti on 8/11/21.
//

#import "Vehicle.h"

@implementation Vehicle

-(void)setOdometer:(long)odometer {
    if (odometer > _odometer) {
        _odometer = odometer;
    }
}

-(NSString*)model {
    if ([_model isEqualToString:@"Honda Civic"]) {
        return @"POS";
    } else {
        return _model;
    }
}

@end
