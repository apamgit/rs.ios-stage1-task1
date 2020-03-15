#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
    
    int minValue = 0;
    int maxValue = 0;
    int sumValue = 0;
    
    for (NSNumber* number in array) {
        sumValue += [number intValue];
    }
    
    minValue = sumValue;
    
    for (NSNumber* number in array) {
        int miniMaxSum = sumValue - [number intValue];
        if (miniMaxSum > maxValue) {
            maxValue = miniMaxSum;
        }
        if (miniMaxSum < minValue) {
            minValue = miniMaxSum;
        }
    }
    
    return @[@(minValue), @(maxValue)];
}

@end


