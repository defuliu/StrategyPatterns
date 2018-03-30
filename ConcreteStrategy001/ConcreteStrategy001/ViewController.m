//
//  ViewController.m
//  ConcreteStrategy001
//
//  Created by 刘德福 on 2018/3/26.
//  Copyright © 2018年 Dreams. All rights reserved.
//

#import "ViewController.h"
#import "CustomTextField.h"
#import "LatterTextFieldValidate.h"
#import "NumberTextFieldValidate.h"

@interface ViewController ()<UITextFieldDelegate>

@property(nonatomic, strong)CustomTextField *letterInput;
@property(nonatomic, strong)CustomTextField *numberInput;
@property(nonatomic, strong)UIButton *printBtn;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];


    
    self.letterInput = [[CustomTextField alloc] initWithFrame:CGRectMake(10,100,self.view.frame.size.width - 2*10   , 40)];
    self.letterInput.placeholder = @"只接受字母";
    self.letterInput.delegate = self;
    self.letterInput.layer.borderWidth = 1;
    [self.view addSubview: self.letterInput];

    self.numberInput =  [[CustomTextField alloc] initWithFrame:CGRectMake(10,170,self.view.frame.size.width - 2*10   , 40)];
    self.numberInput.placeholder = @"只接受数字";
    self.numberInput.layer.borderWidth = 1;
    self.numberInput.delegate = self;
    [self.view addSubview: self.numberInput];
    
    self.printBtn = [[UIButton alloc] initWithFrame:CGRectMake(10, 240, self.view.frame.size.width - 2*10, 40)];
    self.printBtn.backgroundColor = [UIColor redColor];
    [self.printBtn setTitle:@"测试" forState:UIControlStateNormal];
    [self.printBtn addTarget:self action:@selector(action:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.printBtn];
    

    self.letterInput.inputValidate = [LatterTextFieldValidate new];
    self.numberInput.inputValidate = [NumberTextFieldValidate new];
    
  
}

- (void)action:(UIButton *)sender
{
    [self.view endEditing:YES];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    
    if ([textField isKindOfClass:[CustomTextField class]]) {
        
        [(CustomTextField *)textField validate];
    }
}


@end
