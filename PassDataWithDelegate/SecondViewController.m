//
//  SecondViewController.m
//  PassDataWithDelegate
//
//  Created by LFC on 16/8/9.
//  Copyright © 2016年 LFC. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTxt;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)okBtPressed:(id)sender {
    [_delegate userDidEnterName:self.nameTxt.text];
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)returnValue:(returnValueBlock)block{
    self.returnValueBlock = block;
}

- (IBAction)blockBtPressed:(id)sender {
    if (self.returnValueBlock != nil) {
        self.returnValueBlock(self.nameTxt.text);
    }
    [self.navigationController popViewControllerAnimated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
