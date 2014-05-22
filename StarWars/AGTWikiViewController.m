//
//  AGTWikiViewController.m
//  StarWars
//
//  Created by Fernando Rodríguez Romero on 6/1/13.
//  Copyright (c) 2013 Agbo. All rights reserved.
//

#import "AGTWikiViewController.h"



@implementation AGTWikiViewController

-(id) initWithModel:(AGTCharacterModel *)aModel{
    
    if (self = [super initWithNibName:nil
                               bundle:nil]) {
        _model = aModel;
        self.title = @"Wiki";
    }
    return self;
}

-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    // Asignamos delegados
    self.browser.delegate = self;
    
    // Sincronizar modelo->vista
    [self.browser loadRequest:[NSURLRequest requestWithURL:self.model.wikiPage]];
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIWebViewDelegate
-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [self.activityView stopAnimating];
}

-(BOOL)webView:(UIWebView *)webView
shouldStartLoadWithRequest:(NSURLRequest *)request
navigationType:(UIWebViewNavigationType)navigationType{
    
    
    if ((navigationType == UIWebViewNavigationTypeLinkClicked) ||
        (navigationType == UIWebViewNavigationTypeFormSubmitted) ||
        (navigationType == UIWebViewNavigationTypeFormResubmitted)) {
        return NO;
    }else{
        return YES;
    }
    
    
    
    
}





@end
