#import "Parser.h"

@implementation Parser

// Complete the parseString function below.
- (NSArray <NSString*>*)parseString:(NSString*)string {
    NSDictionary *bracketsDict = @{@"(": @")", @"<": @">", @"[": @"]"};
    NSMutableArray *resultArray = [[NSMutableArray alloc] init];
    NSArray *openBrackets = [bracketsDict allKeys];
    for (int inputI = 0; inputI < [string length]; inputI++) {
        NSString *currentChar = [NSString stringWithFormat:@"%c", [string characterAtIndex:inputI]];
        if ([openBrackets containsObject:currentChar]) {
            NSString *subStr = [string substringFromIndex:inputI + 1];
            NSString *openBracket = currentChar;
            NSString *closeBracket = [bracketsDict valueForKey:currentChar];
            int missingBracketsNumber = 0;
            
            for (int subI = 0; subI < [subStr length]; subI++) {
                NSString *currentSubStrChar = [NSString stringWithFormat:@"%c", [subStr characterAtIndex:subI]];
                if ([openBracket isEqualToString:currentSubStrChar]) {
                    missingBracketsNumber++;
                } else
                    if ([closeBracket isEqualToString:currentSubStrChar]) {
                        if(missingBracketsNumber == 0){
                            NSString *resultSubStr = [subStr substringToIndex:subI];
                            [resultArray addObject:resultSubStr];
                            break;
                        } else {
                            missingBracketsNumber --;
                        }
                    }
            }
        }
    }
    
    return resultArray;
}

@end
