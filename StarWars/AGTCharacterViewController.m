//
//  AGTCharacterViewController.m
//  StarWars
//
//  Created by Fernando Rodríguez Romero on 6/1/13.
//  Copyright (c) 2013 Agbo. All rights reserved.
//

#import "AGTCharacterViewController.h"
#import "CafPlayer.h"
#import "AGTWikiViewController.h"

@implementation AGTCharacterViewController

-(id) initWithModel: (AGTCharacterModel *) aModel{
    
    if (self = [super initWithNibName:nil
                               bundle:nil]) {
        _model = aModel;
        self.title = aModel.alias;
    }
    return self;
}

-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    // Sincronizamos modelo->vista
    self.photoView.image = self.model.photo;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions
-(IBAction)playSound:(id)sender{
    
    
    self.player = [CafPlayer cafPlayer];
    [self.player playSoundData:self.model.soundData];
    
}


-(IBAction)displayWiki:(id)sender{
    
    // Crear un Wiki View Controller
    AGTWikiViewController *wikiVC = [[AGTWikiViewController alloc] initWithModel:self.model];
    
    // Hacer un push al navigation dentro
    // del cual estamos
    [self.navigationController pushViewController:wikiVC
                                         animated:YES];
    
}






@end
