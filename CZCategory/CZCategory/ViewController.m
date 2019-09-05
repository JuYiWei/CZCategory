//
//  ViewController.m
//  CZCategory
//
//  Created by juyiwei on 2019/4/9.
//  Copyright © 2019 居祎炜. All rights reserved.
//

#import "ViewController.h"
#import "Category/UIKit/CZUIKitHeader.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];



    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    
    NSLog(@"123 %@", [UIDevice cz_deviceInfo]);
    

}


@end
