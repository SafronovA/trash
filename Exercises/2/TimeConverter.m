#import "TimeConverter.h"

@implementation TimeConverter


// Complete the following function
- (NSString*)convertFromHours:(NSString*)hours minutes:(NSString*)minutes {
    NSArray *minutesArray = @[@"one",
                              @"two",
                              @"three",
                              @"four",
                              @"five",
                              @"six",
                              @"seven",
                              @"eight",
                              @"nine",
                              @"ten",
                              @"eleven",
                              @"twelve",
                              @"thirteen",
                              @"fourteen",
                              @"fifteen",
                              @"sixteen",
                              @"seventeen",
                              @"eighteen",
                              @"nineteen",
                              @"twenty",
                              @"twenty one",
                              @"twenty two",
                              @"twenty three",
                              @"twenty four",
                              @"twenty five",
                              @"twenty six",
                              @"twenty seven",
                              @"twenty eight",
                              @"twenty nine",
                              @"thirty"];
    
    NSArray *hoursArray = @[@"zero",
                            @"one",
                            @"two",
                            @"three",
                            @"four",
                            @"five",
                            @"six",
                            @"seven",
                            @"eight",
                            @"nine",
                            @"ten",
                            @"eleven",
                            @"twelve"];
    
    int hoursInt = [hours intValue];
    int minutesInt = [minutes intValue];
    
    switch (minutesInt) {
        case 0:
            return [NSString stringWithFormat:@"%@ o' clock", hoursArray[hoursInt]];
        case 1:
            return [NSString stringWithFormat:@"one minute past %@", hoursArray[hoursInt]];
        case 15:
            return [NSString stringWithFormat:@"quarter past %@", hoursArray[hoursInt]];
        case 30:
            return [NSString stringWithFormat:@"half past %@", hoursArray[hoursInt]];
        case 45:
            return [NSString stringWithFormat:@"quarter to %@", hoursArray[hoursInt + 1]];
        case 59:
            return [NSString stringWithFormat:@"one minute to %@", hoursArray[hoursInt + 1]];
        default:
            if (minutesInt > 1 && minutesInt < 30) {
                return [NSString stringWithFormat:@"%@ minutes past %@", minutesArray[minutesInt - 1], hoursArray[hoursInt]];
            }
            if (minutesInt > 30 && minutesInt < 59) {
                return [NSString stringWithFormat:@"%@ minutes to %@", minutesArray[60 - minutesInt - 1], hoursArray[hoursInt + 1]];
            }
    }
    return @"";
}
@end
