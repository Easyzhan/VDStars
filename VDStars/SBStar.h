//
//  SBStar.h
//  VDStars
//
//  Created by Zin_戦 on 16/11/11.
//  Copyright © 2016年 Zin_戦. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SBStar : UIView

@property (nonatomic ,strong)NSMutableArray *allStar;
- (void)createStars :(NSInteger) redStar;
@end
