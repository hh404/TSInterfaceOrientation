//
//  ViewController.m
//  TSInterfaceOrientation
//
//  Created by huangjianwu on 2016/12/12.
//  Copyright © 2016年 huangjianwu. All rights reserved.
//

#import "ViewController.h"
#import "TSDemoViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UIViewController *currentViewController;
@end

@implementation ViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        TSDemoViewController *tc = [[TSDemoViewController alloc] init];
        self.currentViewController = tc;
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        TSDemoViewController *tc = [[TSDemoViewController alloc] init];
        self.currentViewController = tc;
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor yellowColor];

    _tableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    _tableView.dataSource= self;
    _tableView.delegate = self;
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    [self.view addSubview:_tableView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIInterfaceOrientationMask)supportedInterfaceOrientations {
//    return [self.currentViewController supportedInterfaceOrientations];
    return UIInterfaceOrientationMaskAll;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return [self.currentViewController preferredInterfaceOrientationForPresentation];
}

-(BOOL)shouldAutorotate {
    return [self.currentViewController shouldAutorotate];
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 1)
    {
        [self.navigationController presentViewController:_currentViewController
                                                animated:YES
                                              completion:^{

                                              }];
    }
    else
    {
        [self.navigationController pushViewController:_currentViewController animated:YES];
    }
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if(indexPath.row == 0)
    {
        cell.textLabel.text = @"Push";
    }
    else
    {
        cell.textLabel.text = @"Present";
    }
    return cell;
}

@end
