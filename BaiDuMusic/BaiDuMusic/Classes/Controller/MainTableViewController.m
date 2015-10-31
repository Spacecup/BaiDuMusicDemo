//
//  MainTableViewController.m
//  BaiDuMusic
//
//  Created by 余丽丽 on 15/10/30.
//  Copyright © 2015年 余丽丽. All rights reserved.
//

#import "MainTableViewController.h"
#import "MusicTool.h"
#import "Music.h"
#import "UIImage+Shape.h"
#import "PlayerViewController.h"


@interface MainTableViewController ()

@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.rowHeight = 80;
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [MusicTool shareMusics].count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString * ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    Music *music = [MusicTool shareMusics][indexPath.row];
    cell.imageView.image = [UIImage circelImageWithName:music.singerIcon borderWidth:3.0 borderColor:[UIColor purpleColor]];
    cell.textLabel.text = music.name;
    cell.detailTextLabel.text = music.singer;
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //让cell变成不选中状态
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    Music *music = [MusicTool shareMusics][indexPath.row];
    [MusicTool setPlayingMusic:music];
    //弹出播放器
    [[PlayerViewController sharePlayer] show];
}



@end
