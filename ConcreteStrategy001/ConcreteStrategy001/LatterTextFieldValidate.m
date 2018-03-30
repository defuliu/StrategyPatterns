//
//  LatterTextFieldValidate.m
//  ConcreteStrategy001
//
//  Created by 刘德福 on 2018/3/27.
//  Copyright © 2018年 Dreams. All rights reserved.
//

#import "LatterTextFieldValidate.h"

@implementation LatterTextFieldValidate

- (BOOL)validateInputTextField:(UITextField *)textField
{
    
    if (textField.text.length == 0) {
        self.attributeInputStr = @"请输入字符";
        return  self.attributeInputStr;
    }
    
    //用正则表达式 从开头(表示^)到结尾(表示$)有效字符集(a-zA-Z)或者是更多(*)的字符  azaaaa
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[a-zA-Z]*$" options:NSRegularExpressionAnchorsMatchLines error:nil];
    // NSMatchingAnchored 从开始处进行极限匹配r
    NSUInteger  numberOfMatches = [regex numberOfMatchesInString:[textField text] options:NSMatchingAnchored range:NSMakeRange(0, [textField.text length])];
    
    
    // 3.判断 匹配不符合表示0的话, 就走里面的漏记
    if (numberOfMatches == 0) {
        self.attributeInputStr = @"不全是字母,输入有问题,请重新输入";
    } else {
        self.attributeInputStr = @"输入正取,全是字母";
    }
    
    return self.attributeInputStr==nil?YES:NO;
    
}


@end
