//
//  ZHHStaticTableViewController.m
//  ZHHStaticTableView_Example
//
//  Created by 桃色三岁 on 2022/10/21.
//  Copyright © 2022 桃色三岁. All rights reserved.
//

#import "ZHHStaticTableViewController.h"
#import "ZHHStaticTableViewModel.h"

@interface ZHHStaticTableViewController ()

/// **数据源模式**
@property (nonatomic, assign, readwrite) ZHHDefaultDataType defaultDataType;
@property (nonatomic, strong, readwrite) ZHHStaticTableView *mainTableView;

@end

@implementation ZHHStaticTableViewController

#pragma mark - 初始化方法

//- (instancetype)init {
//    return [self initWithDataType:ZHHDefaultDataTypeExist];
//}

- (instancetype)initWithData:(ZHHDefaultDataType)dataType {
    self = [super init];
    if (self) {
        _defaultDataType = dataType;
    }
    return self;
}

#pragma mark - 生命周期方法

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view addSubview:self.mainTableView];
    
    // 仅当数据源存在时，自动创建表格
    if (self.defaultDataType == ZHHDefaultDataTypeExist) {
//        [self configureTableView];
    }
}

#pragma mark - 表格初始化

- (ZHHStaticTableView *)mainTableView {
    if (!_mainTableView) {
        _mainTableView = [[ZHHStaticTableView alloc] initWithFrame:self.view.bounds style:self.style];
        [_mainTableView registerClass:[ZHHCustomAvatarTableViewCell class] forCellReuseIdentifier:@"ZHHCustomAvatarTableViewCell"];
        
        _mainTableView.zhh_delegate = self;
//        _mainTableView.zhh_dataSource = self.dataSource;
        _mainTableView.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;

        // 关闭 iOS 11+ 估算高度
        _mainTableView.estimatedRowHeight = 0;
        _mainTableView.estimatedSectionHeaderHeight = 0;
        _mainTableView.estimatedSectionFooterHeight = 0;
        
        _mainTableView.autoresizingMask = UIViewAutoresizingFlexibleWidth;

        // 适配 iOS 15+
        if (@available(iOS 15.0, *)) {
            _mainTableView.sectionHeaderTopPadding = 0;
        }
    }
    return _mainTableView;
}

@end
