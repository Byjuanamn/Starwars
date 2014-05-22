//
//  AGTWikiViewController.h
//  StarWars
//
//  Created by Fernando Rodríguez Romero on 6/1/13.
//  Copyright (c) 2013 Agbo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AGTCharacterModel.h"


@interface AGTWikiViewController : UIViewController <UIWebViewDelegate>

@property (nonatomic, strong)AGTCharacterModel *model;
@property (nonatomic, weak) IBOutlet UIWebView *browser;
@property (nonatomic, weak) IBOutlet UIActivityIndicatorView *activityView;

-(id)initWithModel: (AGTCharacterModel *) aModel;


@end
