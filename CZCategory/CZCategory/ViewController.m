//
//  ViewController.m
//  CZCategory
//
//  Created by juyiwei on 2019/4/9.
//  Copyright © 2019 居祎炜. All rights reserved.
//

#import "ViewController.h"
#import "Category/UIKit/CZUIKitHeader.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UIButton *button;

@property (nonatomic, strong) UIScrollView *scrollView;


@property (nonatomic, copy) void(^buttonAction)(void);


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat maxY = CGRectGetMaxY(self.button.frame);
    
    
    if (CZ_SCREEN_PHONE_MAX_1242x2688) {
        NSLog(@"max");
    }
    if (CZ_SCREEN_PHONE_XR_828x1792) {
        NSLog(@"xr");
    }
    if (CZ_SCREEN_PHONE_X_1125x2436) {
        NSLog(@"x");
    }
    if (CZ_SCREEN_PHONE_PLUS_1242x2208) {
        NSLog(@"plus");
    }
    if (CZ_SCREEN_PHONE_6_750x1334) {
        NSLog(@"6");
    }
    if (CZ_SCREEN_PHONE_5_640x1136) {
        NSLog(@"5");
    }
    if (CZ_SCREEN_PHONE_4_640x960) {
        NSLog(@"4");
    }
    
    
//    [self initUI];
}


#pragma mark - Action


- (void)action_button:(UIButton *)button {
    NSLog(@"button");
    if (self.buttonAction) {
        self.buttonAction();
    }
}

#pragma mark - Methods

#pragma mark - Http

#pragma mark - Delegate

#pragma mark - TableView Delegate

// num
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

// row
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([UITableViewCell class])];
    cell.textLabel.text = [NSString stringWithFormat:@"%ld - %ld", indexPath.section, indexPath.row];

    return cell;
}

// header
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return CGFLOAT_MIN;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForHeaderInSection:(NSInteger)section {
    if (@available(iOS 10, *)) {
        return CGFLOAT_MIN;
    } else {
        return 1;
    }
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return [[UIView alloc] init];
}

// footer
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return CGFLOAT_MIN;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForFooterInSection:(NSInteger)section {
    if (@available(iOS 10, *)) {
        return CGFLOAT_MIN;
    } else {
        return 1;
    }
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return [[UIView alloc] init];
}

// select
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

#pragma mark - Overwrite

#pragma mark - UI

- (void)initUI {
    [self.view addSubview:self.label];
    [self.view addSubview:self.tableView];
    [self.view addSubview:self.button];
    
    self.tableView.frame = self.view.bounds;
}

#pragma mark - Getter

- (UILabel *)label {
    if (!_label) {
        _label = [[UILabel alloc] init];
        _label.font = CZ_FONT_SYSTEM(12);
        _label.textColor = CZ_HEX_COLOR(@"111233");
        _label.textAlignment = NSTextAlignmentLeft;
        _label.numberOfLines = 1;
        _label.adjustsFontSizeToFitWidth = YES;
        _label.minimumScaleFactor = 0.2;
//        _label.text = CZ_TEST_STRING;
    }
    return _label;
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.delegate = self;
        
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:NSStringFromClass([UITableViewCell class])];
//        [_tableView registerClass:[<#Class#> class] forCellReuseIdentifier:NSStringFromClass([<#Class#> class])];
    }
    return _tableView;
}

- (UIButton *)button {
    if (!_button) {
        _button = [UIButton buttonWithType:UIButtonTypeCustom];
        _button.titleLabel.font = CZ_FONT_SYSTEM(12);
        [_button cz_setTitle:@"adsasd"];
        [_button cz_setTitleColor:CZ_HEX_COLOR(@"221122")];
        
        [_button addTarget:self action:@selector(action_button:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _button;
}



@end
