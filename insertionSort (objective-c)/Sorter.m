//
//  Sorter.m
//  insertionSort
//
//  Created by travis holt on 1/3/15.
//  Copyright (c) 2015 TerryBuOrg. All rights reserved.
//

#import "Sorter.h"

@implementation Sorter

- (NSMutableArray *) insertionSort: (NSMutableArray *) array {
  
  for (int i=1; i < array.count; i++) {
    NSNumber *valueI = array[i];
    int j = i - 1;
    //j refers to index that comes before the i
    
    while (j >=0 && array[j] > valueI) {
      //if valueJ (the value that comes prior) is bigger than value I, we know we need a switch
      array[j+1] = array[j];
      j = j - 1;
    }
    
    array[j+1] = valueI;
  }
  
  return array;
}

@end
