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
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    NSString *imgPath = [[NSBundle mainBundle] pathForResource:@"testx" ofType:@"png"];
    self.imageView.image = [UIImage imageWithContentsOfFile:imgPath];

    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    
    NSLog(@"123 %@", [UIDevice cz_deviceInfo]);
    

}


@end
