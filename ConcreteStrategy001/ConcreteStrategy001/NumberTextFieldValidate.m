//
//  NumberTextFieldValidate.m
//  ConcreteStrategy001
//
//  Created by 刘德福 on 2018/3/27.
//  Copyright © 2018年 Dreams. All rights reserved.
//

#import "NumberTextFieldValidate.h"

@implementation NumberTextFieldValidate

- (BOOL)validateInputTextField:(UITextField *)textField
{
    // 1.判断没有输入就返回
    if(textField.text.length == 0) {
        self.attributeInputStr = @"请输入数字";
        return nil;
    }
    
    // 2.用正则验证
    // 从开头(表示^)到结尾(表示$)有效数字集(a-zA-Z)或者是更多(*)的字符  azcccc
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[0-9]*$" options:NSRegularExpressionAnchorsMatchLines error:nil];
    
    // NSMatchingAnchored 从开始处进行极限匹配
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:[textField text] options:NSMatchingAnchored range:NSMakeRange(0, [[textField text] length])];

    // 3.判断 匹配不符合表示0的话, 就走里面的漏记
    if (numberOfMatches == 0) {
         self.attributeInputStr = @"不全是数字,输入有问题,请重新输入";
    } else {
         self.attributeInputStr = @"输入正取,全是数字";
    }
    return  self.attributeInputStr==nil?YES:NO;
    
}

@end
