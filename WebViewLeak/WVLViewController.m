//
//  WVLViewController.m
//  WebViewLeak
//
//  Created by omochimetaru on 13/03/15.
//  Copyright (c) 2013年 omochimetaru All rights reserved.
//

#import "WVLViewController.h"


@interface WVLViewController ()
@property(nonatomic,strong)IBOutlet UIScrollView *scrollView;
@property(nonatomic,strong)UIWebView *webView;
@end

@implementation WVLViewController

-(void)viewWillLayoutSubviews{
	CGSize size = self.scrollView.bounds.size;
	self.scrollView.contentSize = CGSizeMake(size.width*2, size.height);
}

-(void)viewDidAppear:(BOOL)animated{
	[super viewDidAppear:animated];
	
	dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(){
		for(int i=0;;i++){
			NSLog(@"loop %d",i);
			
			dispatch_async(dispatch_get_main_queue(), ^(){
				self.webView = [[UIWebView alloc]initWithFrame:CGRectInset(self.view.bounds, 48, 48)];
				[self.scrollView addSubview:self.webView];
			});
			
			[NSThread sleepForTimeInterval:0.04];
			
			dispatch_async(dispatch_get_main_queue(), ^(){
				[self.webView removeFromSuperview];
			});
			
			[NSThread sleepForTimeInterval:0.04];
		}
	});
}

@end
