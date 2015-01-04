//
//  main.m
//  insertionSort
//
//  Created by travis holt on 1/3/15.
//  Copyright (c) 2015 TerryBuOrg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Sorter.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
      // insert code here...
    Sorter *sorter = [[Sorter alloc]init];
    NSArray *array = @[@2, @5, @4, @3, @2, @1];
    NSMutableArray *mutableArray = [array mutableCopy];
    NSLog(@"%@", [sorter insertionSort:mutableArray]);
  }
    return 0;
}


//now its 4,5,3,2,1 at i=2, j=1
//we see that 5 is bigger than 3 so we gotta do some magic
//