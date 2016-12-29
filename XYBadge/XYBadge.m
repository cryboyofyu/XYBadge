//
//  XYBadge.m
//  XYBadgeExample
//
//  Created by XY Lv on 16/12/29.
//  Copyright © 2016年 吕欣宇. All rights reserved.
//

#import "XYBadge.h"

@implementation XYBadge

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        [self xy_setStyle];
    }
    return self;
}

- (void)xy_setStyle{
    self.backgroundColor= [UIColor redColor];
    self.textColor = [UIColor whiteColor];
    self.layer.cornerRadius = self.bounds.size.height/2;
    self.layer.masksToBounds = YES;
    self.hidden = YES;
    self.font = [UIFont systemFontOfSize:7];
    self.textAlignment = NSTextAlignmentCenter;
}

- (void)setXy_badgeValue:(NSString *)xy_badgeValue{
    _xy_badgeValue = xy_badgeValue;
    if(xy_badgeValue.length >1){
        if(xy_badgeValue.length>2){
            CGFloat xy_height = self.bounds.size.height;
            self.bounds = CGRectMake(0, 0, xy_height*2,xy_height);
          xy_badgeValue = @"99+";
        }else{
            CGFloat xy_height = self.bounds.size.height;
            self.bounds = CGRectMake(0, 0, xy_height*3/2,xy_height);
        }
    }else if(xy_badgeValue == nil||xy_badgeValue.length<1){
        CGFloat xy_height = self.bounds.size.height;
        self.bounds = CGRectMake(0, 0, xy_height*2,xy_height);
        xy_badgeValue = @"...";
    }
    self.text = xy_badgeValue;
}


@end


















