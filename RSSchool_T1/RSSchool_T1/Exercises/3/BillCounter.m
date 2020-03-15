#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {
    
    if (!bill || index < 0 || index >= [bill count]) {
        return nil;
    }
    NSInteger currentSum = [[bill valueForKeyPath:@"@sum.self"] intValue];
    currentSum -= [bill[index] intValue];
    currentSum /= 2;
    if ([sum intValue] == currentSum) {
        return @"Bon Appetit";
    } else {
        return [NSString stringWithFormat:@"%ld", [sum intValue] - currentSum];
    }
}

@end
