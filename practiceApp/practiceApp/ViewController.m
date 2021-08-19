//
//  ViewController.m
//  practiceApp
//
//  Created by Christian Nicoletti on 8/11/21.
//

#import "ViewController.h"
#import "Person.h"
#import "Vehicle.h"
#import "Person2.h"
#import "Civic.h"
#import "Honda.h"
#import "Honda+SupedUp.h"
#import "practiceApp-Swift.h"

@interface ViewController ()

@property (nonatomic, strong) NSString *vehicle;

@property (nonatomic) double bankAccount;
@property (nonatomic) double itemAmount;

@property (nonatomic, strong) SecondVC *secondVC;

@end

@implementation ViewController

- (int)sum:(NSNumber* _Nonnull)numA :(NSNumber* _Nonnull)numB {
    int theSum = numA.intValue + numB.intValue;
    return theSum;
}

- (IBAction)loadSecondVC:(id)sender {
    _secondVC = [[SecondVC alloc] init];
    _secondVC.view.backgroundColor = [UIColor purpleColor];
    [self presentViewController:_secondVC animated:YES completion:nil];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Honda *honda = [[Honda alloc] init];
    [honda addUglySpoiler];
    
    
    NSNumber *num1;
    NSNumber *num2;
    
    int sum = [self sum:num1 :num2];
    
    Civic *civic = [[Civic alloc] init];
    
    BOOL amICool = YES;
    BOOL notCool = NO;
    
    if (amICool) {
        NSLog(@"WHip out your sunglasses stupid");
    } else {
        NSLog(@"We should never get here!");
    }
    
    NSString *name = nil;
    
    if (name) {
        NSLog(@"Name: %@", name);
    }
    
    if (!name) {
        NSLog(@"Name: %@", name);
    }
    
    bool sayWhat;
    Boolean hmmm;
    boolean_t grrrr;
    
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
    self.bankAccount = 500.50;
    self.itemAmount = 400.00;
    
    NSArray *arr = [NSArray arrayWithObjects:@"my", @"mother", @"told", @"me", nil];
    NSArray *arr2 = @[@"Donkey", @"Kong", @"ate"];
    
    NSString *str = [arr objectAtIndex:2];
    
    arr = @[@"Mario", @"Toadstool"];
    
    NSMutableArray *mut = [NSMutableArray arrayWithObjects:@"my", @"mother", @"told", @"me", nil];
    NSLog(@"MUT: @%", mut.debugDescription);
    
    [mut removeObjectAtIndex:2];
    [mut addObject:@"Beast master"];
    NSLog(@"Mut 2:", mut.debugDescription);
    
    NSArray *arr3 = [NSArray arrayWithArray:arr];
    
    NSArray *arr4 = mut;
//    NSMutableArray *arr4 = arr;
    
//    NSString *str = @"Yay for strings!";
    
    NSNumber *age = [NSNumber numberWithInt:40];
    NSNumber *age2 = [NSNumber numberWithInt:34];
    
    NSDictionary *dict = @{@"jack": age, @"jon": age2};
    NSDictionary *dict2 = [[NSDictionary alloc] init];
    
    
    int jacksAge = [[dict objectForKey:@"jack"] intValue];
    NSLog(@"Jacks age: %d", jacksAge);
    
    NSMutableDictionary *mut2 = [@{@"1": @"BMW", @"2": @"VOLVO", @"3": @"Ugly Honda Civic"} mutableCopy];
    NSMutableDictionary *mut3 = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *mut4 = [NSMutableDictionary dictionaryWithObjects:[NSArray arrayWithObjects:[NSNumber numberWithDouble:20.00], [NSNumber numberWithInteger:3], nil] forKeys:[NSArray arrayWithObjects:@"Hello", @"yes", nil]];
    [mut3 setObject:@"An Object" forKey:@"A key"];
    [mut3 setObject:[NSNumber numberWithDouble:20.00] forKey:@"doubleTrouble"];
    
    NSArray *cars = @[@"Bimmer", @"Maserati", @"Bronco II"];
    
    for (int x=0; x<cars.count; x++) {
        NSString *car = [cars objectAtIndex:x];
        NSLog(@"Car: %@", car);
    }
    
    for (NSString *car in cars) {
        NSLog(@"Car: %@", car);
    }
};

- (BOOL) canPurchase:(double)amount {
    if (self.bankAccount >= amount)
        return YES;
    
    return NO;
}

- (void) declareWinnerWithPlayerAScore:(NSInteger)scoreA playerBScore:(NSInteger)scoreB {
    if (scoreA > scoreB)
        NSLog(@"Player A Wins!");
    else if (scoreB > scoreA)
        NSLog(@"Player B Wins!");
    else
        NSLog(@"The game is at a standstill!");
}

- (void) playground {
    if ([self canPurchase:self.itemAmount]) {
        NSLog(@"We can buy!");
    }
    
    [self declareWinnerWithPlayerAScore:55 playerBScore:66];
    
    Person2 *person = [[Person2 alloc]init];
    [person speakName];
    [Person2 stateSpecies];
    
//    UIImage *image1 = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://google.com"]]];
    
    NSString *urlString = @"http://google.com";
    NSURL *url = [NSURL URLWithString:urlString];
    NSData *data = [NSData dataWithContentsOfURL:url];
    
    UIImage *image2 = [UIImage imageWithData:data];
}


@end
