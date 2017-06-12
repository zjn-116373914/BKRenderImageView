#import <UIKit/UIKit.h>

@interface UIImageView (BKRender)

/**[颜色渲染]主方法**/
- (void)bKRenderImageViewActionWithCIColor:(CIColor*)inputCIColor;

/**[马赛克]主方法**/
- (void)bKMosaicImageViewAction;

@end
