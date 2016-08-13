//
//  ViewController.m
//  testwebapp
//
//  Created by Joyce Lim on 8/10/16.
//  Copyright © 2016 andrew. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.webview setDelegate:self];
    NSURL *url = [NSURL URLWithString:@"http://cuseum.tenminutemedia.net/"];
    /*UIView *firstView = [self.webview.subviews firstObject];
    
    if ([firstView isKindOfClass:[UIScrollView class]]) {
        
        UIScrollView *scroll = (UIScrollView*)firstView;
        [scroll setBounces:NO]; //to stop bouncing
        
    }*/
    self.webview.scrollView.bounces  = NO;
    self.webview.scrollView.scrollEnabled = TRUE;
    [self.webview loadRequest:[NSURLRequest requestWithURL:url]];
    self.backButton.hidden = YES;
    [self.backButton setEnabled:NO];
}

- (IBAction)backButton:(id)sender {
    if(self.webview.canGoBack){
        [self.webview goBack];
    }
}
- (void)webViewDidStartLoad:(UIWebView *)webView
{

    if([self.webview canGoBack]) {
        self.backButton.hidden = NO;
        [self.backButton setEnabled:YES];
    } else {
        self.backButton.hidden = YES;
        [self.backButton setEnabled:NO];
    }
}
- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    if([self.webview canGoBack]) {
        [self.backButton setEnabled:YES];
        self.backButton.hidden = NO;
    } else {
        self.backButton.hidden = YES;
        [self.backButton setEnabled:NO];
    }
}
- (void)shouldStartLoadWithRequest:(UIWebView *)webView
{
    if([self.webview canGoBack]) {
        [self.backButton setEnabled:YES];
        self.backButton.hidden = NO;
    } else {
        self.backButton.hidden = YES;
        [self.backButton setEnabled:NO];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
