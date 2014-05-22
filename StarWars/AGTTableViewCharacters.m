//
//  AGTTableViewCharacters.m
//  StarWars
//
//  Created by Juan Antonio Martin Noguera on 22/05/14.
//  Copyright (c) 2014 Agbo. All rights reserved.
//

#import "AGTTableViewCharacters.h"
#import "AGTCharacterModel.h"
#import "AGTWikiViewController.h"

@interface AGTTableViewCharacters ()

@end

@implementation AGTTableViewCharacters

- (id) initWithModel: (AGTCharacterTableModel *)aModel withStyle:(UITableViewStyle) aStyle{
    
    if (self = [super initWithStyle:aStyle]) {
        _personajes = aModel;
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"CELL"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
   // Return the number of sections.
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    if (section == IMPERIAL_SECTION) {
        return [self.personajes imperialCount];
    } else {
        return [self.personajes rebelCount];
    }
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"CELL";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    if (cell == nil) {
        // tenemos que crear la celda
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault
                                     reuseIdentifier:@"CELL"];
    }
    
    // sincronizar con modelo
    
    
    AGTCharacterModel *character;
    if (indexPath.section == IMPERIAL_SECTION) {
        character = [self.personajes imperialCharacterAtIndex:indexPath.row];
    } else {
        character = [self.personajes rebelCharacterAtIndex:indexPath.row];
    }

    cell.textLabel.text = character.alias;
    
    cell.imageView.image = character.photo;
    return cell;
}



#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Push the view controller.

    AGTCharacterModel *character;
    if (indexPath.section == IMPERIAL_SECTION) {
        character = [self.personajes imperialCharacterAtIndex:indexPath.row];
    } else {
        character = [self.personajes rebelCharacterAtIndex:indexPath.row];
    }
    
    AGTWikiViewController *wikiController = [[AGTWikiViewController alloc]initWithModel:character];
    
    [self.navigationController pushViewController:wikiController animated:YES];
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section == IMPERIAL_SECTION) {
        return  @"IMPERIALSSSS";
    } else {
        return @"AMIGOS REBELDES";
    }
}














@end
