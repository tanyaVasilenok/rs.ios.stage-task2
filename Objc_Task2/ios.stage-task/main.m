#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "ReverseBinary.h"
#import "Pairs.h"
#import "IPFormatConverter.h"
#import "TwoDimensionalArraySorter.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        
        //For task 1
        ReverseInteger(56);
        
        //For task2
        Pairs *pairs = [[Pairs alloc] init];
        [pairs countPairs:@[@(2), @(2), @(3), @(4), @(5)] number:@(0)];
        
        //For task 5
        IPFormatConverter *ipConverter = [[IPFormatConverter alloc] init];
        [ipConverter ipFormatConverter:@[@1092,@168,@256,@45]];
        
        //For task 4
        TwoDimensionalArraySorter *arraySorter = [[TwoDimensionalArraySorter alloc] init];
        [arraySorter twoDimensionalSort:@[@[@"Ivan",@"Ben",@"Dmitrii"], @[@"Billy",@"Cris"], @[@"Valentin",@"Van"], @[@"Alex",@"Kony"]]];
        
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
