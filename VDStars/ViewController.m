//
//  ViewController.m
//  VDStars
//
//  Created by Zin_戦 on 16/11/11.
//  Copyright © 2016年 Zin_戦. All rights reserved.
//

#import "ViewController.h"
#import "SBStar.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *starsContainer;
@property (nonatomic ,strong)NSMutableArray *allStar;
@property (weak, nonatomic) IBOutlet UILabel *score;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    SBStar *sb = [[SBStar alloc] init];
    [sb createStars:3];
    sb.backgroundColor = [UIColor redColor];
    NSInteger  halfSize =self.view.frame.size.width/2;
    sb.frame = CGRectMake(0, 230, halfSize, 24);
    [self.view addSubview:sb];
    
    
    SBStar *sb2 = [[SBStar alloc] init];
    sb2.backgroundColor = [UIColor redColor];
    [sb2 createStars:0];
    sb2.frame = CGRectMake(halfSize, 230, self.view.frame.size.width/2, 24);
    [self.view addSubview:sb2];
}

@end
