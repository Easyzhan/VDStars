//
//  SBStar.m
//  VDStars
//
//  Created by Zin_戦 on 16/11/11.
//  Copyright © 2016年 Zin_戦. All rights reserved.
//

#import "SBStar.h"
@interface SBStar () {
   
    UIView *viewV;
}

@end

@implementation SBStar

- (instancetype)initWithFrame: (CGRect)frame
{
    if (self = [super initWithFrame: frame]) {
       
//        [self createStars];

    }
    return self;
}

- (void)createStars :(NSInteger) redStar{

    _allStar = [NSMutableArray array];
    UIImageView *imageView;
    for (int i = 0; i < 5; i++) {
        if (i<redStar) {
            imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"button_star_red"]];
        }else{
            imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"button_star_white"]];
        }
        imageView.frame = CGRectMake(self.bounds.origin.x+((i+1)*24), self.bounds.origin.y, 24, 24);
        [self addSubview:imageView];
        [_allStar addObject:imageView];
    }

}

#pragma mark - 点击的坐标
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint touchPoint = [touch locationInView:self];
    UIImageView *im ;
    for(int i = 0;i < 5 ; i++){
        im = _allStar[i];
        NSLog(@"_all[%i] = (%f,%f)",i,im.frame.origin.x,im.frame.origin.y);
        if ((touchPoint.x > 0)&&(touchPoint.x < 144)&&(touchPoint.y > 0)&&(touchPoint.y < 24)) {
            NSString *myscore = [NSString stringWithFormat:@"分数为：%i",((int)touchPoint.x)/24];
//            _score.text = myscore;//_score是一个UILable，myscore为分数，显示在给用户看，关于这个不在赘述
            if (im.frame.origin.x > touchPoint.x) {
                im.image =[UIImage imageNamed:@"button_star_white"];
            }else{
                im.image =[UIImage imageNamed:@"button_star_red"];
            }
        }
    }
}
#pragma mark - 滑动的坐标
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint touchPoint = [touch locationInView:self];
    UIImageView *im ;
    for(int i = 0;i < 5 ; i++){
        im = _allStar[i];
        NSLog(@"_all[%i] = (%f,%f)",i,im.frame.origin.x,im.frame.origin.y);
        if ((touchPoint.x > 0)&&(touchPoint.x < 144)&&(touchPoint.y > 0)&&(touchPoint.y < 24)) {
            NSString *myscore = [NSString stringWithFormat:@"分数为：%i",((int)touchPoint.x)/24];
//            _score.text = myscore;//_score是一个UILable，myscore为分数，显示在给用户看，关于这个不在赘述
            if (im.frame.origin.x > touchPoint.x) {
                im.image =[UIImage imageNamed:@"button_star_white"];
            }else{
                im.image =[UIImage imageNamed:@"button_star_red"];
            }
        }
    }
}

@end
