//
//  ViewController.m
//  AZDocInteraction
//
//  Created by liguzhun on 2017/1/18.
//  Copyright © 2017年 XuZhen. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()<UIDocumentInteractionControllerDelegate>

@property (nonatomic, strong)UIDocumentInteractionController *documentFileVC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (UIDocumentInteractionController *)documentFileVC {
    if (!_documentFileVC) {
        _documentFileVC = [[UIDocumentInteractionController alloc]init];
        _documentFileVC.delegate = self;
    }
    return _documentFileVC;
}

#pragma mark - UIDocumentInteractionControllerDelegate

- (UIViewController *)documentInteractionControllerViewControllerForPreview:(UIDocumentInteractionController *)interactionController
{
    return self;
}
- (IBAction)onPreviewClick:(id)sender {
    
    NSURL *zipURL = [[NSBundle mainBundle]URLForResource:@"file2" withExtension:@"zip"];
    self.documentFileVC.URL = zipURL;
    
    [self.documentFileVC presentPreviewAnimated:YES];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
