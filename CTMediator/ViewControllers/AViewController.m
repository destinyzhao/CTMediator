//
//  AViewController.m
//  CTMediator
//
//  Created by Alex on 2017/2/7.
//  Copyright © 2017年 Alex. All rights reserved.
//

#import "AViewController.h"

@interface AViewController ()

@property (nonatomic, strong) UILabel *msgLabel;

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"A ViewController";
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.msgLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setMsg:(NSString *)msg {
    self.newsLabel.text = [NSString stringWithFormat:@"new id = %@", msg];
}

- (UILabel *)newsLabel {
    if (!_msgLabel) {
        _msgLabel = [[UILabel alloc] init];
        _msgLabel.textColor = [UIColor redColor];
        _msgLabel.frame = self.view.frame;
        _msgLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _msgLabel;
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
