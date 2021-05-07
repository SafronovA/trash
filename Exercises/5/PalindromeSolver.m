#import "PalindromeSolver.h"

@implementation PalindromeSolver

// Complete the highestValuePalindrome function below.
- (NSString *) highestValuePalindrome:(NSString *)s n:(NSNumber *)n k:(NSNumber *)k {
    int strLength = [n intValue];
    int availableChanges = [k intValue];
    int necessaryChanges = [self getNecessaryChanges:s];
    
    if (availableChanges < necessaryChanges) {
        return @"-1";
    }
    
    for (int i = 0; i < strLength / 2; i++) {
        char digitFromTheBeginning = [s characterAtIndex:i];
        char digitFromTheEnd = [s characterAtIndex:strLength - 1 - i];
        
        if (digitFromTheBeginning != digitFromTheEnd) {
            if (availableChanges == necessaryChanges) {
                if ((int)digitFromTheBeginning > (int)digitFromTheEnd) {
                    s = [s stringByReplacingCharactersInRange:NSMakeRange(strLength - 1 - i, 1) withString:[NSString stringWithFormat:@"%c" , digitFromTheBeginning]];
                } else {
                    s = [s stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:[NSString stringWithFormat:@"%c" , digitFromTheEnd]];
                }
                availableChanges --;
                necessaryChanges --;
            } else if (availableChanges > necessaryChanges) {
                if ([s characterAtIndex:i] != '9') {
                    s = [s stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"9"];
                    availableChanges --;
                }
                if ([s characterAtIndex:strLength - 1 - i] != '9') {
                    s = [s stringByReplacingCharactersInRange:NSMakeRange(strLength - 1 - i, 1) withString:@"9"];
                    availableChanges --;
                }
                necessaryChanges --;
            }
        }
        
    }
    return s;
}

- (int) getNecessaryChanges:(NSString *) digitString{
    int changesCount = 0;
    for (int i = 0; i < [digitString length] / 2; i++) {
        char firstDigit = [digitString characterAtIndex:i];
        char secondDigit = [digitString characterAtIndex:[digitString length] - 1 - i];
        if (firstDigit != secondDigit) {
            changesCount++;
        }
    }
    return changesCount;
}

@end
