#import "T1Array.h"

@implementation T1Array

bool recheck = true;

// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {
    NSArray *happyArray = [NSArray arrayWithArray:sadArray];
    while (recheck) {
        recheck = false;
        happyArray = [self check:happyArray];
    }
    return happyArray;
}

- (NSArray *) check:(NSArray *)sadArray {
    if ([sadArray count] == 0) {
        return sadArray;
    }
    NSMutableArray *resultArray = [NSMutableArray new];
    [resultArray addObject:sadArray[0]];
    for (int i = 1; i < sadArray.count - 1; i++) {
        NSLog(@"(int)sadArray[i] = %i", [sadArray[i] intValue]);
        NSLog(@"(int)sadArray[i - 1] + (int)sadArray[i + 1] = %i", [sadArray[i - 1] intValue] + [sadArray[i + 1] intValue]);
        if ([sadArray[i] intValue] < [sadArray[i - 1] intValue] + [sadArray[i + 1] intValue]) {
            [resultArray addObject:sadArray[i]];
        } else {
            recheck = true;
        }
    }
    [resultArray addObject:sadArray[sadArray.count - 1]];
    return resultArray;
}

@end
