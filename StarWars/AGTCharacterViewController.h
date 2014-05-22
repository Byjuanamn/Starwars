//
//  AGTCharacterViewController.h
//  StarWars
//
//  Created by Fernando Rodríguez Romero on 6/1/13.
//  Copyright (c) 2013 Agbo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AGTCharacterModel.h"
#import "CafPlayer.h"

@interface AGTCharacterViewController : UIViewController

@property (nonatomic, strong) AGTCharacterModel *model;
@property (nonatomic, weak) IBOutlet UIImageView *photoView;
@property (nonatomic, strong)CafPlayer *player;

-(id) initWithModel: (AGTCharacterModel *) aModel;

-(IBAction)playSound:(id)sender;
-(IBAction)displayWiki:(id)sender;

@end






