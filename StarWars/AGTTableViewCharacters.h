//
//  AGTTableViewCharacters.h
//  StarWars
//
//  Created by Juan Antonio Martin Noguera on 22/05/14.
//  Copyright (c) 2014 Agbo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AGTCharacterTableModel.h"

#define IMPERIAL_SECTION 1
#define REBEL_SECTION 0

@class AGTTableViewCharacters;

@protocol AGTTableViewCharactersDelegate <NSObject>

-(void)characterTableViewController:(AGTTableViewCharacters *)vc didChangeCharacter:(AGTCharacterModel*)character;

@end


@interface AGTTableViewCharacters : UITableViewController

@property (weak, nonatomic) id<AGTTableViewCharactersDelegate> delegate;
@property (strong, nonatomic) AGTCharacterTableModel *personajes;

- (id) initWithModel: (AGTCharacterTableModel *)aModel withStyle:(UITableViewStyle) aStyle;

@end
