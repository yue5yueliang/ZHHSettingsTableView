//
//  ZHHStaticTableViewCell+ZHHLogout.m
//  ZHHStaticTableView_Example
//
//  Created by 桃色三岁 on 2022/10/21.
//  Copyright © 2022 桃色三岁. All rights reserved.
//

#import "ZHHStaticTableViewCell+ZHHLogout.h"

@implementation ZHHStaticTableViewCell (ZHHLogout)

/// 配置退出登录按钮样式的 Cell
/// @param viewModel 视图模型，包含当前 Cell 的相关数据
- (void)configureLogoutTableViewCellWithViewModel:(ZHHStaticTableviewCellViewModel *)viewModel {
    self.viewModel = viewModel;
    
    // 添加退出登录按钮标签
    [self.contentView addSubview:self.logoutLabel];
    
    // 关闭 AutoresizingMask 转换，确保使用 Auto Layout 进行布局
    self.logoutLabel.translatesAutoresizingMaskIntoConstraints = NO;
    
    // 使用 NSLayoutConstraint 进行居中布局
    [NSLayoutConstraint activateConstraints:@[
        [self.logoutLabel.centerXAnchor constraintEqualToAnchor:self.contentView.centerXAnchor],
        [self.logoutLabel.centerYAnchor constraintEqualToAnchor:self.contentView.centerYAnchor]
    ]];
}

@end
