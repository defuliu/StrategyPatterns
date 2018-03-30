//
//  CustomTextField.m
//  ConcreteStrategy001
//
//  Created by 刘德福 on 2018/3/27.
//  Copyright © 2018年 Dreams. All rights reserved.
//

#import "CustomTextField.h"

@implementation CustomTextField

- (BOOL)validate
{
    BOOL result = [self.inputValidate validateInputTextField:self];
    if (!result) {
        NSLog(@"----%@", self.inputValidate.attributeInputStr);
    } else {
        NSLog(@"----%@", self.inputValidate.attributeInputStr);
    }
    
    return result;
}

@end
