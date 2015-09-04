//
//  main.m
//  FizzBuzz
//
//  Created by Terry Bu on 8/10/15.
//  Copyright (c) 2015 Terry Bu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AlgoManager.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        int myArray[5];
//        myArray[0] = 3;
//        myArray[1] = 13;
//        myArray[2] = 23;
//        myArray[3] = 45;
//        myArray[4] = 50;
//        [AlgoManager runFizzBuzz:myArray];
//        NSArray *nsArray = @[@1,@2,@3,@4,@5];
//        [AlgoManager runFizzBuzzWithNS:nsArray];
//        
//        NSString *string = @"badcar";
//        NSSet *set = [[NSSet alloc]initWithArray:@[@"bad", @"car"]];
//        NSLog(@"%@", [AlgoManager returnOurNewAutoCompleteString:string wordsSet:set]);
//        
        //NSArrays also have a containsObject method, O(n)
//        NSArray *array = @[@"sup", @"hi"];
//        if ([array containsObject:@"sup"]) {
//            NSLog(@"yes contains sup");
//        }
        //NSMutableArray adding things
//        NSMutableArray *mutableArray = [[NSMutableArray alloc]initWithArray:array];
//        [mutableArray addObject:@"extra"];
//        NSLog(mutableArray.description);
        
        //String Formatters
//        int a = 10;
//        double dub = 2.424242;
//        NSLog(@"%d %f", a, dub);
        
        NSString *testStr = @"flip this";
        NSLog(@"%@", [AlgoManager reverseString:testStr]);
        NSLog(@"%@", [AlgoManager reverseStringIteratively:testStr]);

        
    }
    return 0;
}
