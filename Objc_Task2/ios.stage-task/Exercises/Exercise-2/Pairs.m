#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    
    //declare int variabe for counting values in arraty that differ by nymber
    NSInteger countOfValues = 0;
    
    for (NSInteger i = 0; i < array.count; i++) {
        for (NSInteger j = array.count - 1; j >= 0; j--) {
            if ([[array objectAtIndex:i] intValue] - [[array objectAtIndex:j] intValue] == number.unsignedIntValue) {
                countOfValues ++;
            }
        }
    }
    
    NSLog(@"%lu", countOfValues);
    return countOfValues;
}

@end
