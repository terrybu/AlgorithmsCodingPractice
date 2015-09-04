//
//  ObjectiveCPracticeAlgoManager.m
//  ObjectiveCPracticeAlgoManager
//
//  Created by Terry Bu on 8/10/15.
//  Copyright (c) 2015 Terry Bu. All rights reserved.
//

#import "ObjectiveCPracticeAlgoManager.h"

@implementation ObjectiveCPracticeAlgoManager


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

+ (void) runFizzBuzz: (int[]) array {
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




@end
