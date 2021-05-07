#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
    NSNumber *minNumber = [array valueForKeyPath:@"@min.intValue"];
    NSNumber *maxNumber = [array valueForKeyPath:@"@max.intValue"];
    NSNumber* sum = [array valueForKeyPath: @"@sum.self"];
    return @[
  @([sum integerValue] - [maxNumber integerValue]),
  @([sum integerValue] - [minNumber integerValue])];
}

@end
