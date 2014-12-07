//
//  main.m
//  First
//
//  Created by L on 5/12/14.
//
//

#import <Foundation/Foundation.h>

float calculateTax(float unitPrice, int quantity, float gst) {
    float totalPrice = unitPrice * quantity;
    return gst * totalPrice;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        float unitPrice = 500.0;
        int quantity = 3;
        float gst = 0.07;
        float taxToPay = calculateTax(unitPrice, quantity, gst);
        NSLog(@"Tax to pay = %.2f", taxToPay);
    }
    return 0;
}

