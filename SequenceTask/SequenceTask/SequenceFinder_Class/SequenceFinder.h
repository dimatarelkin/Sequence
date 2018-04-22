//
//  SequenceFinder.h
//  SequenceTask
//
//  Created by Dmitriy Tarelkin on 21/4/18.
//  Copyright © 2018 Dmitriy Tarelkin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SequenceFinder : NSObject
@property (strong, nonatomic, readonly) NSArray* array;
- (NSNumber*)sum;
- (instancetype)initWithArray:(NSArray*)array;
@end
