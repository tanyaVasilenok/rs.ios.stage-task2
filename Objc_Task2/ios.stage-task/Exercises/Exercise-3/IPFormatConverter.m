#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    NSString *ipString = [NSString string];
    
    //check if the array is nil
    if ([numbersArray isEqualToArray:@[]]) {
        ipString = @"";
    }
    
    //declaire new mutable array on the basis on unmutable array
    NSMutableArray *mutableNumbersArray = [[NSMutableArray alloc] initWithArray:numbersArray];
    //declaire count of array objects
    NSInteger count = numbersArray.count;
    
    //check if the array contains more than 4 objects
    if (count > 4) {
        ipString = nil;
    }
    
    //check if the array contains less than 4 objects, but more than nil
    if (count < 4 && count > 0) {
        for (NSInteger i = 0; i < 4; i++) {
            [mutableNumbersArray addObject:@0];
        }
        ipString = [NSString stringWithFormat:@"%d.%d.%d.%d", [mutableNumbersArray[0] intValue], [mutableNumbersArray[1] intValue], [mutableNumbersArray[2] intValue], [mutableNumbersArray[3] intValue]];
    }
    
    //if the array contains 4 objects
    if (count == 4) {
        ipString = [NSString stringWithFormat:@"%d.%d.%d.%d", [mutableNumbersArray[0] intValue], [mutableNumbersArray[1] intValue], [mutableNumbersArray[2] intValue], [mutableNumbersArray[3] intValue]];
    }
    
    //check if the array contains objects less than 0
    for (NSInteger i = 0; i < count; i++) {
        if ([[mutableNumbersArray objectAtIndex:i] intValue] < 0) {
            NSLog(@"attention");
            ipString = @"Negative numbers are not valid for input.";
        }
    }
    
    //check if the array contains objects more than 255
    for (NSInteger i = 0; i < count; i++) {
        if ([[mutableNumbersArray objectAtIndex:i] intValue] > 255) {
            NSLog(@"attention");
            ipString = @"The numbers in the input array can be in the range from 0 to 255.";
        }
    }
    
    NSLog(@"IP string %@", ipString);
    
    return ipString;
}

@end
