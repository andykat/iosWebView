//
//  ViewController.h
//  testwebapp
//
//  Created by Joyce Lim on 8/10/16.
//  Copyright © 2016 andrew. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIButton *backButton;

@property (weak, nonatomic) IBOutlet UIWebView *webview;

@end

