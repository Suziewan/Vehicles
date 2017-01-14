//
//  Car.m
//  Vehicles
//
//  Created by Angie Linton on 2017-01-14.
//  Copyright © 2017 Designated Nerd Software. All rights reserved.
//

#import "Car.h"

@implementation Car
- (id)init{
    if (self = [super init]) {
        self.numberOfWheels = 4;
    }
    return self;
}

#pragma mark - Private method implementations
//the method for start is only in the car class because not all vehicles start (ie/ bicycles), but cars do start.
-(NSString *)start{
    return [NSString stringWithFormat:@"Start power source %@.", self.powerSource];
}

-(NSString *)goForward{
    return [NSString stringWithFormat:@"%@ %@ Then depress gas pedal.", [self start], [self changeGears:@"Forward"]];
}
-(NSString *)goBackward{
    return [NSString stringWithFormat:@"%@ %@ Check rear view mirror.  Then depress gas pedal.", [self start], [self changeGears:@"Reverse"]];
}
-(NSString *)stopMoving{
    return [NSString stringWithFormat:@"Depress brake pedal. %@", [self changeGears:@"Park"]];
}
-(NSString *)makeNoise{
    return @"Beep beep";
}
@end
