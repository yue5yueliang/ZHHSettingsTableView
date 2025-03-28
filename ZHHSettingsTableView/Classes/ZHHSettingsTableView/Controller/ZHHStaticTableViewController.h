//
//  ZHHStaticTableViewController.h
//  ZHHStaticTableView_Example
//
//  Created by 桃色三岁 on 2022/10/21.
//  Copyright © 2022 桃色三岁. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZHHStaticTableViewHeader.h"
#import "ZHHBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

/**
 `ZHHDefaultDataType` 枚举:
 
 定义数据源的默认模式：
 */
typedef NS_ENUM(NSInteger, ZHHDefaultDataType) {
    /// 默认数据源，优先使用本地数据
    ZHHDefaultDataTypeExist,
    
    /// 仅依赖网络请求，拿到数据后手动创建表格
    ZHHDefaultDataTypeNone
};

/**
 `ZHHStaticTableViewController`

 - 适用于静态数据展示的 `UITableViewController` 组件。
 - 默认使用本地数据，若需网络数据，初始化时传 `ZHHDefaultDataTypeNone`。
 */
@interface ZHHStaticTableViewController : ZHHBaseViewController <ZHHStaticTableViewDelegate>

/// **主表格视图**
@property (nonatomic, strong, readonly) ZHHStaticTableView *mainTableView;
@property (nonatomic, assign) UITableViewStyle style;

/// **数据源模式（默认使用本地数据）**
@property (nonatomic, assign, readonly) ZHHDefaultDataType defaultDataType;

/// **初始化方法**
- (instancetype)initWithDataType:(ZHHDefaultDataType)dataType;

///// **手动创建表格（仅 `ZHHDefaultDataTypeNone` 需要调用）**
//- (void)configureTableView;

@end

NS_ASSUME_NONNULL_END
