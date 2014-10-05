//
//  ViewController.m
//  HeliDemo
//
//  Created by Avikant on 02/20/14.
//  Copyright (c) 2014 Avikant. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


-(void)Collision{
    
    if(CGRectIntersectsRect(Heli.frame,  Obstacle.frame)){
        [self EndGame];
    }
    if(CGRectIntersectsRect(Heli.frame,  Obstacle2.frame)){
        [self EndGame];
    }
    
    if(CGRectIntersectsRect(Heli.frame,  Bottom1.frame)){
        [self EndGame];
    }
    if(CGRectIntersectsRect(Heli.frame,  Bottom2.frame)){
        [self EndGame];
    }
    if(CGRectIntersectsRect(Heli.frame,  Bottom3.frame)){
        [self EndGame];
    }
    if(CGRectIntersectsRect(Heli.frame,  Bottom4.frame)){
        [self EndGame];
    }
    if(CGRectIntersectsRect(Heli.frame,  Bottom5.frame)){
        [self EndGame];
    }
    if(CGRectIntersectsRect(Heli.frame,  Bottom6.frame)){
        [self EndGame];
    }
    if(CGRectIntersectsRect(Heli.frame,  Bottom7.frame)){
        [self EndGame];
    }
    
    if(CGRectIntersectsRect(Heli.frame,  Top1.frame)){
        [self EndGame];
    }
    if(CGRectIntersectsRect(Heli.frame,  Top2.frame)){
        [self EndGame];
    }
    if(CGRectIntersectsRect(Heli.frame,  Top3.frame)){
        [self EndGame];
    }
    if(CGRectIntersectsRect(Heli.frame,  Top4.frame)){
        [self EndGame];
    }
    if(CGRectIntersectsRect(Heli.frame,  Top5.frame)){
        [self EndGame];
    }
    if(CGRectIntersectsRect(Heli.frame,  Top6.frame)){
        [self EndGame];
    }
    if(CGRectIntersectsRect(Heli.frame,  Top7.frame)){
        [self EndGame];
    }
    
    if(Heli.center.y > 275){
        [self EndGame];
    }
    if(Heli.center.y < 40){
        [self EndGame];
    }
    
    
    
}


-(void)EndGame{
    
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
    
    if(ScoreNo > HighScore){
        HighScore = ScoreNo;
        [[NSUserDefaults standardUserDefaults] setInteger:HighScore forKey:@"SavedHighScore"];
    }
    
    Heli.hidden = NO;
    Heli.image = [UIImage imageNamed:@"HeliBlast.png"];
    [timer invalidate];
    
    [Scorer invalidate];
    
    [self performSelector:@selector(NewGame) withObject:nil afterDelay:1.4];
    
    
}

-(void)NewGame{
    
    Start = YES;
    
    Obstacle.hidden = YES;
    Obstacle2.hidden = YES;
    
    Bottom1.hidden = YES;
    Bottom2.hidden = YES;
    Bottom3.hidden = YES;
    Bottom4.hidden = YES;
    Bottom5.hidden = YES;
    Bottom6.hidden = YES;
    Bottom7.hidden = YES;
    
    Top1.hidden = YES;
    Top2.hidden = YES;
    Top3.hidden = YES;
    Top4.hidden = YES;
    Top5.hidden = YES;
    Top6.hidden = YES;
    Top7.hidden = YES;
    
    Intro1.hidden = NO;
    Intro2.hidden = NO;
    Intro3.hidden = NO;
    
    Heli.hidden = NO;
    Heli.center = CGPointMake(45, 160);
    Heli.image = [UIImage imageNamed:@"HeliUp.png"];
    
    ScoreNo = 0;
    Score.text = [NSString stringWithFormat:@"Score : 000"];
    
    multiplier = 0.08;
    
    Intro3.text = [NSString stringWithFormat:@"HighScore : %i", HighScore];
    
}

-(void)HeliMove{
    
    [self Collision];
    
    Heli.center = CGPointMake(Heli.center.x, Heli.center.y + Y);
    
    if(ScoreNo > 500 && ScoreNo <= 1000){
        Obstacle.center = CGPointMake(Obstacle.center.x - 4, Obstacle.center.y);
        Obstacle2.center = CGPointMake(Obstacle2.center.x - 4, Obstacle2.center.y);
        
        Bottom1.center = CGPointMake(Bottom1.center.x - 4, Bottom1.center.y);
        Bottom2.center = CGPointMake(Bottom2.center.x - 4, Bottom2.center.y);
        Bottom3.center = CGPointMake(Bottom3.center.x - 4, Bottom3.center.y);
        Bottom4.center = CGPointMake(Bottom4.center.x - 4, Bottom4.center.y);
        Bottom5.center = CGPointMake(Bottom5.center.x - 4, Bottom5.center.y);
        Bottom6.center = CGPointMake(Bottom6.center.x - 4, Bottom6.center.y);
        Bottom7.center = CGPointMake(Bottom7.center.x - 4, Bottom7.center.y);
        
        Top1.center = CGPointMake(Top1.center.x - 4, Top1.center.y);
        Top2.center = CGPointMake(Top2.center.x - 4, Top2.center.y);
        Top3.center = CGPointMake(Top3.center.x - 4, Top3.center.y);
        Top4.center = CGPointMake(Top4.center.x - 4, Top4.center.y);
        Top5.center = CGPointMake(Top5.center.x - 4, Top5.center.y);
        Top6.center = CGPointMake(Top6.center.x - 4, Top6.center.y);
        Top7.center = CGPointMake(Top7.center.x - 4, Top7.center.y);
    }
    else if(ScoreNo >1000){
        Obstacle.center = CGPointMake(Obstacle.center.x - 5, Obstacle.center.y);
        Obstacle2.center = CGPointMake(Obstacle2.center.x - 5, Obstacle2.center.y);
        
        Bottom1.center = CGPointMake(Bottom1.center.x - 5, Bottom1.center.y);
        Bottom2.center = CGPointMake(Bottom2.center.x - 5, Bottom2.center.y);
        Bottom3.center = CGPointMake(Bottom3.center.x - 5, Bottom3.center.y);
        Bottom4.center = CGPointMake(Bottom4.center.x - 5, Bottom4.center.y);
        Bottom5.center = CGPointMake(Bottom5.center.x - 5, Bottom5.center.y);
        Bottom6.center = CGPointMake(Bottom6.center.x - 5, Bottom6.center.y);
        Bottom7.center = CGPointMake(Bottom7.center.x - 5, Bottom7.center.y);
        
        Top1.center = CGPointMake(Top1.center.x - 5, Top1.center.y);
        Top2.center = CGPointMake(Top2.center.x - 5, Top2.center.y);
        Top3.center = CGPointMake(Top3.center.x - 5, Top3.center.y);
        Top4.center = CGPointMake(Top4.center.x - 5, Top4.center.y);
        Top5.center = CGPointMake(Top5.center.x - 5, Top5.center.y);
        Top6.center = CGPointMake(Top6.center.x - 5, Top6.center.y);
        Top7.center = CGPointMake(Top7.center.x - 5, Top7.center.y);
    }
    else{
        Obstacle.center = CGPointMake(Obstacle.center.x - 3, Obstacle.center.y);
        Obstacle2.center = CGPointMake(Obstacle2.center.x - 3, Obstacle2.center.y);
        
        Bottom1.center = CGPointMake(Bottom1.center.x - 3, Bottom1.center.y);
        Bottom2.center = CGPointMake(Bottom2.center.x - 3, Bottom2.center.y);
        Bottom3.center = CGPointMake(Bottom3.center.x - 3, Bottom3.center.y);
        Bottom4.center = CGPointMake(Bottom4.center.x - 3, Bottom4.center.y);
        Bottom5.center = CGPointMake(Bottom5.center.x - 3, Bottom5.center.y);
        Bottom6.center = CGPointMake(Bottom6.center.x - 3, Bottom6.center.y);
        Bottom7.center = CGPointMake(Bottom7.center.x - 3, Bottom7.center.y);
        
        Top1.center = CGPointMake(Top1.center.x - 3, Top1.center.y);
        Top2.center = CGPointMake(Top2.center.x - 3, Top2.center.y);
        Top3.center = CGPointMake(Top3.center.x - 3, Top3.center.y);
        Top4.center = CGPointMake(Top4.center.x - 3, Top4.center.y);
        Top5.center = CGPointMake(Top5.center.x - 3, Top5.center.y);
        Top6.center = CGPointMake(Top6.center.x - 3, Top6.center.y);
        Top7.center = CGPointMake(Top7.center.x - 3, Top7.center.y);
    }
    
    
    if(Obstacle.center.x < -10){
        RandomPosition = arc4random() % 75;
        RandomPosition += 110;
        Obstacle.center = CGPointMake(550, RandomPosition);
    }
    
    if(Obstacle2.center.x < -10){
        RandomPosition = arc4random() % 75;
        RandomPosition += 110;
        Obstacle2.center = CGPointMake(550, RandomPosition);
    }
    
    if(Top1.center.x < -45){
        RandomPosition = arc4random() % 55;
        Top1.center = CGPointMake(510, RandomPosition);
        RandomPosition += 275;
        Bottom1.center = CGPointMake(510, RandomPosition);
    }
    
    if(Top2.center.x < -45){
        RandomPosition = arc4random() % 55;
        Top2.center = CGPointMake(510, RandomPosition);
        RandomPosition += 275;
        Bottom2.center = CGPointMake(510, RandomPosition);
    }
    
    if(Top3.center.x < -45){
        RandomPosition = arc4random() % 55;
        Top3.center = CGPointMake(510, RandomPosition);
        RandomPosition += 275;
        Bottom3.center = CGPointMake(510, RandomPosition);
    }
    
    if(Top4.center.x < -45){
        RandomPosition = arc4random() % 55;
        Top4.center = CGPointMake(510, RandomPosition);
        RandomPosition += 275;
        Bottom4.center = CGPointMake(510, RandomPosition);
    }
    
    if(Top5.center.x < -45){
        RandomPosition = arc4random() % 55;
        Top5.center = CGPointMake(510, RandomPosition);
        RandomPosition += 275;
        Bottom5.center = CGPointMake(510, RandomPosition);
    }
    
    if(Top6.center.x < -45){
        RandomPosition = arc4random() % 55;
        Top6.center = CGPointMake(510, RandomPosition);
        RandomPosition += 275;
        Bottom6.center = CGPointMake(510, RandomPosition);
    }
    
    if(Top7.center.x < -45){
        RandomPosition = arc4random() % 55;
        Top7.center = CGPointMake(510, RandomPosition);
        RandomPosition += 275;
        Bottom7.center = CGPointMake(510, RandomPosition);
    }
    
    
    
    
}


-(void)Scoring{
    
    ScoreNo += 1;
    Score.text = [NSString stringWithFormat:@"Score : %i",ScoreNo];
    
    if(ScoreNo > 250 && ScoreNo < 500)
        multiplier = 0.07;
    if(ScoreNo > 500 && ScoreNo < 1000){
        multiplier = 0.06;
    }
    if(ScoreNo > 1000 && ScoreNo < 2000){
        multiplier = 0.045;
        ScoreNo += 1;
    }
    if(ScoreNo > 2000 && ScoreNo < 5000){
        multiplier = 0.03;
        ScoreNo += 2;
    }
    if(ScoreNo > 10000){
        multiplier = 0.01;
        ScoreNo += 4;
    }
    
    
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    if(Start){
        
        Intro1.hidden = YES;
        Intro2.hidden = YES;
        Intro3.hidden = YES;
        
        timer = [NSTimer scheduledTimerWithTimeInterval:0.025 target:self selector:@selector(HeliMove) userInfo:nil repeats:YES];
        
        Scorer = [NSTimer scheduledTimerWithTimeInterval:0.075 target:self selector:@selector(Scoring) userInfo:nil repeats:YES];
        
        Start = NO;
        
        Obstacle.hidden = NO;
        Obstacle2.hidden = NO;
        
        Bottom1.hidden = NO;
        Bottom2.hidden = NO;
        Bottom3.hidden = NO;
        Bottom4.hidden = NO;
        Bottom5.hidden = NO;
        Bottom6.hidden = NO;
        Bottom7.hidden = NO;
        
        Top1.hidden = NO;
        Top2.hidden = NO;
        Top3.hidden = NO;
        Top4.hidden = NO;
        Top5.hidden = NO;
        Top6.hidden = NO;
        Top7.hidden = NO;
        
        RandomPosition = arc4random() % 75;
        RandomPosition += 110;
        
        Obstacle.center = CGPointMake(570, RandomPosition);
        
        
        RandomPosition = arc4random() % 75;
        RandomPosition += 110;
        
        Obstacle2.center = CGPointMake(875, RandomPosition);
        
        
        RandomPosition = arc4random() % 55;
        Top1.center = CGPointMake(560, RandomPosition);
        RandomPosition += 275;
        Bottom1.center = CGPointMake(560, RandomPosition);
        
        RandomPosition = arc4random() % 55;
        Top2.center = CGPointMake(640, RandomPosition);
        RandomPosition += 275;
        Bottom2.center = CGPointMake(640, RandomPosition);
        
        RandomPosition = arc4random() % 55;
        Top3.center = CGPointMake(720, RandomPosition);
        RandomPosition += 275;
        Bottom3.center = CGPointMake(720, RandomPosition);
        
        RandomPosition = arc4random() % 45;
        Top4.center = CGPointMake(800, RandomPosition);
        RandomPosition += 275;
        Bottom4.center = CGPointMake(800, RandomPosition);
        
        RandomPosition = arc4random() % 55;
        Top5.center = CGPointMake(880, RandomPosition);
        RandomPosition += 275;
        Bottom5.center = CGPointMake(880, RandomPosition);
        
        RandomPosition = arc4random() % 55;
        Top6.center = CGPointMake(960, RandomPosition);
        RandomPosition += 275;
        Bottom6.center = CGPointMake(960, RandomPosition);
        
        RandomPosition = arc4random() % 55;
        Top7.center = CGPointMake(1040, RandomPosition);
        RandomPosition += 275;
        Bottom7.center = CGPointMake(1040, RandomPosition);
        
    }
    
    if(ScoreNo < 500){
        Y = -2;
    }
    else if(ScoreNo >= 500 && ScoreNo < 1000){
        Y = -3;
    }
    else{
        Y = -3;
    }
    
    Heli.image = [UIImage imageNamed:@"HeliUp.png"];
    
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
    if(ScoreNo < 500){
        Y = 2;
    }
    else if(ScoreNo >= 500 && ScoreNo < 1000){
        Y = 3;
    }
    else{
        Y = 3;
    }
    
    Heli.image = [UIImage imageNamed:@"HeliUp.png"];
    
}

- (void)viewDidLoad
{
    Start = YES;
    
    Obstacle.hidden = YES;
    Obstacle2.hidden = YES;
    
    Bottom1.hidden = YES;
    Bottom2.hidden = YES;
    Bottom3.hidden = YES;
    Bottom4.hidden = YES;
    Bottom5.hidden = YES;
    Bottom6.hidden = YES;
    Bottom7.hidden = YES;
    
    Top1.hidden = YES;
    Top2.hidden = YES;
    Top3.hidden = YES;
    Top4.hidden = YES;
    Top5.hidden = YES;
    Top6.hidden = YES;
    Top7.hidden = YES;
    
    Intro1.hidden = NO;
    Intro2.hidden = NO;
    Intro3.hidden = NO;
    
    Heli.hidden = NO;
    
    ScoreNo = 0;
    Score.text = [NSString stringWithFormat:@"Score : 000"];
    
    multiplier = 0.075;
    
    HighScore = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"SavedHighScore"];
    
    Intro3.text = [NSString stringWithFormat:@"HighScore : %i", HighScore];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
