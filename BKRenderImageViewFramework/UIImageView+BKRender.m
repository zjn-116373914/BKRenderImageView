#import "UIImageView+BKRender.h"

@implementation UIImageView (BKRender)
/**[颜色渲染]主方法**/
- (void)bKRenderImageViewActionWithCIColor:(CIColor*)inputCIColor
{
    //渲染方式:@YES->CPU;@NO->GPU;
    NSDictionary *mainOption = @{kCIContextUseSoftwareRenderer:@NO};
    CIContext *mainContext = [CIContext contextWithOptions:mainOption];
    
    CIFilter *mainFilter = [CIFilter filterWithName:@"CIColorMonochrome"];
    CIImage *mainCIImage = [[CIImage alloc] initWithImage:self.image];
    CIColor *mainColor = inputCIColor;  //渲染颜色
    [mainFilter setValue:mainColor forKey:kCIInputColorKey];
    [mainFilter setValue:@1.0 forKey:kCIInputIntensityKey];
    [mainFilter setValue:mainCIImage forKey:kCIInputImageKey];
    
    CIImage *resultImage = mainFilter.outputImage;
    CGImageRef outputImage = [mainContext createCGImage:mainFilter.outputImage fromRect:resultImage.extent];
    self.image = [UIImage imageWithCGImage:outputImage];
    
    /**注意:CGImageRef对象必须通过CGImageRelease手动释放内存**/
    CGImageRelease(outputImage);
}

/**[马赛克渲染]主方法**/
- (void)bKMosaicImageViewAction
{
    CIImage *mainCIImage = [[CIImage alloc] initWithImage:self.image];
    CIFilter *mainFilter = [CIFilter filterWithName:@"CIPixellate"];
    [mainFilter setDefaults];
    [mainFilter  setValue:mainCIImage forKey:kCIInputImageKey];
    CIImage *outputImage = mainFilter.outputImage;
    
    self.image = [UIImage imageWithCIImage:outputImage];
}



@end
