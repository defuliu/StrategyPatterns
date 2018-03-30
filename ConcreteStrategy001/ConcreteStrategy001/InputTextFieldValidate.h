//
//  InputTextFieldValidate.h
//  ConcreteStrategy001
//
//  Created by 刘德福 on 2018/3/27.
//  Copyright © 2018年 Dreams. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface InputTextFieldValidate : NSObject

- (BOOL)validateInputTextField:(UITextField *)textfeild;

@property (nonatomic, strong)NSString *attributeInputStr;

@end
