//
//  ZHHStaticDataModel.m
//  ZHHStaticTableView_Example
//
//  Created by 桃色三岁 on 2022/10/21.
//  Copyright © 2022 桃色三岁. All rights reserved.
//

#import "ZHHStaticDataModel.h"
#import "ZHHStaticTableviewCellViewModel.h"
#import "ZHHStaticTableViewSectionViewModel.h"

@implementation ZHHStaticDataModel

+ (NSArray *)fetchStaticTableData {
    // ========== section 0
    ZHHStaticTableviewCellViewModel *vm0 = [[ZHHStaticTableviewCellViewModel alloc] init];
    vm0.cellClassName = @"ZHHCustomAvatarTableViewCell";
    vm0.identifier = 0;
    vm0.cellHeight = 80;
    vm0.avatarImage = [UIImage imageNamed:@"icon_example_avatar23"];
    vm0.userName = @"桃色三岁";
    vm0.userID = @"抖音号：taosesansui";
    vm0.codeImage = [UIImage imageNamed:@"icon_setting_qrcode"];
    vm0.cellType = ZHHStaticCellTypeCustom;
    
    ZHHStaticTableViewSectionViewModel *section0 = [[ZHHStaticTableViewSectionViewModel alloc] initWithDataSource:@[vm0]];
    
    
    // ========== section 1
    ZHHStaticTableviewCellViewModel *vm1 = [[ZHHStaticTableviewCellViewModel alloc] init];
    vm1.leftIconImage = [UIImage imageNamed:@"Expression_1"];
    vm1.leftTitleText = @"微笑";
    vm1.leftTitleTextColor = UIColor.zhh_titleColor;
    vm1.identifier = 1;
    vm1.rightArrowImage = [[UIImage alloc] init];
    
    ZHHStaticTableviewCellViewModel *vm2 = [[ZHHStaticTableviewCellViewModel alloc] init];
    vm2.leftIconImage = [UIImage imageNamed:@"Expression_2"];
    vm2.leftTitleText = @"瘪嘴";
    vm2.identifier = 2;
    vm2.rightDetailText = @"v1.0.0";
    vm2.rightDetailTextColor = UIColor.zhh_contentColor;
    vm2.rightDetailTextFont = UIFont.zhh_regular13;
    vm2.rightArrowImage = [[UIImage alloc] init];
    
    ZHHStaticTableviewCellViewModel *vm3 = [[ZHHStaticTableviewCellViewModel alloc] init];
    vm3.leftIconImage = [UIImage imageNamed:@"Expression_3"];
    vm3.leftTitleText = @"色色";
    vm3.identifier = 3;
    vm3.showRightOptionSwitch = YES;
    vm3.rightArrowImage = [[UIImage alloc] init];
    
    ZHHStaticTableviewCellViewModel *vm4 = [[ZHHStaticTableviewCellViewModel alloc] init];
    vm4.leftIconImage = [UIImage imageNamed:@"Expression_5"];
    vm4.leftTitleText = @"得意";
    vm4.identifier = 4;
      
    ZHHStaticTableViewSectionViewModel *section1 = [[ZHHStaticTableViewSectionViewModel alloc] initWithDataSource:@[vm1,vm2,vm3,vm4]];
    
    ZHHStaticTableviewCellViewModel *vm5 = [[ZHHStaticTableviewCellViewModel alloc] init];
    vm5.leftTitleText = @"隐私";
    vm5.identifier = 5;
    vm5.rightIconImage = [UIImage imageNamed:@"icon_example_avatar23"];
    vm5.rightIconImageSize = CGSizeMake(36, 36);
    
    ZHHStaticTableviewCellViewModel *vm6 = [[ZHHStaticTableviewCellViewModel alloc] init];
    vm6.leftTitleText = @"清理缓存";
    vm6.identifier = 6;
    vm6.rightDetailText = @"12.3M";
    vm6.rightDetailTextColor = UIColor.zhh_badgeColor;
    
    ZHHStaticTableviewCellViewModel *vm7 = [[ZHHStaticTableviewCellViewModel alloc] init];
    vm7.leftTitleText = @"隐私";
    vm7.identifier = 7;
    vm7.rightDetailText = @"我的字体加粗了";
    vm7.rightDetailTextFont = UIFont.zhh_boldMT10;
    vm7.rightDetailTextColor = UIColor.zhh_color5883E9;
    vm7.rightIconImage = [UIImage imageNamed:@"icon_example_avatar23"];
    vm7.rightIconImageSize = CGSizeMake(36, 36);
    
    ZHHStaticTableviewCellViewModel *vm8 = [[ZHHStaticTableviewCellViewModel alloc] init];
    vm8.leftTitleText = @"隐私";
    vm8.identifier = 8;
    vm8.rightTitleText = @"秘密";
    vm8.rightIconImage = [UIImage imageNamed:@"icon_shequn_browse"];
    
    ZHHStaticTableViewSectionViewModel *section2 = [[ZHHStaticTableViewSectionViewModel alloc] initWithDataSource:@[vm5,vm6,vm7,vm8]];
    section2.sectionHeaderText = @"通用设置";
    section2.sectionHeaderHeight = 40;
//    section1.sectionMargin = 20;
    section2.sectionFooterText = @"关闭后不再接收推送通知关闭后不再接收推送通知关闭后不再接收推送通知关闭后不再接收推送通知关闭后不再接收推送通知关闭后不再接收推送通知";
    section2.sectionFooterHeight = 70;
    section2.sectionHeaderIconImage = [UIImage imageNamed:@"Expression_5"];
    
    // ========== section 2
    ZHHStaticTableviewCellViewModel *vm9 = [[ZHHStaticTableviewCellViewModel alloc] init];
    vm9.leftTitleText = @"改变字体、颜色";
    vm9.leftTitleTextFont = UIFont.zhh_boldMT18;
    vm9.leftTitleTextColor = UIColor.zhh_themeColor;
    vm9.rightTitleText = @"购物";
    vm9.rightIconImage = [UIImage imageNamed:@"icon_example_avatar23"];
    vm9.identifier = 9;

    
    // ========== section 3
    ZHHStaticTableviewCellViewModel *vm10 = [[ZHHStaticTableviewCellViewModel alloc] init];
    vm10.leftIconImage = [UIImage imageNamed:@"IMG_0019"];
    vm10.leftTitleText = @"游戏";
    vm10.rightIconImage = [UIImage imageNamed:@"icon_example_avatar23"];
    vm10.rightTitleText = @"一起来玩王者荣耀呀!";
    vm10.identifier = 10;
    
    ZHHStaticTableViewSectionViewModel *section3 = [[ZHHStaticTableViewSectionViewModel alloc] initWithDataSource:@[vm9,vm10]];
    section3.sectionHeaderHeight = 10;
    
    //默认配置
    ZHHStaticTableviewCellViewModel *vm11 = [[ZHHStaticTableviewCellViewModel alloc] init];
    vm11.identifier = 11;
    vm11.leftIconImage = [UIImage imageNamed:@"Expression_33"];
    vm11.leftTitleText = @"全部默认配置，用于对照";
    vm11.rightIconImage = [UIImage imageNamed:@"icon_example_avatar23"];
    vm11.rightTitleText = @"王者荣耀!";
    
    
    ZHHStaticTableviewCellViewModel *vm12 = [[ZHHStaticTableviewCellViewModel alloc] init];
    vm12.identifier = 12;
    vm12.leftIconImage = [UIImage imageNamed:@"Expression_34"];
    vm12.leftTitleText = @"左侧图片变小";
    vm12.rightIconImage = [UIImage imageNamed:@"icon_mine_wallet_order"];
    vm12.rightTitleText = @"王者荣耀!";
    vm12.leftIconImageSize = CGSizeMake(20, 20);
    
    
    ZHHStaticTableviewCellViewModel *vm13 = [[ZHHStaticTableviewCellViewModel alloc] init];
    vm13.identifier = 13;
    vm13.leftIconImage = [UIImage imageNamed:@"Expression_13"];
    vm13.leftTitleText = @"字体变小变红,变高";
    vm13.rightIconImage = [UIImage imageNamed:@"icon_example_avatar23"];
    vm13.rightTitleText = @"王者荣耀!";
    vm13.rightDetailText = @"新消息";
    vm13.leftTitleTextFont = [UIFont systemFontOfSize:8];
    vm13.leftTitleTextColor = [UIColor redColor];
    vm13.cellHeight = 60;
    
    
    ZHHStaticTableviewCellViewModel *vm14 = [[ZHHStaticTableviewCellViewModel alloc] init];
    vm14.identifier = 14;
    vm14.leftIconImage = [UIImage imageNamed:@"Expression_55"];
    vm14.leftTitleText = @"左侧两个控件距离变大";
    vm14.rightIconImage = [UIImage imageNamed:@"icon_example_avatar23"];
    vm14.rightTitleText = @"王者荣耀!";
    vm14.leftContentSpacing = 35;
    
    
    ZHHStaticTableviewCellViewModel *vm15 = [[ZHHStaticTableviewCellViewModel alloc] init];
    vm15.identifier = 15;
    vm15.leftIconImage = [UIImage imageNamed:@"Expression_56"];
    vm15.leftTitleText = @"右侧图片变小";
    vm15.rightIconImage = [UIImage imageNamed:@"icon_example_avatar23"];
    vm15.rightTitleText = @"王者荣耀!";
    vm15.rightIconImageSize = CGSizeMake(15, 15);
    vm15.leftContentMargin = 35;
    
    
    
    ZHHStaticTableviewCellViewModel *vm16= [[ZHHStaticTableviewCellViewModel alloc] init];
    vm16.identifier = 16;
    vm16.leftIconImage = [UIImage imageNamed:@"mine_btn_yuyue"];
    vm16.leftTitleText = @"右侧字体变大变蓝";
    vm16.rightIconImage = [UIImage imageNamed:@"icon_mine_wallet_order"];
    vm16.rightTitleText = @"王者荣耀!";
    vm16.rightTitleTextFont = [UIFont systemFontOfSize:18];
    vm16.rightTitleTextColor = [UIColor blueColor];
    vm16.rightContentMargin = 40;
    
    
    ZHHStaticTableviewCellViewModel *vm17= [[ZHHStaticTableviewCellViewModel alloc] init];
    vm17.identifier = 17;
    vm17.leftIconImage = [UIImage imageNamed:@"mine_btn_yuyue"];
    vm17.leftTitleText = @"右侧两个控件距离变大";
    vm17.rightIconImage = [UIImage imageNamed:@"icon_example_avatar23"];
    vm17.rightTitleText = @"王者荣耀!";
    vm17.leftContentSpacing = 38;
    
    ZHHStaticTableViewSectionViewModel *section4 = [[ZHHStaticTableViewSectionViewModel alloc] initWithDataSource:@[vm11,vm12,vm13,vm14,vm15,vm16,vm17]];

    
    ZHHStaticTableviewCellViewModel *vm18 = [[ZHHStaticTableviewCellViewModel alloc] init];
    vm18.cellType = ZHHStaticCellTypeLogout;
    vm18.identifier = 18;
    
    ZHHStaticTableViewSectionViewModel *section10 = [[ZHHStaticTableViewSectionViewModel alloc] initWithDataSource:@[vm18]];
    section10.sectionHeaderHeight = 20;
    
    return @[section0,section1,section2,section3,section4,section10];
}

@end
