#import "AbbreviationMaker.h"

@implementation AbbreviationMaker

// Complete the abbreviation function below.
- (NSString *) abbreviationFromA:(NSString *)a toB:(NSString *)b {
    NSArray *arrayB = [self getCharactersArrayFromString:b];
    
    NSMutableOrderedSet *setA = [NSMutableOrderedSet orderedSetWithArray:[self getCharactersArrayFromString:[a uppercaseString]]];
    NSOrderedSet *setB = [NSOrderedSet orderedSetWithArray: arrayB];
    [setA intersectOrderedSet: setB];
    NSString *resultString = [[setA allObjects] componentsJoinedByString:@""];
    return [resultString isEqual: b]? @"YES" : @"NO";
}

- (NSArray *) getCharactersArrayFromString:(NSString *)string{
    NSMutableArray *characters = [[NSMutableArray alloc] initWithCapacity:[string length]];
    for (int i=0; i < [string length]; i++) {
        NSString *ichar  = [NSString stringWithFormat:@"%c", [string characterAtIndex:i]];
        [characters addObject:ichar];
    }
    return characters;
}

@end
