//
//  UIImageView+BKRender.h
//  BKRenderImageView
//
//  Created by 张加宁 on 2017/6/12.
//  Copyright © 2017年 BlackKnife. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (BKRender)

/**[颜色渲染]主方法**/
- (void)bKRenderImageViewActionWithCIColor:(CIColor*)inputCIColor;

/**[马赛克]主方法**/
- (void)bKMosaicImageViewAction;

@end
