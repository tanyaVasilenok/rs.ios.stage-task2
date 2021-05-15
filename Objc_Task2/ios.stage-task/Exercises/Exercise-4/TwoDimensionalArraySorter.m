#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
    NSLog(@"Inputed array: %@", array);
    
    //declare result array
    NSMutableArray *resultArray = [NSMutableArray new];

    NSLog(@"Count array: %lu", array.count);
    
    //declare number and string arrays
    NSMutableArray *numberArray = [NSMutableArray new];
    NSMutableArray *stringArray = [NSMutableArray new];
    
    //iterate over inputed array and check if it one- or two-dimensional
    //algorithm for checking dimension is to check if it contains numbers or strings in the first dimension
    //if not - return empty string
    for (NSUInteger i = 0; i < array.count; i++) {
        if ([array[i] isKindOfClass:NSNumber.class] || [array[i] isKindOfClass:NSString.class]) {
            return @[];
        }
    }
    
    //iterate over the inputed array in the first dimension
    for (NSUInteger i = 0; i < array.count; i++) {
        //iterate over the inputed array in the second dimension
        for (NSUInteger j = 0; j < array[i].count; j++) {
            //check if elements belong to NSNumber class, what means, that the element is digit, otherwise it is string
            if ([array[i][j] isKindOfClass:NSNumber.class]) {
                [numberArray addObject:array[i][j]];
            }
            else [stringArray addObject:array[i][j]];
        }
    }
    
    //sort both arrays
    //ascending sorting of arrays of numbers
    NSArray *sortedAscendingNumberArray = [numberArray sortedArrayUsingSelector:@selector(compare:)];
    
    //ascending sorting of arrays of strings
    NSArray *sortedAscendingStringArray = [stringArray sortedArrayUsingSelector:@selector(compare:)];
    
    //discending sorting
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:NO];
    
    NSArray *sortedDiscendingStringArray = [stringArray sortedArrayUsingDescriptors:@[sortDescriptor]];
    
    //check if arrays are empty
    //if any of two arrays is empty, then add not empty array to result array
    while (![numberArray isEqualToArray:@[]] && [stringArray isEqualToArray:@[]]) {
        [resultArray addObjectsFromArray:sortedAscendingNumberArray];
        break;
    }
    
    //add ascending array
    while ([numberArray isEqualToArray:@[]] && ![stringArray isEqualToArray:@[]]) {
        [resultArray addObjectsFromArray:sortedAscendingStringArray];
        break;
    }
    
<<<<<<< HEAD
    //if both arrays are not empty, then add number array to result array at index 0, and discending string array at index 1
=======
    //if both arrays are not empty, then add number array to result array at index 0, and string array at index 1
>>>>>>> f77e8d7a5fcc82e58c209d87ac12daed1092b916
    while (![numberArray isEqualToArray:@[]] && ![stringArray isEqualToArray:@[]]) {
        [resultArray insertObject:sortedAscendingNumberArray atIndex:0];
        [resultArray insertObject:sortedDiscendingStringArray atIndex:1];
        break;
    }
    
    NSLog(@"result array is %@", resultArray);
    
    return resultArray;
}

@end
