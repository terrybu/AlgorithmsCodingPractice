//
//  ObjectiveCPracticeAlgoManager.h
//  ObjectiveCPracticeAlgoManager
//
//  Created by Terry Bu on 8/10/15.
//  Copyright (c) 2015 Terry Bu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AlgoManager : NSObject



+ (void) runFizzBuzz: (int[]) array;
+ (void) runFizzBuzzWithNS: (NSArray*) array;

+ (NSString *) returnOurNewAutoCompleteString: (NSString *) string wordsSet: (NSSet *) set;
+ (NSString *) reverseString: (NSString *) string;
+ (NSString *) reverseStringIteratively: (NSString *) string;

+ (int) fibonacci: (int) n memoDict: (int[]) cacheArray;

@end
