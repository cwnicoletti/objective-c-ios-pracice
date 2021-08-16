//
//  ViewController.m
//  practiceApp
//
//  Created by Christian Nicoletti on 8/11/21.
//

#import "ViewController.h"
#import "Person.h"
#import "Vehicle.h"

@interface ViewController ()

@property (nonatomic, strong) NSString *vehicle;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    int imAnInt = 5;
    float iAmAFloat = 3.3;
    
    NSLog(@"Int: %d", imAnInt);
    NSLog(@"Float: %f", iAmAFloat);
    
    NSNumber *numInt = [NSNumber numberWithInt:5];
    NSNumber *numInt2 = [NSNumber numberWithInt:6];
    
    int val = numInt.intValue;
    int val2 = numInt2.intValue;
    
    int sum = val + val2;
    
    NSNumber *numSum = [NSNumber numberWithInt:sum];
    
    NSString *firstName = @"John";
    NSString *allocatedString = [[NSString alloc]init];
    
    NSLog(@"Name: %@", firstName);
    
    NSString *fullName = [NSString stringWithFormat:@"%@ Smith %@", firstName, @"Charles the III"];
    
    NSString *display = [fullName stringByAppendingString:@" - Died 1448"];
    
    NSLog(@"Full name: %@", fullName);
    
    NSLog(@"%@", display);
    
    NSString *var1 = @"Junk";
    NSString *var2 = @"in the trunk";
    NSString *var3 = @"junk";
    
    if (![var1 isEqualToString:var2]) {
        NSLog(@"We should see this!");
    }
    
    if ([var1.lowercaseString isEqualToString:var3]) {
        NSLog(@"We gotteth here!");
    }
    
    if ([var1 caseInsensitiveCompare:var3] == NSOrderedSame) {
        NSLog(@"Woohoo");
    }
    
    self.name = [[NSString alloc]init];
    
    Vehicle *car = [[Vehicle alloc] init];
    car.odometer = -100;
    
    NSLog(@"Odometer: %lu", car.odometer);
    
    car.model = @"Honda Civic";
    
    NSLog(@"I drive a %@", car.model);
}


@end
