#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    
    NSLog(@"Inputed decimal number: %d", n);
    
    //create binary string from UInt8 number
    NSMutableString *binaryStr = [NSMutableString string];
    NSInteger numberCopy = n;//not to change the original number
    for(NSInteger i = 0; i < 8 ; i++) {
        //add 0 or 1 depending on a bit
        [binaryStr insertString:((numberCopy & 1) ? @"1" : @"0") atIndex:0];
        numberCopy >>= 1;
    }
    NSLog(@"Binary string: %@", binaryStr);
    
    NSInteger len = binaryStr.length;
    
    //create reversed binary string from binary string
    NSMutableString *reversedBinaryStr = [[NSMutableString alloc] initWithCapacity:len];
    
    for (NSInteger i = len - 1; i >= 0; i--) {
        [reversedBinaryStr appendFormat:@"%c", [binaryStr characterAtIndex:i]];
    }
    
    NSLog(@"Reversed string: %@", reversedBinaryStr);
    
    //convert reversed binary string to UInt8
    const char* utf8String = [reversedBinaryStr UTF8String];
    UInt8 binaryNum = strtol(utf8String, NULL, 2);
    NSLog(@"Decimal number from reversed binary string: %d", binaryNum);
    
    return binaryNum;
}
