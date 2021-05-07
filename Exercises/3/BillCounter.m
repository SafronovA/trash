#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {
    
    int billSum = [[bill valueForKeyPath: @"@sum.self"] intValue];

    int brayansBill = (billSum - [bill[index] intValue]) / 2 + [bill[index] intValue];
    int annsBill = billSum - brayansBill;
    if ([sum intValue] == annsBill){
       return @"Bon Appetit";
    }
    else{
        return [@([sum intValue] - annsBill) stringValue];
    }
}

@end
