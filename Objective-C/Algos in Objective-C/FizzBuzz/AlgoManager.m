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

+ (void) mergeSort: (NSMutableArray *) sortThisArray {
    
    //Don't forget this base condition 
    if (sortThisArray.count <= 1)
        return;
    
    int midpoint = round(sortThisArray.count/2); //if it's 5 elements, this becomes 3;
    NSMutableArray *leftArray = [[NSMutableArray alloc] initWithArray:[sortThisArray subarrayWithRange: NSMakeRange(0, midpoint)]]; //0,1,2
    NSMutableArray *rightArray = [[NSMutableArray alloc]initWithArray:[sortThisArray subarrayWithRange: NSMakeRange(midpoint, sortThisArray.count-midpoint) ]]; //3,4
    
    [self mergeSort:leftArray];
    [self mergeSort:rightArray];
    [self merge:sortThisArray leftArray:leftArray rightArray:rightArray];
}

+ (void) merge: (NSMutableArray *) original leftArray: (NSArray *) leftArray rightArray: (NSArray *) rightArray {
    //merging two sorted integer arrays
    int i = 0;
    int iLeft = 0;
    int iRight = 0;
    long leftLen = leftArray.count;
    long rightLen = rightArray.count;
    long arrayLen = original.count;
    
    while (i <= arrayLen) {
        if (iLeft >= leftLen && iRight < rightLen) {
            original[i] = rightArray[iRight];
            iRight++;
        }
        else if (iRight >= rightLen && iLeft < leftLen) {
            original[i] = leftArray[iLeft];
            iLeft++;
        }
        else if (iLeft < leftLen && leftArray[iLeft] <= rightArray[iRight]) {
            original[i] = leftArray[iLeft];
            iLeft++;
        }
        else if (iRight < rightLen && rightArray[iRight] <= leftArray[iLeft]) {
            original[i] = rightArray[iRight];
            iRight++;
        }
        i++;
    }
    return;
}

+ (NSArray *) findTwoNumsThatSumTo: (int) sum array: (NSArray *) array {
    //GIven an array of numbers, find 2 nums that sum to that number and return it
    //1. Clarify
        //Just return the first pair
    //2. Write out function signature
    //3. Think of some sample inputs 9, [0,1,2,3,4,5] --> output is [4,5]
    //ex) [3, 8, 10, 13]
    //4. General approaches
        //nested loop O(n^2) ..
        //if it's a sorted array, we can have two counters, one going from left, other going from right O(n log n) depending on your fastest sorting
        //we can also use a hash table. Iterate through array once, make a hash with all the nums as keys and then iterate again, looking for sum - int[i], then you return [int[i], sum-int[i]];
    //5. Test your code
    
    //**** REMEMBER in objective-c, NSNumber or @1 is a thin objc-wrapper around C int primitive. It can't do calculations by itself so all heavy-duty algorithm calculations must be done in primitives (in int) still but since NSArray can't contain primitive types, this is how I'm doing it now. 
    
    NSMutableDictionary *hash = [[NSMutableDictionary alloc]init];
    for (int i=0; i < array.count; i++) {
        NSNumber* num =  array[i];
        [hash setValue: @(i) forKey:[NSString stringWithFormat:@"%@", num]];
    }
    NSLog(@"hash: @%@", hash);
    //Now we have the hash where {"3": 0, "8": 1 ... }
    //second loop
    for (int i=0; i < array.count; i++) {
        NSNumber* num = array[i]; // let's say num = 4
        int diff = sum - [num intValue]; //then diff is 9 -4 ... which is 5
        //does 5 exist in the hash?
        NSString *diffString = [NSString stringWithFormat:@"%d", diff];
        if ([hash valueForKey:diffString] != nil) {
            int answerSecondNum = diff;
            NSArray *result = @[num, @(answerSecondNum)];
            return result;
        }
    }
    
    return nil;
}



@end
