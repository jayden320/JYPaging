//
//  ProductInfoViewController.m
//  PagingDemo
//
//  Created by Liu jinyong on 15/8/6.
//  Copyright (c) 2015年 Baidu 91. All rights reserved.
//

#import "ProductInfoViewController.h"
#import "UIScrollView+JYPaging.h"
#import "ProductDetailViewController.h"

@interface ProductInfoViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ProductInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    _scrollView.contentSize = CGSizeMake(0, 631);
    
    ProductDetailViewController *detailVC = [[ProductDetailViewController alloc] init];
    [self addChildViewController:detailVC];
    
    // just for force load view
    if (detailVC.view != nil) {
        _scrollView.secondScrollView = detailVC.scrollView;
    }
}

@end
