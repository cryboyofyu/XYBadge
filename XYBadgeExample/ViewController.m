//
//  ViewController.m
//  XYBadgeExample
//
//  Created by XY Lv on 16/12/29.
//  Copyright © 2016年 吕欣宇. All rights reserved.
//

#import "ViewController.h"
#import "XYBadge.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"别忘了github给个星哦～";
    [self xy_layoutTableView];
}

- (void)xy_layoutTableView{
    UITableView * tableView = [[UITableView alloc]initWithFrame:CGRectMake(0,0,[UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height)];
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * cellIdentifier = @"xy";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(cell == nil){
        cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    [cell.imageView setImage:[UIImage imageNamed:@"girl1.jpg"]];
    cell.textLabel.text = @"颜颜";
    XYBadge * xyBadge = [[XYBadge alloc]initWithFrame:CGRectMake(50,0, 10, 10)];
    xyBadge.hidden = NO;
    [cell.contentView addSubview:xyBadge];
    xyBadge.xy_badgeValue = @"99";
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end










