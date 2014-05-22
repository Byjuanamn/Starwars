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


@interface AGTTableViewCharacters : UITableViewController

- (id) initWithModel: (AGTCharacterTableModel *)aModel withStyle:(UITableViewStyle) aStyle;
@property (strong, nonatomic) AGTCharacterTableModel *personajes;

@end
