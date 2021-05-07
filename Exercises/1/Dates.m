#import "Dates.h"

@implementation Dates

- (NSString *)textForDay:(NSString *)day month:(NSString *)month year:(NSString *)year {
    NSDateFormatter *inputFormatter = [[NSDateFormatter alloc] init];
    [inputFormatter setDateFormat:@"uuuu/M/d"];

    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
    [outputFormatter setDateFormat:@"d MMMM, EEEE"];
    [outputFormatter setLocale:[NSLocale localeWithLocaleIdentifier:@"ru"]];

    NSDate *date = [inputFormatter dateFromString:[NSString stringWithFormat:@"%@/%@/%@", year, month, day]];

    if(date!=nil) {
        return [outputFormatter stringFromDate:date];
    } else {
        return @"Такого дня не существует";
    }
}

@end
