//
//  AGTAppDelegate.m
//  StarWars
//
//  Created by Fernando Rodríguez Romero on 6/1/13.
//  Copyright (c) 2013 Agbo. All rights reserved.
//

#import "AGTAppDelegate.h"
#import "AGTCharacterModel.h"
#import "AGTCharacterViewController.h"
#import "AGTWikiViewController.h"
#import "AGTTableViewCharacters.h"
#import "AGTCharacterTableModel.h"

@implementation AGTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    // Configuramos el aspecto
    [self configureAppearance];
    
    // crear un navigation para la navi de los personajes y su wiki
    AGTCharacterTableModel *allCharacters = [[AGTCharacterTableModel alloc]init];
    AGTTableViewCharacters * tableController = [[AGTTableViewCharacters alloc]initWithModel:allCharacters withStyle:UITableViewStyleGrouped];

    
    UINavigationController *nvMaestro = [[UINavigationController alloc]initWithRootViewController:tableController];
    AGTCharacterViewController *detalle = [[AGTCharacterViewController alloc]initWithModel:[allCharacters rebelCharacterAtIndex:0]];
    // Lo mostramos en pantalla
    UINavigationController *nvDetalle = [[UINavigationController alloc]initWithRootViewController:detalle];
    
    // creamos el splitview
    UISplitViewController *split = [[UISplitViewController alloc]init];
    
    split.viewControllers = @[ nvMaestro,  nvDetalle];
    
    split.delegate = detalle;
    tableController.delegate = detalle;
    self.window.rootViewController = split;
    
    
    
    self.window.backgroundColor = [UIColor brownColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

-(void) configureAppearance{
    
    // Colores
    UIColor *darkBlue = [UIColor colorWithRed:0
                                        green:0
                                         blue:0.11
                                        alpha:1];
    
    // Clases
    [[UINavigationBar appearance] setTintColor:darkBlue];
    
    [[UIToolbar appearance] setTintColor:darkBlue];
    
}

-(NSArray *) arrayOfModels{
    
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
    
    return @[vader, yoda, palpatine, c3po, chewie];
}
-(NSArray *) arrayOfControllers{
    
    NSArray *models = [self arrayOfModels];
    NSMutableArray *controllers = [NSMutableArray arrayWithCapacity:[models count]];
    
    
    for (AGTCharacterModel *model in models) {
        
        // Crear un Chracter VC
        AGTCharacterViewController *ctl = [[AGTCharacterViewController alloc] initWithModel:model];
        
        // Creamos un Navigation
        UINavigationController *navVC = [[UINavigationController alloc] init];
        
        // metemos el character VC dentor
        [navVC pushViewController:ctl
                         animated:NO];
        
        // Meterlo en el array de controladores
        [controllers addObject:navVC];
    }
    
    return controllers;
}







@end
