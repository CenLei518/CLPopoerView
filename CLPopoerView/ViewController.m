//
//  ViewController.m
//  CLPopoerView
//
//  Created by nil on 16/3/16.
//  Copyright © 2016年 CenLei. All rights reserved.
//

#import "ViewController.h"

#import "CLPopViewController.h"

@interface ViewController ()<UIPopoverPresentationControllerDelegate>
/** <#注释#> */
@property (nonatomic,strong) CLPopViewController *itemPopVC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(rightBarAction)];
    
    
}


-(void)rightBarAction
{

    self.itemPopVC = [[CLPopViewController alloc] initWithNibName:@"CLPopViewController" bundle:nil];
    self.itemPopVC.modalPresentationStyle = UIModalPresentationPopover;
    self.itemPopVC.popoverPresentationController.barButtonItem = self.navigationItem.rightBarButtonItem;
    //箭头方向
    self.itemPopVC.popoverPresentationController.permittedArrowDirections = UIPopoverArrowDirectionUp;
    //代理
    self.itemPopVC.popoverPresentationController.delegate = self;
    [self presentViewController:self.itemPopVC animated:YES completion:nil];
    
}

-(UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller
{
    NSLog(@"%@",controller);
    return  UIModalPresentationNone;
}



@end
