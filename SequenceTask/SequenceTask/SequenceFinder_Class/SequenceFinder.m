//
//  SequenceFinder.m
//  SequenceTask
//
//  Created by Dmitriy Tarelkin on 21/4/18.
//  Copyright © 2018 Dmitriy Tarelkin. All rights reserved.
//

#import "SequenceFinder.h"

//don't need to put this small catagory into new file

#pragma mark - SequenceFinder (longestSequence) interface
@interface SequenceFinder (longestSequence)
- (NSArray*)sortArrayInAscendingOrder;
- (NSInteger)longestSequenceWithInterval:(NSInteger)interval;
@end




#pragma mark - SequenceFinder implementation
@implementation SequenceFinder

- (NSNumber *)sum {
    NSNumber* sum = [_array valueForKeyPath:@"@sum.self"] ;
    NSLog(@"Sum of Array:%@",sum);
    return sum;
}

- (instancetype)initWithArray:(NSArray*)array {
    self = [super init];
    if (self) {
        _array = array;
        
        [self sortArrayInAscendingOrder];
        
        //"Well, lets assume that this task related only to the sequence with step equal to 1 only" - OK!
        //also we can change the step
        [self longestSequenceWithInterval:1];
        
        [self sum];
    }
    return self;
}
@end



#pragma mark - SequenceFinder (longestSequence) implementation
@implementation SequenceFinder (longestSequence)

- (NSArray*)sortArrayInAscendingOrder {
    _array = [_array sortedArrayUsingComparator:^NSComparisonResult(NSNumber* obj1, NSNumber* obj2) {
        return [obj1 compare:obj2];
    }];
   // NSLog(@"Sorted Array: %@", [_array componentsJoinedByString:@","]);
    return _array;
}

- (NSInteger)longestSequenceWithInterval:(NSInteger)interval {
    
    int counter = 1;
    int current = counter;
    
    for (int i = 0; i < _array.count - 1; i+=1) {
        int element1 = [[_array objectAtIndex:i] intValue];
        int element2 = [[_array objectAtIndex:i+1] intValue];
        
        if (element1 + interval == element2) {
            counter +=1;
        } else {
            counter = 1;
        }
        if (counter > current) {
            current = counter;
        }
    }
    NSLog(@"The longest sequence with interval %li is %li",(long)interval, (long)current);
    return current;
}
@end









