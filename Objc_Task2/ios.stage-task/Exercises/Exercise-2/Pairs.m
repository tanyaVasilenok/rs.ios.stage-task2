#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    
    //declare int variabe for counting values in array that differ by nymber
    NSInteger countOfValues = 0;
    
    //sort array
    [array sortedArrayUsingSelector:@selector(compare:)];
    
    //iterate and compare each element of the array with other elements, except comparison with itself
    for (NSInteger i = 0; i < array.count; i++) {
        for (NSInteger j = array.count - 1; j >= i + 1; j--) {
            if ([[array objectAtIndex:j] intValue] - [[array objectAtIndex:i] intValue] == number.intValue) {
                countOfValues ++;
            }
        }
    }
    
    NSLog(@"COUNT OF VALUES %lu", countOfValues);
    return countOfValues;
}

@end
