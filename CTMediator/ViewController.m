//
//  ViewController.m
//  CTMediator
//
//  Created by Alex on 2017/2/7.
//  Copyright © 2017年 Alex. All rights reserved.
//

#import "ViewController.h"
#import "CTMediator+ModuleAActions.h"

NSString * const kCellIdentifier = @"kCellIdentifier";

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *dataSource;

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.tableView.frame = self.view.bounds;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:self.tableView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier];
    cell.textLabel.text = self.dataSource[indexPath.row];
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.row == 0) {
        //1: ViewController.m发起调用请求给CTMediator(CTMediator+CTMediatorModuleAActions.m)
        UIViewController *viewController = [[CTMediator sharedInstance] ct_Mediator_ViewControllerWithAction:@"NativeToPresentViewController" params:nil];
        
        // 获得view controller之后，在这种场景下，到底push还是present，其实是要由使用者决定的，mediator只要给出view controller的实例就好了
        [self presentViewController:viewController animated:YES completion:nil];
    }
    else if (indexPath.row == 1) {
        UIViewController *viewController = [[CTMediator sharedInstance] ct_Mediator_ViewControllerWithAction:@"NativeToAViewController" params:@{@"msg":@"123456"}];
        [self.navigationController pushViewController:viewController animated:YES];
    }
    else if (indexPath.row == 2) {
        UIViewController *viewController = [[CTMediator sharedInstance] ct_Mediator_ViewControllerWithAction:@"NativeToBViewController" params:nil];
        [self.navigationController pushViewController:viewController animated:YES];
    }
    
}

#pragma mark - getters and setters
- (UITableView *)tableView
{
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kCellIdentifier];
    }
    return _tableView;
}

- (NSArray *)dataSource
{
    if (_dataSource == nil) {
        _dataSource = @[@"present view controller", @"push A view controller", @"push B view controller"];
    }
    return _dataSource;
}


@end
