//
//  ObjectiveCPracticeAlgoManager.m
//  ObjectiveCPracticeAlgoManager
//
//  Created by Terry Bu on 8/10/15.
//  Copyright (c) 2015 Terry Bu. All rights reserved.
//

#import "AlgoManager.h"

@implementation AlgoManager


+ (NSString *) reverseString: (NSString *) string {
    NSMutableString *mutableStr = [[NSMutableString alloc]init];
    NSInteger lastIndex = string.length-1;
    while (lastIndex >= 0) {
        NSString *oneCharacter = [string substringWithRange:NSMakeRange(lastIndex, 1)];
        [mutableStr appendString:oneCharacter];
        lastIndex--;
    }
    return mutableStr;
}

+ (NSString *) reverseStringIteratively: (NSString *) string {
    NSMutableString *resultStr = [[NSMutableString alloc]initWithString:string];
    int first = 0;
    int last = (int) string.length-1;
    while (first <= last) {
        char firstChar = [resultStr characterAtIndex:first];
        char lastChar = [resultStr characterAtIndex:last];
        //NSMakeRange starts with the first number index and goes to the LENGTH of second index
        [resultStr replaceCharactersInRange: NSMakeRange(first, 1)  withString:[NSString stringWithFormat:@"%c", lastChar]];
        [resultStr replaceCharactersInRange: NSMakeRange(last, 1)  withString:[NSString stringWithFormat:@"%c", firstChar]];
        first++;
        last--;
    }
    return resultStr;
}

+ (void) runFizzBuzz: (int[]) array {
    NSLog(@"start of fizzbuzz");

    for (int i=0; i < 5; i++) {
        int value = (int) array[i];
        if (value % 3 == 0 && value % 5 == 0)
            NSLog(@"fizzbuzz");
        else if (value % 3 == 0)
            NSLog(@"fizz");
        else if (value % 5 == 0)
            NSLog(@"buzz");
        else
            NSLog(@"%i", value);
    }
    
    NSLog(@"end of fizzbuzz");
}

+ (void) runFizzBuzzWithNS: (NSArray *) array {
    NSLog(@"start of fizzbuzz");
    for (int i=0; i < 5; i++) {
        NSNumber *preValue = array[i];
        NSInteger value = [preValue integerValue];
        if (value % 3 == 0 && value % 5 == 0)
            NSLog(@"fizzbuzz");
        else if (value % 3 == 0)
            NSLog(@"fizz");
        else if (value % 5 == 0)
            NSLog(@"buzz");
        else
            NSLog(@"%li", (long)value);
    }
    NSLog(@"end of fizzbuzz");
}

+ (NSString *) returnOurNewAutoCompleteString: (NSString *) string wordsSet: (NSSet *) set {
    for (int i=1; i < string.length - 1; i++) {
        NSString *substring = [string substringToIndex:i];
        if ([set containsObject:substring]) {
            NSString *endSubString = [string substringFromIndex:i];
            if ([set containsObject:endSubString]) {
                return [NSString stringWithFormat:@"%@ %@", substring, endSubString];
            }
        }
    }
    return nil;
}

+ (int) fibonacci: (int) n memoDict: (int[]) cacheArray {
    if (n==0) {
        return 0;
    } else if (n==1) {
        return 1;
    }
    
    if (cacheArray[n] == 0) {
        cacheArray[n] = [self fibonacci: n-2 memoDict:cacheArray] + [self fibonacci:n-1 memoDict:cacheArray];
    }
    
    return (int) cacheArray[n];
}



@end
