//
//  MainViewController.m
//  BKRenderImageViewDemo
//
//  Created by 张加宁 on 2017/6/12.
//  Copyright © 2017年 BlackKnife. All rights reserved.
//

#import "MainViewController.h"
#import "UIImageView+BKRender.h"

#define ImageNameString @"ImageOfHinata"

@interface MainViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *mainImageView;

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (IBAction)renderOfRedAction:(UIButton *)sender
{
    [self.mainImageView setImage:[UIImage imageNamed:ImageNameString]];
    
    [self.mainImageView bKRenderImageViewActionWithCIColor:[CIColor redColor]];
}

- (IBAction)renderOfGreenAction:(UIButton *)sender
{
    [self.mainImageView setImage:[UIImage imageNamed:ImageNameString]];
    
    [self.mainImageView bKRenderImageViewActionWithCIColor:[CIColor greenColor]];
}

- (IBAction)renderOfBlueAction:(UIButton *)sender
{
    [self.mainImageView setImage:[UIImage imageNamed:ImageNameString]];
    
    [self.mainImageView bKRenderImageViewActionWithCIColor:[CIColor blueColor]];
}

- (IBAction)renderOfGrayAction:(UIButton *)sender
{
    [self.mainImageView setImage:[UIImage imageNamed:ImageNameString]];
    
    [self.mainImageView bKRenderImageViewActionWithCIColor:[CIColor colorWithRed:0.9 green:0.9 blue:0.9]];
}

- (IBAction)renderOfMosaicAction:(UIButton *)sender
{
    [self.mainImageView bKMosaicImageViewAction];
}

- (IBAction)cancelOfRender:(UIButton *)sender
{
    [self.mainImageView setImage:[UIImage imageNamed:ImageNameString]];
}

@end
