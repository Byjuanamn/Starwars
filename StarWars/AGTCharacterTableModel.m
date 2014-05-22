//
//  AGTCharacterTableModel.m
//  StarWars
//
//  Created by Juan Antonio Martin Noguera on 22/05/14.
//  Copyright (c) 2014 Agbo. All rights reserved.
//

#import "AGTCharacterTableModel.h"



@interface AGTCharacterTableModel ()
    
@property (strong, nonatomic)NSArray *rebels;
@property (strong, nonatomic)NSArray *imperials;

@end

@implementation AGTCharacterTableModel


-(int)rebelCount{
    return [self.rebels count];
}

-(int)imperialCount{
    return [self.imperials count];
}

- (AGTCharacterModel*) rebelCharacterAtIndex:(int)index{
    return [self.rebels objectAtIndex:index];
//    return self.rebels[index];
}

- (AGTCharacterModel *) imperialCharacterAtIndex:(int)index{
    return self.imperials[index];
}

- (id)init{
    
    if (self = [super init]) {
        // Darth Vader
        NSURL *vaderURL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Darth_Vader"];
        NSURL *soundURL = [[NSBundle mainBundle] URLForResource:@"vader" withExtension:@"caf"];
        
        NSData *vaderSound = [NSData dataWithContentsOfURL:soundURL];
        
        UIImage *vaderImage = [UIImage imageNamed:@"darthVader.jpg"];
        
        AGTCharacterModel *vader = [[AGTCharacterModel alloc]
                                    initWithFirstName:@"Anakin"
                                    lastName:@"Skywalker"
                                    alias:@"Darth Vader"
                                    wikiPage:vaderURL
                                    photo:vaderImage
                                    soundData:vaderSound];
        
        // Palpatine
        NSURL *palpatineURL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Palpatine"];
        NSURL *palpatineSoundURL = [[NSBundle mainBundle] URLForResource:@"palpatine" withExtension:@"caf"];
        
        NSData *palpatineSound = [NSData dataWithContentsOfURL:palpatineSoundURL];
        
        UIImage *palpatineImage = [UIImage imageNamed:@"palpatine.jpg"];
        
        AGTCharacterModel *palpatine = [[AGTCharacterModel alloc]
                                        initWithFirstName:nil
                                        lastName:@"Palpatine"
                                        alias:@"Darth Sidious"
                                        wikiPage:palpatineURL
                                        photo:palpatineImage
                                        soundData:palpatineSound];
        
        self.imperials = @[palpatine, vader];
        
        // rebeldes
        // Yoda
        NSURL *yodaURL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Yoda"];
        NSURL *yodaSoundURL = [[NSBundle mainBundle] URLForResource:@"yoda" withExtension:@"caf"];
        
        NSData *yodaSound = [NSData dataWithContentsOfURL:yodaSoundURL];
        
        UIImage *yodaImage = [UIImage imageNamed:@"yoda.jpg"];
        
        AGTCharacterModel *yoda = [[AGTCharacterModel alloc]
                                   initWithFirstName:@"Minch"
                                   lastName:@"Yoda"
                                   alias:@"Master Yoda"
                                   wikiPage:yodaURL
                                   photo:yodaImage
                                   soundData:yodaSound];
        
        // C-3PO
        NSURL *c3poURL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/C-3PO"];
        NSURL *c3poSoundURL = [[NSBundle mainBundle] URLForResource:@"c3po" withExtension:@"caf"];
        
        NSData *c3poSound = [NSData dataWithContentsOfURL:c3poSoundURL];
        
        UIImage *c3poImage = [UIImage imageNamed:@"c3po.jpg"];
        
        AGTCharacterModel *c3po = [[AGTCharacterModel alloc]
                                   initWithAlias:@"C-3PO" wikiPage:c3poURL
                                   photo:c3poImage
                                   soundData:c3poSound];
        
        // Chewbacca
        NSURL *chewieURL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Chewbacca"];
        NSURL *chewieSoundURL = [[NSBundle mainBundle] URLForResource:@"chewbacca" withExtension:@"caf"];
        
        NSData *chewieSound = [NSData dataWithContentsOfURL:chewieSoundURL];
        
        UIImage *chewieImage = [UIImage imageNamed:@"chewbacca.jpg"];
        
        AGTCharacterModel *chewie = [[AGTCharacterModel alloc]
                                     initWithAlias:@"Chewbacca" wikiPage:chewieURL
                                     photo:chewieImage
                                     soundData:chewieSound];
        self.rebels = @[chewie, c3po, yoda];
        
    }
    return self;
}


@end
