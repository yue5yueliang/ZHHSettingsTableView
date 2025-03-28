//
//  ZHHStaticTableViewHeader.h
//  ZHHStaticTableView
//
//  Created by 桃色三岁 on 2022/10/21.
//  Copyright © 2022 桃色三岁. All rights reserved.
//

#ifndef ZHHStaticTableViewHeader_h
#define ZHHStaticTableViewHeader_h

/// 封装好的静态表格视图，继承自 UITableView，用于展示静态数据
#import "ZHHStaticTableView.h"

/// 静态表格的数据源管理类，负责管理表格的数据模型
#import "ZHHStaticTableViewModel.h"

/// 封装好的基础控制器，持有 ZHHStaticTableView，提供通用的静态表格管理功能
#import "ZHHStaticTableViewController.h"

/// 用于描述表格 Cell 的数据模型（ViewModel），封装 Cell 相关的数据和逻辑
#import "ZHHStaticTableviewCellViewModel.h"

/// 用于描述表格 Section 的数据模型（ViewModel），封装 Section 相关的数据和逻辑
#import "ZHHStaticTableviewSectionViewModel.h"

/// 静态表格中所有 Cell 的基类，提供通用的 Cell 逻辑
#import "ZHHStaticTableViewCell.h"

/// 自定义头像 Cell，专门用于显示用户头像及相关信息
#import "ZHHCustomAvatarTableViewCell.h"

/// 退出登录按钮 Cell 的分类，提供退出登录相关的 UI 和交互
#import "ZHHStaticTableViewCell+ZHHLogout.h"

#endif /* ZHHStaticTableViewHeader_h */
