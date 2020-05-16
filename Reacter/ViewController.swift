//
//  ViewController.swift
//  tetris
//
/*[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,0],//1
[0,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0],//2
[0,1,2,3,4,5,6,7,7,6,5,4,3,2,1,0],//3
[8,7,6,5,4,3,2,1,1,2,3,4,5,6,7,8],//4
[0,1,2,3,4,5,6,0,1,2,3,4,5,6,7,8],//5
[8,7,6,5,4,3,2,1,7,6,5,4,3,2,1,0],//6
[0,1,2,1,2,3,2,3,4,3,4,4,5,6,7,8],//7







static var configurazioni:[[Int]] =
[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,0],//1
[0,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0],//2
[0,1,2,3,4,5,6,7,7,6,5,4,3,2,1,0],//3
[8,7,6,5,4,3,2,1,1,2,3,4,5,6,7,8],//4
[0,1,2,3,4,5,6,0,1,2,3,4,5,6,7,8],//5
[8,7,6,5,4,3,2,1,7,6,5,4,3,2,1,0],//6
[0,1,2,1,2,3,2,3,4,3,4,4,5,6,7,8],//7
[0,1,2,3],//8
[0,1,2,3],//9
[0,1,2,3],//10
[0,1,2,3],//11
[0,1,2,3],//12
[0,1,2,3],//13
[0,1,2,3],//14
[0,1,2,3]];//15








[0,15,14,13,12],//2
[0,5,1,4,2,3],//3
[8,7,9,8,10,9,8],//4
[0,2,2,4,4,6,6,8],//5
[8,8,8,8,0,0,0,0,0],//6
[0,1,2,2,1,0,1,2,2,1],//7
[0,1,2,3,4,5,6,7,8,9,10],//8
[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],//9
[0,1,2,3,4,5,6,7,12,13,14,15],//10




[[0,1,2,3],//1
[0,15,14,13,12],//2
[0,5,1,4,2,3],//3
[8,7,9,8,10,9,8],//4
[0,2,2,4,4,6,6,8],//5
[8,8,8,8,0,0,0,0,0],//6
[0,1,2,2,1,0,1,2,2,1],//7
[0,1,2,3,4,5,6,7,8,9,10],//8
[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],//9
[0,1,2,3,4,5,6,7,12,13,14,15,0,1,2,3,3,3],//10
[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],//11
[0,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1],//12
[0,1,2,3],//13
[0,1,2,3],//14
[0,1,2,3]];//15
*/
//  Created by Andrea Lissak on 22/12/14.
//  Copyright (c) 2014 Andrea Lissak. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    
    struct vars
    {
        //IMAGES
        static let imgInit=UIImageView(frame: CGRectMake(0, 0, 25, 25));
        //static var cellsBox = Array(count: 40, repeatedValue: imgInit);
        static var lblScore=UILabel();
        static var lblAlert=UILabel();
        static var lblHigh=UILabel();
        static var lblCredits=UILabel();
        static var lblCredits2=UILabel();
        
        
        static let btnUnpause=UIButton.buttonWithType(UIButtonType.Custom) as! UIButton;
        static let btnStart=UIButton.buttonWithType(UIButtonType.Custom) as! UIButton;
        static let btnMenu=UIButton.buttonWithType(UIButtonType.Custom) as! UIButton;
        
        
        static let sfondoMenu = UIView();
        static let btnRestart=UIButton.buttonWithType(UIButtonType.Custom) as! UIButton;
        static let btnMusic=UIButton.buttonWithType(UIButtonType.Custom) as! UIButton;
        static let btnSound=UIButton.buttonWithType(UIButtonType.Custom) as! UIButton;
        static let btnCloseMenu=UIButton.buttonWithType(UIButtonType.Custom) as! UIButton;
        
        static let imgHigh = UIImageView(image: (UIImage(named: "high.png"))!);
        static let imgTitle = UIImageView(image: (UIImage(named: "title.png"))!);
        static let imgFail = UIImageView(image: (UIImage(named: "missionFailed.png"))!);
        //static var coordinateBlocco:[Int]=[0,0];
        
        static var cellsBox:[[UIImageView]] =
        [[imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit],
            [imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit],
            [imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit],
            [imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit],
            [imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit],
            [imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit],
            [imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit],
            [imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit],
            [imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit],
            [imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit],
            [imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit],
            [imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit],
            [imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit],
            [imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit],
            [imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit],
            [imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit,imgInit]];
        
        static var squarePosX:[Int]=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
        static var squarePosY:[Int]=[0,0,0,0,0,0,0,0,];
        static var squarePosVecchioX:[Int]=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
        static var squarePosVecchioY:[Int]=[0,0,0,0,0,0,0,0,];
        
        static var configurazioni:[[Int]] =
        [
            //[0,3,6,9,12,15,13,10,7,4,1],
            [0,1,2,5,6,7,10,11,12,15,0,1],
            [15,14,13,12,0,1,2,3,11,10,9,8,4,5,6,7],
            //1[0,2,4,6,3,5,7,9,6,8,10,12],
            [9,1,8,0,7,15,6,14,5,13,4,12,3,11,2,10],
            [8,4,0,7,3,15,6,2,14,5,1,13,4,0,12,3,15,11,2,14,10,1,13,9],
            //2[7,9,5,11,3,13,1,15],
            [15,14,13,10,11,12,9,8,7,4,5,6,3,2,1],
            [15,14,13,12,13,12,11,10,11,10,9,8,9,8,7,6,7,6,5,4,5,4,3,2,3,2,1,0],
            
            [0,15,14,13,12],//2
            [0,5,1,4,2,3],//3
            //3[8,7,9,8,10,9,8],//4
            [0,0,0,2,2,2,4,4,4,6,6,6],//5
            [8,8,8,8,8,8,0,0,0,0,0,0,0],//6
            [0,1,2,2,1,0,1,2,2,1],//7
            [0,1,2,3,4,5,6,7,8,9,10],//8
            [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],//9
            [0,1,2,3,4,5,6,7,12,13,14,15],//10
        ];
        
        
        static var audioPlayer = AVAudioPlayer();
        static var audioPlayerMusic = AVAudioPlayer();
        
        
        static let voidCell = UIImage(named: "blocchettoVuoto.png");
        static let redCell = UIImage(named: "blocchetto4.png");
        static let yellowCell = UIImage(named: "blocchetto8.png");
        static let purpleCell = UIImage(named: "blocchettoPurple.png");
        static let greenCell = UIImage(named: "blocchettoGreen.png");
        static let blueCell = UIImage(named: "blocchettoBlue.png");
        //COUNTERS
        static var beatCounter=0;
        static var configCounter=0;
        //INTS
        static var posBloccoX=0;
        static var posBloccoY=8;
        static var posTocco=0;
        static var lastPausePosTocco=0;
        static var numConfig=0;
        static var randConfig=0;
        
        static var highScore=0;
        
        static var prevPos=0;
        static var nowPos=0;
        //BOOLS
        static var premuto=false;
        static var endGame=false;
        static var unpause=false;
        static var primoTocco=false;
        static var viaLiberaTap=false;
        static var mancatoToccoDopoPausa=false;
        static var partitaInCorsoPausa=false;
        static var activeSound=true;
        
        static var musOn=1;
        static var sndOn=1;
        
        static var velocita:Double=0.15;
        
        //TIMERS
        static var stepTime=NSTimer();
        //CONSTANTS
        static var screenSize: CGRect = UIScreen.mainScreen().bounds;
        static var screenWidth = screenSize.width;
        static var screenHeight = screenSize.height;
    }
    
    
    
    
    func inizializzaVar()
    {
        println("almeno sto per eseguire");
        //self.rotated();
        
        
        vars.squarePosX=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
        vars.squarePosY=[0,0,0,0,0,0,0,0,];
        vars.squarePosVecchioX=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
        vars.squarePosVecchioY=[0,0,0,0,0,0,0,0,];
        //COUNTERS
        vars.beatCounter=0;
        vars.configCounter=0;
        //INTS
        vars.posBloccoX=0;
        vars.posBloccoY=8;
        vars.posTocco=0;
        vars.lastPausePosTocco=0;
        vars.numConfig=0;
        vars.randConfig=0;
        vars.highScore=scaricaScore().toInt()!;
        vars.lblHigh.text=scaricaScore();
        
        vars.prevPos=0;
        vars.nowPos=0;
        //BOOLS
        vars.premuto=false;
        vars.endGame=false;
        vars.unpause=false;
        vars.primoTocco=false;
        vars.viaLiberaTap=false;
        vars.mancatoToccoDopoPausa=false;
        vars.imgFail.hidden=true;
        vars.partitaInCorsoPausa=false;
        nascondiElementiMenu();
        
        vars.activeSound=true;
        
        for (var i=0;i<8;++i)
        {
            for (var j=0;j<16;++j)
            {
                vars.cellsBox[j][i].image=vars.voidCell;
            }
        }
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad();
        
        self.filesFirstPlay();
        self.inizializzaVar();
        
        
        self.inizializza();
        self.aggiunte();
        
        if(scaricaStatoGioco()=="pausa")
        {
            println("scatenate l'inferno");
            setupEntrataDopoPausa();
            vars.btnStart.hidden=true;
            vars.btnUnpause.hidden=false;
        }
        else
        {
            vars.btnStart.hidden=false;
            vars.btnUnpause.hidden=true;
        }
        if(vars.musOn==1)
        {
            self.suonaSoundtrack();
        }
        
        //self.muoviBlocco();
        
    }
    
    func suonaSoundtrack()
    {
        var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("gameSound", ofType: "wav")!);
        AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback, error: nil);
        AVAudioSession.sharedInstance().setActive(true, error: nil);
        
        vars.audioPlayerMusic = AVAudioPlayer(contentsOfURL: alertSound, error: nil);
        vars.audioPlayerMusic.prepareToPlay();
        vars.audioPlayerMusic.play();
        vars.audioPlayerMusic.numberOfLoops = -1;
    }
    
    func suonaNota(nomeNota:String)
    {
        var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(nomeNota, ofType: "wav")!);
        AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback, error: nil);
        AVAudioSession.sharedInstance().setActive(true, error: nil);
        
        vars.audioPlayer = AVAudioPlayer(contentsOfURL: alertSound, error: nil);
        vars.audioPlayer.prepareToPlay();
        vars.audioPlayer.play();
    }
    
    func aggiunte()
    {
        vars.lblScore.font = UIFont(name: "Homespun", size: vars.screenWidth/8);//UIFont(name: "Helvetica", size: 50);//vars.lbl.font.fontName
        vars.lblScore.frame = CGRectMake(20, vars.screenHeight-vars.screenWidth/8-20, vars.screenWidth, vars.screenWidth/8);
        vars.lblScore.textColor=UIColor.whiteColor();
        vars.lblScore.textAlignment = NSTextAlignment.Left;
        vars.lblScore.text = "0";
        vars.lblScore.layer.zPosition=2;
        self.view.addSubview(vars.lblScore);
        
        vars.lblAlert.font = UIFont(name: "Homespun", size: vars.screenWidth/14);
        vars.lblAlert.frame = CGRectMake(vars.screenWidth/2, vars.screenWidth/2, vars.screenWidth, vars.screenWidth/6);
        vars.lblAlert.center = CGPointMake(vars.screenWidth/2, vars.screenWidth/2);
        vars.lblAlert.textColor=UIColor.whiteColor();
        vars.lblAlert.textAlignment = NSTextAlignment.Center;
        vars.lblAlert.text = "";
        vars.lblAlert.layer.zPosition=2;
        self.view.addSubview(vars.lblAlert);
        
        vars.lblHigh.font = UIFont(name: "Homespun", size: vars.screenWidth/15);
        vars.lblHigh.frame = CGRectMake(0, vars.screenWidth/7.5, vars.screenWidth-20, 50);
        vars.lblHigh.textColor=UIColor.whiteColor();
        vars.lblHigh.layer.zPosition=2;
        vars.lblHigh.textAlignment = NSTextAlignment.Right;
        vars.lblHigh.text=scaricaScore();
        self.view.addSubview(vars.lblHigh);
        
        vars.imgHigh.frame = CGRect(x: vars.screenWidth-vars.screenWidth/7.5-22, y: vars.screenWidth/11, width: vars.screenWidth/7.5, height: vars.screenWidth/15);
        self.view.addSubview(vars.imgHigh);
        
        vars.btnUnpause.frame = CGRectMake(vars.screenWidth/2, vars.screenHeight/2, vars.screenWidth/15, vars.screenWidth/14);
        vars.btnUnpause.center = CGPointMake(vars.screenWidth/2 + vars.screenWidth/90, vars.screenHeight/2);
        vars.btnUnpause.addTarget(self, action: "listenerPause:", forControlEvents: UIControlEvents.TouchUpInside);
        var imgBtnPause=UIImage(named: "play2.png");
        vars.btnUnpause.layer.zPosition=2;
        vars.btnUnpause.setImage(imgBtnPause, forState: UIControlState.Normal);
        self.view.addSubview(vars.btnUnpause);
        
        vars.btnStart.frame = CGRectMake(vars.screenWidth/2, vars.screenHeight/2, vars.screenWidth/10, vars.screenWidth/10);
        vars.btnStart.center = CGPointMake(vars.screenWidth/2, vars.screenHeight/2);
        vars.btnStart.addTarget(self, action: "listenerRestart:", forControlEvents: UIControlEvents.TouchUpInside);
        var imgBtnRestart=UIImage(named: "play.png");
        vars.btnStart.layer.zPosition=2;
        vars.btnStart.setImage(imgBtnRestart, forState: UIControlState.Normal);
        self.view.addSubview(vars.btnStart);
        
        vars.btnMenu.frame = CGRectMake(0, 0, 50, 40);
        vars.btnMenu.center = CGPointMake(vars.screenWidth-40, vars.screenHeight-40);
        vars.btnMenu.addTarget(self, action: "listenerMenu:", forControlEvents: UIControlEvents.TouchUpInside);
        var imgBtnMenu=UIImage(named: "menu.png");
        vars.btnMenu.layer.zPosition=2;
        vars.btnMenu.setImage(imgBtnMenu, forState: UIControlState.Normal);
        self.view.addSubview(vars.btnMenu);
        
        vars.imgTitle.frame = CGRect(x: 20, y: 20, width: vars.screenWidth/2, height: vars.screenWidth/16);
        self.view.addSubview(vars.imgTitle);
        
        vars.imgFail.frame = CGRect(x: 20, y: vars.screenWidth/3, width: vars.screenWidth/2, height: vars.screenWidth/6.8);
        vars.imgFail.layer.zPosition=2;
        vars.imgFail.hidden=true;
        self.view.addSubview(vars.imgFail);//insertSubview(vars.imgFail, atIndex: 10);
        
        
        
        vars.sfondoMenu.frame=CGRect(x: 0, y: 0, width: vars.screenWidth, height: vars.screenHeight);
        vars.sfondoMenu.backgroundColor=UIColor(white: 0, alpha: 0.7);
        vars.sfondoMenu.hidden=true;
        vars.sfondoMenu.alpha=0;
        vars.sfondoMenu.layer.zPosition=3;
        self.view.addSubview(vars.sfondoMenu);
        
        vars.btnCloseMenu.frame = CGRectMake(0, 0, 50, 40);
        vars.btnCloseMenu.center = CGPointMake(vars.screenWidth-40, vars.screenHeight-40);
        vars.btnCloseMenu.addTarget(self, action: "listenerCloseMenu:", forControlEvents: UIControlEvents.TouchUpInside);
        var imgBtnCloseMenu=UIImage(named: "menu.png");
        vars.btnCloseMenu.layer.zPosition=4;
        vars.btnCloseMenu.hidden=true;
        vars.btnCloseMenu.alpha=0;
        vars.btnCloseMenu.setImage(imgBtnMenu, forState: UIControlState.Normal);
        self.view.addSubview(vars.btnCloseMenu);
        
        vars.btnRestart.frame = CGRectMake(0, 0, vars.screenWidth/9, vars.screenWidth/9);
        vars.btnRestart.center = CGPointMake(vars.screenWidth/4, vars.screenHeight/3);
        vars.btnRestart.addTarget(self, action: "listenerMenuRestart:", forControlEvents: UIControlEvents.TouchUpInside);
        vars.btnRestart.setImage(UIImage(named: "play.png"), forState: UIControlState.Normal);
        vars.btnRestart.layer.zPosition=4;
        vars.btnRestart.hidden=true;
        vars.btnRestart.alpha=0;
        self.view.addSubview(vars.btnRestart);
        
        vars.btnMusic.frame = CGRectMake(0, 0, vars.screenWidth/8, vars.screenWidth/6);
        vars.btnMusic.center = CGPointMake(vars.screenWidth/2, vars.screenHeight/3);
        vars.btnMusic.addTarget(self, action: "listenerBtnStcMusica:", forControlEvents: UIControlEvents.TouchUpInside);
        vars.btnMusic.setImage(UIImage(named: "music.png"), forState: UIControlState.Normal);
        vars.btnMusic.layer.zPosition=4;
        vars.btnMusic.hidden=true;
        vars.btnMusic.alpha=0;
        self.view.addSubview(vars.btnMusic);
        
        vars.btnSound.frame = CGRectMake(0, 0, vars.screenWidth/8, vars.screenWidth/6);
        vars.btnSound.center = CGPointMake(vars.screenWidth*3/4, vars.screenHeight/3);
        vars.btnSound.addTarget(self, action: "listenerBtnStcSuoni:", forControlEvents: UIControlEvents.TouchUpInside);
        vars.btnSound.setImage(UIImage(named: "sound.png"), forState: UIControlState.Normal);
        vars.btnSound.layer.zPosition=4;
        vars.btnSound.hidden=true;
        vars.btnSound.alpha=0;
        self.view.addSubview(vars.btnSound);
        
        
        
        vars.lblCredits.font = UIFont(name: "Homespun", size: vars.screenWidth/25);
        vars.lblCredits.frame = CGRectMake(0, 0, vars.screenWidth/2, vars.screenWidth/4);
        vars.lblCredits.center = CGPointMake(vars.screenWidth/2, vars.screenHeight/1.5);
        vars.lblCredits.textColor=UIColor.whiteColor();
        vars.lblCredits.layer.zPosition=4;
        vars.lblCredits.textAlignment = NSTextAlignment.Center;
        vars.lblCredits.text="programming and audio: Andrea Lissak";
        vars.lblCredits.lineBreakMode = NSLineBreakMode.ByWordWrapping;
        vars.lblCredits.numberOfLines = 0;
        vars.lblCredits.hidden=true;
        vars.lblCredits.alpha=0;
        self.view.addSubview(vars.lblCredits);
        
        
        vars.lblCredits2.font = UIFont(name: "Homespun", size: vars.screenWidth/25);
        vars.lblCredits2.frame = CGRectMake(0, 0, vars.screenWidth/3, vars.screenWidth/4);
        vars.lblCredits2.center = CGPointMake(vars.screenWidth/2, vars.screenHeight/1.3);
        vars.lblCredits2.textColor=UIColor.whiteColor();
        vars.lblCredits2.layer.zPosition=4;
        vars.lblCredits2.textAlignment = NSTextAlignment.Center;
        vars.lblCredits2.text="art and design: Mark Lissak";
        vars.lblCredits2.lineBreakMode = NSLineBreakMode.ByWordWrapping;
        vars.lblCredits2.numberOfLines = 0;
        vars.lblCredits2.hidden=true;
        vars.lblCredits2.alpha=0;
        self.view.addSubview(vars.lblCredits2);
        
        
        
    }
    
    
    
    
    
    func nascondiElementiMenu()
    {
        UIView.animateWithDuration(0.5, animations:
            {
                vars.sfondoMenu.alpha=0;
                vars.btnCloseMenu.alpha=0;
                vars.btnRestart.alpha=0;
                vars.btnMusic.alpha=0;
                vars.btnSound.alpha=0;
                vars.lblCredits.alpha=0;
                vars.lblCredits2.alpha=0;
        });
        let delay = dispatch_time(DISPATCH_TIME_NOW, Int64(0.5 * Double(NSEC_PER_SEC)));
        dispatch_after(delay, dispatch_get_main_queue(),
            {
                vars.sfondoMenu.hidden=true;
                vars.btnCloseMenu.hidden=true;
                vars.btnRestart.hidden=true;
                vars.btnMusic.hidden=true;
                vars.btnSound.hidden=true;
                vars.lblCredits2.hidden=true;
                vars.lblCredits.hidden=true;
        });
    }
    func mostraElementiMenu()
    {
        vars.sfondoMenu.hidden=false;
        vars.btnCloseMenu.hidden=false;
        vars.btnRestart.hidden=false;
        vars.btnMusic.hidden=false;
        vars.btnSound.hidden=false;
        vars.lblCredits2.hidden=false;
        vars.lblCredits.hidden=false;
        UIView.animateWithDuration(0.5, animations:
            {
                vars.sfondoMenu.alpha=0.999;
                vars.btnCloseMenu.alpha=1;
                vars.btnRestart.alpha=1;
                if(vars.sndOn==1)
                {
                    vars.btnSound.alpha=1;
                }
                else
                {
                    vars.btnSound.alpha=0.5;
                }
                if(vars.musOn==1)
                {
                    vars.btnMusic.alpha=1;
                }
                else
                {
                    vars.btnMusic.alpha=0.5;
                }
                vars.lblCredits.alpha=1;
                vars.lblCredits2.alpha=1;
                
        });
    }
    
    
    
    func listenerMenu(sender:UIButton!)
    {
        println("sono un menu");
        if(vars.sndOn==1)
        {
            suonaNota("tap");
        }
        mostraElementiMenu();
    }
    
    func listenerCloseMenu(sender:UIButton!)
    {
        println("sono stato chiuso");
        if(vars.sndOn==1)
        {
            suonaNota("tap");
        }
        nascondiElementiMenu();
    }
    
    
    
    func listenerBtnStcMusica(sender:UIButton!)
    {
        if(vars.musOn==1)
        {
            vars.audioPlayerMusic.stop();
            vars.btnMusic.alpha=0.5;
            vars.musOn=0;
        }
        else
        {
            self.suonaSoundtrack();
            vars.btnMusic.alpha=1;
            vars.musOn=1;
        }
        
    }
    func listenerBtnStcSuoni(sender:UIButton!)
    {
        if(vars.sndOn==1)
        {
            vars.btnSound.alpha=0.5;
            vars.sndOn=0;
        }
        else
        {
            vars.btnSound.alpha=1;
            vars.sndOn=1;
        }
    }
    
    
    func listenerMenuRestart(sender:UIButton!)
    {
        println("restarta");
        if(vars.sndOn==1)
        {
            suonaNota("tap");
        }
        vars.stepTime.invalidate();
        caricaStatoGioco("non pausa");
        vars.lblScore.text = "0";
        vars.partitaInCorsoPausa=false;
        vars.unpause=false;
        vars.endGame=true;
        vars.btnUnpause.hidden=true;
        vars.btnStart.hidden=false;
        inizializzaVar();
        nascondiElementiMenu();
    }
    
    
    func listenerRestart(sender:UIButton!)
    {
        if(vars.sndOn==1)
        {
            suonaNota("tap");
        }
        vars.lblScore.text = "0";
        vars.btnUnpause.hidden=true;
        vars.btnStart.hidden=true;
        inizializzaVar();
        vars.unpause=true;
        muoviBlocco();
    }
    
    func listenerPause(sender:UIButton!)
    {
        if(vars.sndOn==1)
        {
            suonaNota("tap");
        }
        vars.lblAlert.text = "tap your block";
        //vars.lblAlert
        vars.endGame=false;
        vars.unpause=true;
        vars.btnUnpause.hidden=true;
        vars.viaLiberaTap=true;
    }
    
    func muoviBlocco()
    {
        vars.stepTime=NSTimer.scheduledTimerWithTimeInterval(vars.velocita, target: self, selector: Selector("movimento"), userInfo: nil, repeats: true);//0.065
    }
    
    
    func cancVecchio()
    {
        if(vars.beatCounter>0)
        {
            if(vars.beatCounter<7)
            {
                for (var i=((vars.beatCounter%8));i>0;i--)
                {
                    vars.squarePosVecchioX[i]=vars.squarePosVecchioX[(i-1)];
                    vars.squarePosVecchioY[i]=vars.squarePosVecchioY[(i-1)]-1;
                }
            }
            else
            {
                for (var i=7;i>0;i--)
                {
                    vars.squarePosVecchioX[i]=vars.squarePosVecchioX[(i-1)];
                    vars.squarePosVecchioY[i]=vars.squarePosVecchioY[(i-1)]-1;
                }
            }
        }
        if(vars.squarePosVecchioX[0]==vars.squarePosX[0])
        {
            vars.squarePosVecchioY[0]=vars.squarePosY[0];
        }
        else
        {
            vars.squarePosVecchioX[0]=vars.squarePosX[0];
            vars.squarePosVecchioY[0]=vars.squarePosY[0];
        }
        
        //questi due amichetti vanno sempre dopo il ciclo dell'array delle vecchie posizioni
    }
    
    func movimento()
    {
        if(vars.velocita>0.07)
        {
            vars.velocita=vars.velocita-0.0005;
            vars.stepTime.invalidate();
            muoviBlocco();
            println("------------------------------------------------------------------------------")
            println(vars.velocita)
            println("------------------------------------------------------------------------------")
        }
        
        if(vars.beatCounter==0)
        {
            vars.numConfig=Int(arc4random_uniform(14));
            vars.randConfig=Int(arc4random_uniform(16));
            print("N° configgggggggggggggggggggggggggg: ");
            println(vars.numConfig);
        }
        
        if(vars.configCounter%(vars.configurazioni[vars.numConfig].count)==0)
        {
            print("N° configgggggggggggggggggggggggggg: ");
            println(vars.numConfig);
            
            
            vars.configCounter=0;
            vars.numConfig=Int(arc4random_uniform(14));
            vars.randConfig=Int(arc4random_uniform(16));
        }
        
        var posizioneFinale0=(vars.configurazioni[vars.numConfig][vars.configCounter]+vars.randConfig)%16;
        
        vars.squarePosX[0]=posizioneFinale0;
        
        vars.squarePosY[0]=7;
        vars.cellsBox[vars.squarePosX[0]][vars.squarePosY[0]].image=vars.yellowCell;
        
        
        if(vars.beatCounter<7)
        {
            if(vars.beatCounter>0)
            {
                for (var i=(vars.beatCounter);i>0;i--)
                {
                    vars.squarePosX[i]=vars.squarePosVecchioX[(i-1)];
                    vars.squarePosY[i]=vars.squarePosVecchioY[(i-1)]-1;
                    
                    /*print("COUNTER: ");
                    println(vars.beatCounter);
                    print("i: ");
                    println(i);
                    print("altezza: ");
                    println(vars.squarePosY[i]);
                    print("pos x: ");
                    println(vars.squarePosX[i]);
                    println();
                    print("altezza old: ");
                    println(vars.squarePosVecchioY[i-1]);
                    print("pos x   old: ");
                    println(vars.squarePosVecchioX[i-1]);
                    println();
                    println();*/
                    if((i==1)&&(vars.squarePosX[0]==vars.squarePosVecchioX[0]))
                    {
                        vars.cellsBox[vars.squarePosVecchioX[i]][vars.squarePosVecchioY[i]].image=vars.voidCell;
                        vars.cellsBox[vars.squarePosX[i]][vars.squarePosY[i]].image=vars.yellowCell;
                    }
                    else
                    {/*
                        println("vecchio x");
                        println(vars.squarePosVecchioX[i]);
                        println("vecchio y");
                        println(vars.squarePosVecchioY[i]);
                        println();
                        
                        println("nuovo x");
                        println(vars.squarePosX[i]);
                        println("nuovo y");
                        println(vars.squarePosY[i]);
                        println();*/
                        
                        vars.cellsBox[vars.squarePosVecchioX[i]][vars.squarePosVecchioY[i]].image=vars.voidCell;
                        vars.cellsBox[vars.squarePosVecchioX[i-1]][vars.squarePosVecchioY[i-1]].image=vars.voidCell;
                        vars.cellsBox[vars.squarePosX[i]][vars.squarePosY[i]].image=vars.yellowCell;
                    }
                    
                }
            }
        }
        else
        {
            if(vars.beatCounter>0)
            {
                for (var i=7;i>0;i--)
                {
                    vars.squarePosX[i]=vars.squarePosVecchioX[(i-1)];
                    vars.squarePosY[i]=vars.squarePosVecchioY[(i-1)]-1;
                    
                    if((i==1)&&(vars.squarePosX[0]==vars.squarePosVecchioX[0]))
                    {
                        vars.cellsBox[vars.squarePosVecchioX[i]][vars.squarePosVecchioY[i]].image=vars.voidCell;
                        vars.cellsBox[vars.squarePosX[i]][vars.squarePosY[i]].image=vars.yellowCell;
                    }
                    else
                    {/*
                        println("vecchio x");
                        println(vars.squarePosVecchioX[i]);
                        println("vecchio y");
                        println(vars.squarePosVecchioY[i]);
                        println();
                        
                        println("nuovo x");
                        println(vars.squarePosX[i]);
                        println("nuovo y");
                        println(vars.squarePosY[i]);
                        println();*/
                        
                        vars.cellsBox[vars.squarePosVecchioX[i]][vars.squarePosVecchioY[i]].image=vars.voidCell;
                        vars.cellsBox[vars.squarePosVecchioX[i-1]][vars.squarePosVecchioY[i-1]].image=vars.voidCell;
                        vars.cellsBox[vars.squarePosX[i]][vars.squarePosY[i]].image=vars.yellowCell;
                    }
                }
            }
        }
        
        
        
        cancVecchio();
        
        
        
        if((vars.posTocco==vars.squarePosX[7])&&(vars.beatCounter>7))
        {
            hittato();
        }
        
        
        
        vars.beatCounter++;
        vars.configCounter++;
        if(vars.beatCounter>7)
        {
            if(!vars.primoTocco)
            {
                hittato();
            }
            var score=vars.beatCounter-8;
            if(score>vars.highScore)
            {
                vars.lblHigh.text = score.description;
            }
            vars.lblScore.text = score.description;
        }
        
        if(vars.premuto)
        {
            vars.cellsBox[vars.posTocco][0].image=vars.redCell;
        }
    }
    
    func inizializza()
    {
        
        
        
        var screenSize: CGRect = UIScreen.mainScreen().bounds;
        var centerX = Float(screenSize.width)/2;//-Float(dimensioni)/2;
        var centerY = Float(screenSize.height)/2;
        let distDaCentro:Float=(7/16)*Float(screenSize.width);
        var larghezza = Float(screenSize.width);
        
        var dimensioniEsterne:Float=larghezza/8;
        var aggiuntaX:Float=larghezza/10;
        
        var nColonne:Int=16;
        var nRighe=8;
        
        
        for (var j=0;j<nRighe;++j)
        {
            dimensioniEsterne=dimensioniEsterne-(dimensioniEsterne*0.2+1/Float(j+1));//-Float(j)*2/Float(j));
            //aggiuntaX=abs(aggiuntaX-larghezza/90);
            
            //centerX=centerX-Float(dimensioniEsterne)/2;
            self.posizionaCella(dimensioniEsterne, centerX: centerX,centerY: centerY,distDaCentro: distDaCentro,cell1: vars.voidCell!,nColonne: nColonne,j: j);
        }
        
        
        /*let exampleImg = UIImage(named: "exampleBlock.png");
        let exampleBox = UIImageView(frame: CGRectMake(CGFloat(0), CGFloat(centerY), CGFloat(Float(screenSize.width)*3/32), CGFloat(Float(screenSize.width)/16)));
        exampleBox.center=CGPoint(x: CGFloat(centerX),y: CGFloat(centerY));
        exampleBox.image=exampleImg;
        exampleBox.layer.zPosition=1;
        self.view.addSubview(exampleBox);*/
        
        let sfondoImg = UIImage(named: "sfondo.png");
        let sfondoBox = UIImageView(frame: CGRectMake(CGFloat(0), CGFloat(0), CGFloat(Float(screenSize.width)), CGFloat(Float(screenSize.height))));
        sfondoBox.image=sfondoImg;
        sfondoBox.layer.zPosition=0;
        self.view.addSubview(sfondoBox);
        
        
        
    }
    
    
    func posizionaCella(dimensioni:Float,centerX:Float,centerY:Float,distDaCentro:Float,cell1:UIImage,nColonne:Int,j:Int)
    {
        var screenSize: CGRect = UIScreen.mainScreen().bounds;
        var larghezza = Float(screenSize.width);
        var aggiuntaX:Float=0;
        switch j
        {
            
        case 0:
            var angoloRad:Float=0;
            var angoloDeg:Float=0;
            var posX:Float=0;
            var posY:Float=0;
            var coeffMoltiplicatore:Float=360/Float(nColonne);
            for (var i=0;i<nColonne;++i)
            {
                angoloRad=Float(i)*coeffMoltiplicatore;
                angoloDeg=angoloRad;
                angoloRad=Float(M_PI*Double(angoloRad)/180);
                
                posX=sin(Float(angoloRad))*(distDaCentro);
                posY=cos(Float(angoloRad))*(distDaCentro);
                
                aggiuntaX=larghezza/12;
                
                vars.cellsBox[i][j] = UIImageView(frame: CGRectMake(CGFloat(posX+centerX), CGFloat(posY+centerY), CGFloat(dimensioni+aggiuntaX), CGFloat(dimensioni)));
                
                vars.cellsBox[i][j].center=CGPoint(x: CGFloat(posX+centerX),y: CGFloat(posY+centerY));
                vars.cellsBox[i][j].transform = CGAffineTransformMakeRotation(CGFloat(-angoloRad+Float(M_PI))) ;
                vars.cellsBox[i][j].image=cell1;
                vars.cellsBox[i][j].layer.zPosition=1;
                
                self.view.insertSubview(vars.cellsBox[i][j], atIndex: 1);
            }
            
            
            
            
            
            
            
        case 1:
            var angoloRad:Float=0;
            var angoloDeg:Float=0;
            var posX:Float=0;
            var posY:Float=0;
            var coeffMoltiplicatore:Float=360/Float(nColonne);
            
            for (var i=0;i<nColonne;++i)
            {
                angoloRad=Float(i)*coeffMoltiplicatore;
                angoloDeg=angoloRad;
                angoloRad=Float(M_PI*Double(angoloRad)/180);
                aggiuntaX=larghezza/15;
                posX=sin(Float(angoloRad))*(distDaCentro-(larghezza/11));
                posY=cos(Float(angoloRad))*(distDaCentro-(larghezza/11));
                vars.cellsBox[i][j] = UIImageView(frame: CGRectMake(CGFloat(posX+centerX), CGFloat(posY+centerY), CGFloat(dimensioni+aggiuntaX), CGFloat(dimensioni)));
                
                vars.cellsBox[i][j].center=CGPoint(x: CGFloat(posX+centerX),y: CGFloat(posY+centerY));
                vars.cellsBox[i][j].transform = CGAffineTransformMakeRotation(CGFloat(-angoloRad+Float(M_PI))) ;
                vars.cellsBox[i][j].image=cell1;
                vars.cellsBox[i][j].layer.zPosition=1;
                
                self.view.insertSubview(vars.cellsBox[i][j], atIndex: 1);
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        case 2:
            var angoloRad:Float=0;
            var angoloDeg:Float=0;
            var posX:Float=0;
            var posY:Float=0;
            var coeffMoltiplicatore:Float=360/Float(nColonne);
            
            for (var i=0;i<nColonne;++i)
            {
                angoloRad=Float(i)*coeffMoltiplicatore;
                angoloDeg=angoloRad;
                angoloRad=Float(M_PI*Double(angoloRad)/180);
                aggiuntaX=larghezza/19;
                posX=sin(Float(angoloRad))*(distDaCentro-(larghezza/6.1));
                posY=cos(Float(angoloRad))*(distDaCentro-(larghezza/6.1));
                vars.cellsBox[i][j] = UIImageView(frame: CGRectMake(CGFloat(posX+centerX), CGFloat(posY+centerY), CGFloat(dimensioni+aggiuntaX), CGFloat(dimensioni)));
                
                vars.cellsBox[i][j].center=CGPoint(x: CGFloat(posX+centerX),y: CGFloat(posY+centerY));
                vars.cellsBox[i][j].transform = CGAffineTransformMakeRotation(CGFloat(-angoloRad+Float(M_PI))) ;
                vars.cellsBox[i][j].image=cell1;
                vars.cellsBox[i][j].layer.zPosition=1;
                
                self.view.insertSubview(vars.cellsBox[i][j], atIndex: 1);
            }
            
            
            
            
            
            
            
            
        case 3:
            var angoloRad:Float=0;
            var angoloDeg:Float=0;
            var posX:Float=0;
            var posY:Float=0;
            var coeffMoltiplicatore:Float=360/Float(nColonne);
            
            for (var i=0;i<nColonne;++i)
            {
                angoloRad=Float(i)*coeffMoltiplicatore;
                angoloDeg=angoloRad;
                angoloRad=Float(M_PI*Double(angoloRad)/180);
                aggiuntaX=larghezza/25;
                posX=sin(Float(angoloRad))*(distDaCentro-(larghezza/4.5));
                posY=cos(Float(angoloRad))*(distDaCentro-(larghezza/4.5));
                vars.cellsBox[i][j] = UIImageView(frame: CGRectMake(CGFloat(posX+centerX), CGFloat(posY+centerY), CGFloat(dimensioni+aggiuntaX), CGFloat(dimensioni)));
                
                vars.cellsBox[i][j].center=CGPoint(x: CGFloat(posX+centerX),y: CGFloat(posY+centerY));
                vars.cellsBox[i][j].transform = CGAffineTransformMakeRotation(CGFloat(-angoloRad+Float(M_PI))) ;
                vars.cellsBox[i][j].image=cell1;
                vars.cellsBox[i][j].layer.zPosition=1;
                
                self.view.insertSubview(vars.cellsBox[i][j], atIndex: 1);
            }
            
            
            
            
            
            
            
            
        case 4:
            var angoloRad:Float=0;
            var angoloDeg:Float=0;
            var posX:Float=0;
            var posY:Float=0;
            var coeffMoltiplicatore:Float=360/Float(nColonne);
            
            for (var i=0;i<nColonne;++i)
            {
                angoloRad=Float(i)*coeffMoltiplicatore;
                angoloDeg=angoloRad;
                angoloRad=Float(M_PI*Double(angoloRad)/180);
                aggiuntaX=larghezza/32;
                posX=sin(Float(angoloRad))*(distDaCentro-(larghezza/3.73));
                posY=cos(Float(angoloRad))*(distDaCentro-(larghezza/3.73));
                vars.cellsBox[i][j] = UIImageView(frame: CGRectMake(CGFloat(posX+centerX), CGFloat(posY+centerY), CGFloat(dimensioni+aggiuntaX), CGFloat(dimensioni)));
                
                vars.cellsBox[i][j].center=CGPoint(x: CGFloat(posX+centerX),y: CGFloat(posY+centerY));
                vars.cellsBox[i][j].transform = CGAffineTransformMakeRotation(CGFloat(-angoloRad+Float(M_PI))) ;
                vars.cellsBox[i][j].image=cell1;
                vars.cellsBox[i][j].layer.zPosition=1;
                
                self.view.insertSubview(vars.cellsBox[i][j], atIndex: 1);
            }
            
            
            
            
            
            
            
            
        case 5:
            var angoloRad:Float=0;
            var angoloDeg:Float=0;
            var posX:Float=0;
            var posY:Float=0;
            var coeffMoltiplicatore:Float=360/Float(nColonne);
            
            for (var i=0;i<nColonne;++i)
            {
                angoloRad=Float(i)*coeffMoltiplicatore;
                angoloDeg=angoloRad;
                angoloRad=Float(M_PI*Double(angoloRad)/180);
                aggiuntaX=larghezza/41;
                posX=sin(Float(angoloRad))*(distDaCentro-(larghezza/3.28));
                posY=cos(Float(angoloRad))*(distDaCentro-(larghezza/3.28));
                vars.cellsBox[i][j] = UIImageView(frame: CGRectMake(CGFloat(posX+centerX), CGFloat(posY+centerY), CGFloat(dimensioni+aggiuntaX), CGFloat(dimensioni)));
                
                vars.cellsBox[i][j].center=CGPoint(x: CGFloat(posX+centerX),y: CGFloat(posY+centerY));
                vars.cellsBox[i][j].transform = CGAffineTransformMakeRotation(CGFloat(-angoloRad+Float(M_PI))) ;
                vars.cellsBox[i][j].image=cell1;
                vars.cellsBox[i][j].layer.zPosition=1;
                
                self.view.insertSubview(vars.cellsBox[i][j], atIndex: 1);
            }
            
            
            
            
            
            
            
            
        case 6:
            var angoloRad:Float=0;
            var angoloDeg:Float=0;
            var posX:Float=0;
            var posY:Float=0;
            var coeffMoltiplicatore:Float=360/Float(nColonne);
            
            for (var i=0;i<nColonne;++i)
            {
                angoloRad=Float(i)*coeffMoltiplicatore;
                angoloDeg=angoloRad;
                angoloRad=Float(M_PI*Double(angoloRad)/180);
                aggiuntaX=larghezza/53;
                posX=sin(Float(angoloRad))*(distDaCentro-(larghezza/3));
                posY=cos(Float(angoloRad))*(distDaCentro-(larghezza/3));
                vars.cellsBox[i][j] = UIImageView(frame: CGRectMake(CGFloat(posX+centerX), CGFloat(posY+centerY), CGFloat(dimensioni+aggiuntaX), CGFloat(dimensioni)));
                
                vars.cellsBox[i][j].center=CGPoint(x: CGFloat(posX+centerX),y: CGFloat(posY+centerY));
                vars.cellsBox[i][j].transform = CGAffineTransformMakeRotation(CGFloat(-angoloRad+Float(M_PI))) ;
                vars.cellsBox[i][j].image=cell1;
                vars.cellsBox[i][j].layer.zPosition=1;
                
                self.view.insertSubview(vars.cellsBox[i][j], atIndex: 1);
            }
            
            
            
            
            
            
            
            
        case 7:
            var angoloRad:Float=0;
            var angoloDeg:Float=0;
            var posX:Float=0;
            var posY:Float=0;
            var coeffMoltiplicatore:Float=360/Float(nColonne);
            
            for (var i=0;i<nColonne;++i)
            {
                angoloRad=Float(i)*coeffMoltiplicatore;
                angoloDeg=angoloRad;
                angoloRad=Float(M_PI*Double(angoloRad)/180);
                aggiuntaX=larghezza/70;
                posX=sin(Float(angoloRad))*(distDaCentro-(larghezza/2.81));
                posY=cos(Float(angoloRad))*(distDaCentro-(larghezza/2.81));
                vars.cellsBox[i][j] = UIImageView(frame: CGRectMake(CGFloat(posX+centerX), CGFloat(posY+centerY), CGFloat(dimensioni+aggiuntaX), CGFloat(dimensioni)));
                
                vars.cellsBox[i][j].center=CGPoint(x: CGFloat(posX+centerX),y: CGFloat(posY+centerY));
                vars.cellsBox[i][j].transform = CGAffineTransformMakeRotation(CGFloat(-angoloRad+Float(M_PI))) ;
                vars.cellsBox[i][j].image=cell1;
                vars.cellsBox[i][j].layer.zPosition=1;
                
                self.view.insertSubview(vars.cellsBox[i][j], atIndex: 1);
            }
            
            
            
            
            
            
            
        default:println("error case");
        }
    }
    
    
    
    
    
    
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent)
    {
        if(!vars.mancatoToccoDopoPausa)
        {
            vars.lblAlert.text = "";
            if(vars.unpause)
            {
                if(!vars.endGame)
                {
                    if(vars.sndOn==1)
                    {
                        suonaNota("tap");
                    }
                    vars.partitaInCorsoPausa=true;
                    caricaStatoGioco("pausa");
                    raccogliInfoPausa();
                    var imgBtnPause=UIImage(named: "play2.png");
                    vars.btnUnpause.setImage(imgBtnPause, forState: UIControlState.Normal);
                    
                    vars.lastPausePosTocco=vars.posTocco;
                    vars.unpause=false;
                    vars.endGame=true;
                    vars.stepTime.invalidate();
                    vars.btnUnpause.hidden=false;
                }
                /*if(!vars.endGame)
                {
                cancellaBarriera();
                }
                vars.premuto=false;
                vars.posTocco=16;*/
            }
        }
    }
    
    
    
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent)
    {
        if(vars.unpause)
        {
            vars.primoTocco=true;
            
            
            
            if(vars.unpause)
            {
                cancellaBarriera();
            }
            vars.posTocco=0;
            vars.premuto=true;
            if(!vars.endGame)
            {
                testTouches(touches);
            }
            
            if(vars.viaLiberaTap)
            {
                gameResumed();
            }
        }
    }
    
    override func touchesMoved(touches: Set<NSObject>, withEvent event: UIEvent)
    {
        if(vars.unpause)
        {
            if(vars.unpause)
            {
                cancellaBarriera();
            }
            if(!vars.endGame)
            {
                testTouches(touches);
            }
            if(vars.viaLiberaTap)
            {
                gameResumed();
            }
        }
    }
    
    func gameResumed()
    {
        if(vars.posTocco==vars.lastPausePosTocco)
        {
            vars.mancatoToccoDopoPausa=false;
            vars.lblAlert.text = "";
            println("cioa");
            muoviBlocco();
            vars.viaLiberaTap=false;
        }
        else
        {
            vars.mancatoToccoDopoPausa=true;
            cancellaBarriera();
            if(vars.beatCounter>7)
            {
                
                vars.cellsBox[vars.squarePosX[7]][0].image=vars.yellowCell;
            }
            vars.cellsBox[vars.lastPausePosTocco][0].image=vars.redCell;
            
            vars.posTocco=vars.lastPausePosTocco;
        }
    }
    
    
    func cancellaBarriera()
    {
        vars.cellsBox[vars.posTocco][0].image=vars.voidCell;
    }
    
    
    func testTouches(touches: NSSet!) {
        // Get the first touch and its location in this view controller's view coordinate system
        let touch = touches.allObjects[0] as! UITouch;
        let touchLocation = touch.locationInView(self.view);
        
        var screenSize: CGRect = UIScreen.mainScreen().bounds;
        var centerX = Float(screenSize.width)/2;
        var centerY = Float(screenSize.height)/2;
        
        var posRelX = Float(touchLocation.x)-centerX;
        var posRelY = Float(touchLocation.y)-centerY;
        
        var angoloTocco=atan(posRelX/posRelY)-Float(M_PI)/16;
        
        vars.prevPos=vars.nowPos;
        
        cancellaBarriera();
        if(posRelY<0)//alto dx  1
        {
            if((angoloTocco<0)&&(angoloTocco>(-Float(M_PI)/2)))
            {
                if((angoloTocco<0) && (angoloTocco>(-Float(M_PI)/8)))
                {
                    //println("alto dx 8");
                    vars.posTocco=8;
                    vars.cellsBox[8][0].image=vars.redCell;
                    vars.nowPos=0;
                }
                if((angoloTocco<(-Float(M_PI)/8)) && (angoloTocco>(-Float(M_PI)*2/8)))
                {
                    //println("alto dx 7");
                    vars.posTocco=7;
                    vars.cellsBox[7][0].image=vars.redCell;
                    vars.nowPos=1;
                }
                if((angoloTocco<(-Float(M_PI)*2/8)) && (angoloTocco>(-Float(M_PI)*3/8)))
                {
                    //println("alto dx 6");
                    vars.posTocco=6;
                    vars.cellsBox[6][0].image=vars.redCell;
                    vars.nowPos=2;
                }
                if((angoloTocco<(-Float(M_PI)*3/8)) && (angoloTocco>(-Float(M_PI)*4/8)))
                {
                    //println("alto dx 5");
                    vars.posTocco=5;
                    vars.cellsBox[5][0].image=vars.redCell;
                    vars.nowPos=3;
                }
            }
        }
        if(posRelX<0)//alto sx  2
        {
            if((angoloTocco>0)&&(angoloTocco<(Float(M_PI)/2))||((angoloTocco<(-Float(M_PI)/2))&&((posRelY>0))))
            {
                if((angoloTocco>0) && (angoloTocco<(Float(M_PI)/8)))
                {
                    //println("alto dx 9");
                    vars.posTocco=9;
                    vars.cellsBox[9][0].image=vars.redCell;
                    vars.nowPos=1;
                }
                if((angoloTocco>(Float(M_PI)/8)) && (angoloTocco<(Float(M_PI)*2/8)))
                {
                    //println("alto dx 10");
                    vars.posTocco=10;
                    vars.cellsBox[10][0].image=vars.redCell;
                    vars.nowPos=2;
                }
                if((angoloTocco>(Float(M_PI)*2/8)) && (angoloTocco<(Float(M_PI)*3/8)))
                {
                    //println("alto dx 11");
                    vars.posTocco=11;
                    vars.cellsBox[11][0].image=vars.redCell;
                    vars.nowPos=3;
                }
                if(((angoloTocco>(Float(M_PI)*3/8)) && (angoloTocco<(Float(M_PI)*4/8)))||((angoloTocco<(-Float(M_PI)/2))&&((posRelY>0))))
                {
                    //println("alto dx 12");
                    vars.posTocco=12;
                    vars.cellsBox[12][0].image=vars.redCell;
                    vars.nowPos=4;
                }
            }
        }
        if(posRelY>0)//basso sx 3
        {
            if((angoloTocco<0)&&(angoloTocco>(-Float(M_PI)/2)))
            {
                if((angoloTocco<0) && (angoloTocco>(-Float(M_PI)/8)))
                {
                    //println("alto dx 16");
                    vars.posTocco=0;
                    vars.cellsBox[0][0].image=vars.redCell;
                    vars.nowPos=0;
                }
                if((angoloTocco<(-Float(M_PI)/8)) && (angoloTocco>(-Float(M_PI)*2/8)))
                {
                    //println("alto dx 15");
                    vars.posTocco=15;
                    vars.cellsBox[15][0].image=vars.redCell;
                    vars.nowPos=1;
                }
                if((angoloTocco<(-Float(M_PI)*2/8)) && (angoloTocco>(-Float(M_PI)*3/8)))
                {
                    //println("alto dx 14");
                    vars.posTocco=14;
                    vars.cellsBox[14][0].image=vars.redCell;
                    vars.nowPos=2;
                }
                if((angoloTocco<(-Float(M_PI)*3/8)) && (angoloTocco>(-Float(M_PI)*4/8)))
                {
                    //println("alto dx 13");
                    vars.posTocco=13;
                    vars.cellsBox[13][0].image=vars.redCell;
                    vars.nowPos=3;
                }
            }
        }
        if(posRelX>0)//basso dx 4
        {
            if((angoloTocco>0)&&(angoloTocco<(Float(M_PI)/2))||((angoloTocco<(-Float(M_PI)/2))&&((posRelY<0))))
            {
                if((angoloTocco>0) && (angoloTocco<(Float(M_PI)/8)))
                {
                    //println("alto dx 1");
                    vars.posTocco=1;
                    vars.cellsBox[1][0].image=vars.redCell;
                    vars.nowPos=1;
                }
                if((angoloTocco>(Float(M_PI)/8)) && (angoloTocco<(Float(M_PI)*2/8)))
                {
                    //println("alto dx 2");
                    vars.posTocco=2;
                    vars.cellsBox[2][0].image=vars.redCell;
                    vars.nowPos=2;
                }
                if((angoloTocco>(Float(M_PI)*2/8)) && (angoloTocco<(Float(M_PI)*3/8)))
                {
                    //println("alto dx 3");
                    vars.posTocco=3;
                    vars.cellsBox[3][0].image=vars.redCell;
                    vars.nowPos=3;
                }
                if(((angoloTocco>(Float(M_PI)*3/8)) && (angoloTocco<(Float(M_PI)*4/8)))||((angoloTocco<(-Float(M_PI)/2))&&((posRelY<0))))
                {
                    //println("alto dx 4");
                    vars.posTocco=4;
                    vars.cellsBox[4][0].image=vars.redCell;
                    vars.nowPos=4;
                }
            }
        }
        
        if(vars.prevPos != vars.nowPos)
        {
            vars.audioPlayer.stop();
            if(vars.sndOn==1)
            {
                suonaNota("change");
            }
            /*switch (vars.nowPos)
            {
            case 0:suonaNota("do");
            case 1:suonaNota("re");
            case 2:suonaNota("mi");
            case 3:suonaNota("fa");
            case 4:suonaNota("sol");
            
            default: println("errore suono");
            }*/
        }
        
        if((vars.posTocco==vars.squarePosX[7])&&(vars.beatCounter>7)&&(!vars.viaLiberaTap))
        {
            vars.stepTime.invalidate();
            caricaStatoGioco("non pausa");
            if(vars.sndOn==1)
            {
                suonaNota("death");
            }
            vars.velocita=0.15;
            vars.partitaInCorsoPausa=false;
            vars.unpause=false;
            vars.endGame=true;
            vars.btnUnpause.hidden=true;
            vars.btnStart.hidden=false;
            vars.imgFail.hidden=false;
            
            var scoreNum = vars.beatCounter-8;
            var highScoreNum = scaricaScore().toInt();
            if(scoreNum>highScoreNum)
            {
                let file = "fileScore.txt";
                let dirs : [String] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true) as! [String];
                let dir = dirs[0];
                let path = dir.stringByAppendingPathComponent(file);
                
                var textScoreNum = vars.beatCounter-8;
                var text:String=String(textScoreNum);
                
                text.writeToFile(path, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            }
        }
        
        //println(NSString(format:"%.4f", angoloTocco));
        
    }
    
    
    
    func hittato()
    {
        vars.stepTime.invalidate();
        caricaStatoGioco("non pausa");
        if(vars.sndOn==1)
        {
            suonaNota("death");
        }
        vars.velocita=0.15;
        vars.partitaInCorsoPausa=false;
        vars.unpause=false;
        vars.endGame=true;
        vars.btnUnpause.hidden=true;
        vars.btnStart.hidden=false;
        vars.imgFail.hidden=false;
        
        var scoreNum = vars.beatCounter-7;
        var highScoreNum = scaricaScore().toInt();
        if(scoreNum>highScoreNum)
        {
            caricaScore();
        }
    }
    
    
    func scaricaScore() -> String
    {
        let file = "fileScore.txt";
        let dirs : [String] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true) as! [String];
        let dir = dirs[0];
        let path = dir.stringByAppendingPathComponent(file);
        var text2="0";
        text2 = String(contentsOfFile: path, encoding: NSUTF8StringEncoding, error: nil)!;
        return text2;
    }
    func caricaScore()
    {
        let file = "fileScore.txt";
        let dirs : [String] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true) as! [String];
        let dir = dirs[0];
        let path = dir.stringByAppendingPathComponent(file);
        
        var textScoreNum = vars.beatCounter-7;
        var text:String=String(textScoreNum);
        
        text.writeToFile(path, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
    }
    func scaricaStatoGioco() -> String
    {
        let file = "statoGioco.txt";
        let dirs : [String] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true) as! [String];
        let dir = dirs[0];
        let path = dir.stringByAppendingPathComponent(file);
        
        
        var text2 = String(contentsOfFile: path, encoding: NSUTF8StringEncoding, error: nil);
        return text2!;
    }
    func caricaStatoGioco(statoGioco: String)
    {
        let file = "statoGioco.txt";
        let dirs : [String] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true) as! [String];
        let dir = dirs[0];
        let path = dir.stringByAppendingPathComponent(file);
        
        
        statoGioco.writeToFile(path, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
        
    }
    
    
    
    
    
    func raccogliInfoPausa()
    {
        for (var j=0;j<8;++j)
        {
            var giro:String=String(j);
            var nomePosOstacoli:String="statoGiocoRiga"+giro+".txt";
            var nomePosOstacoliV:String="statoGiocoRiga"+giro+" copia.txt";
            fileManagement.scrivi(nomePosOstacoli, valore: String(vars.squarePosX[j]));
            fileManagement.scrivi(nomePosOstacoliV, valore: String(vars.squarePosVecchioX[j]));
        }
        fileManagement.scrivi("statoGiocoBeatCounter.txt", valore: String(vars.beatCounter));
        fileManagement.scrivi("statoGiocoConfigCounter.txt", valore: String(vars.configCounter));
        fileManagement.scrivi("statoGiocoLastPausePosTocco.txt", valore: String(vars.lastPausePosTocco));
        fileManagement.scrivi("statoGiocoNumConfig.txt", valore: String(vars.numConfig));
        fileManagement.scrivi("statoGiocoPosBloccoX.txt", valore: String(vars.posBloccoX));
        fileManagement.scrivi("statoGiocoPosBloccoY.txt", valore: String(vars.posBloccoY));
        fileManagement.scrivi("statoGiocoPosTocco.txt", valore: String(vars.posTocco));
        fileManagement.scrivi("statoGiocoRandConfig.txt", valore: String(vars.randConfig));
        fileManagement.scrivi("statoGiocoVelocita.txt", valore: String(stringInterpolationSegment: vars.velocita));
        var mus="0";
        var snd="0";
        if(vars.musOn==1)
        {
            mus="1";
        }
        if(vars.sndOn==1)
        {
            snd="1";
        }
        fileManagement.scrivi("statoGiocoMusic.txt", valore: mus);
        fileManagement.scrivi("statoGiocoSounds.txt", valore: snd);
    }
    
    func setupEntrataDopoPausa()
    {
        vars.beatCounter = fileManagement.leggi("statoGiocoBeatCounter.txt").toInt()!;
        vars.configCounter = fileManagement.leggi("statoGiocoConfigCounter.txt").toInt()!;
        vars.numConfig = fileManagement.leggi("statoGiocoNumConfig.txt").toInt()!;
        vars.posBloccoX = fileManagement.leggi("statoGiocoPosBloccoX.txt").toInt()!;
        vars.posBloccoY = fileManagement.leggi("statoGiocoPosBloccoY.txt").toInt()!;
        vars.posTocco = fileManagement.leggi("statoGiocoPosTocco.txt").toInt()!;
        vars.randConfig = fileManagement.leggi("statoGiocoRandConfig.txt").toInt()!;
        vars.musOn = fileManagement.leggi("statoGiocoMusic.txt").toInt()!;
        vars.sndOn = fileManagement.leggi("statoGiocoSounds.txt").toInt()!;
        vars.velocita = (fileManagement.leggi("statoGiocoVelocita.txt") as NSString).doubleValue;
        if(vars.musOn==1)
        {
            vars.btnMusic.alpha=1;
        }
        else
        {
            vars.btnMusic.alpha=0;
        }
        
        if(vars.sndOn==1)
        {
            vars.btnSound.alpha=1;
        }
        else
        {
            vars.btnSound.alpha=0;
        }
        
        vars.lastPausePosTocco=vars.posTocco;
        if((vars.beatCounter-8)>0)
        {
            var score=vars.beatCounter-8;
            vars.lblScore.text = score.description;
        }
        
        for (var j=0;j<8;++j)
        {
            var giro:String=String(7-j);
            var nomePosOstacoli:String="statoGiocoRiga"+giro+".txt";
            var nomePosOstacoliV:String="statoGiocoRiga"+giro+" copia.txt";
            vars.squarePosX[7-j]=fileManagement.leggi(nomePosOstacoli).toInt()!;
            vars.squarePosVecchioX[7-j]=fileManagement.leggi(nomePosOstacoliV).toInt()!;
            vars.squarePosY[j]=7-j;
            vars.squarePosVecchioY[j]=7-j;
            
        }
        
        for (var j=0;j<8;++j)
        {
            vars.cellsBox[vars.squarePosX[(7-j)]][j].image=vars.yellowCell;
        }
        if(vars.beatCounter<8)
        {
            for (var j=(8-vars.beatCounter);j>=0;j--)
            {
                vars.cellsBox[0][j].image=vars.voidCell;
            }
        }
        vars.cellsBox[vars.posTocco][0].image=vars.redCell;
    }
    
    
    func filesFirstPlay()
    {
        let file = "/statoGioco.txt";
        let file0 = "/statoGiocoLastPausePosTocco.txt";
        let file1 = "/fileScore.txt";
        let file2 = "/statoGiocoBeatCounter.txt";
        let file3 = "/statoGiocoConfigCounter.txt";
        let file4 = "/statoGiocoNumConfig.txt";
        let file5 = "/statoGiocoPosBloccoX.txt";
        let file6 = "/statoGiocoPosBloccoY.txt";
        let file7 = "/statoGiocoPosTocco.txt";
        let file8 = "/statoGiocoRandConfig.txt";
        
        let file9 = "/statoGiocoRiga0.txt";
        let file10 = "/statoGiocoRiga1.txt";
        let file11 = "/statoGiocoRiga2.txt";
        let file12 = "/statoGiocoRiga3.txt";
        let file13 = "/statoGiocoRiga4.txt";
        let file14 = "/statoGiocoRiga5.txt";
        let file15 = "/statoGiocoRiga6.txt";
        let file16 = "/statoGiocoRiga7.txt";
        
        let file17 = "/statoGiocoRiga0 copia.txt";
        let file18 = "/statoGiocoRiga1 copia.txt";
        let file19 = "/statoGiocoRiga2 copia.txt";
        let file20 = "/statoGiocoRiga3 copia.txt";
        let file21 = "/statoGiocoRiga4 copia.txt";
        let file22 = "/statoGiocoRiga5 copia.txt";
        let file23 = "/statoGiocoRiga6 copia.txt";
        let file24 = "/statoGiocoRiga7 copia.txt";
        
        let file25 = "/statoGiocoMusic.txt";
        let file26 = "/statoGiocoSounds.txt";
        
        let file27 = "statoGiocoVelocita.txt";
        
        
        
        let dirs = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true) as! [String];
        let dir = dirs[0];
        var text:String="first play";
        var text1:String="0";
        
        
        
        let path = dir.stringByAppendingString(file);
        let path0 = dir.stringByAppendingString(file0);
        let path1 = dir.stringByAppendingString(file1);
        let path2 = dir.stringByAppendingString(file2);
        let path3 = dir.stringByAppendingString(file3);
        let path4 = dir.stringByAppendingString(file4);
        let path5 = dir.stringByAppendingString(file5);
        let path6 = dir.stringByAppendingString(file6);
        let path7 = dir.stringByAppendingString(file7);
        let path8 = dir.stringByAppendingString(file8);
        let path9 = dir.stringByAppendingString(file9);
        let path10 = dir.stringByAppendingString(file10);
        let path11 = dir.stringByAppendingString(file11);
        let path12 = dir.stringByAppendingString(file12);
        let path13 = dir.stringByAppendingString(file13);
        let path14 = dir.stringByAppendingString(file14);
        let path15 = dir.stringByAppendingString(file15);
        let path16 = dir.stringByAppendingString(file16);
        let path17 = dir.stringByAppendingString(file17);
        let path18 = dir.stringByAppendingString(file18);
        let path19 = dir.stringByAppendingString(file19);
        let path20 = dir.stringByAppendingString(file20);
        let path21 = dir.stringByAppendingString(file21);
        let path22 = dir.stringByAppendingString(file22);
        let path23 = dir.stringByAppendingString(file23);
        let path24 = dir.stringByAppendingString(file24);
        let path25 = dir.stringByAppendingString(file25);
        let path26 = dir.stringByAppendingString(file26);
        let path27 = dir.stringByAppendingString(file27);
        
        
        let getpath = dir.stringByAppendingPathComponent(file);
        let getpath0 = dir.stringByAppendingPathComponent(file0);
        let getpath1 = dir.stringByAppendingPathComponent(file1);
        let getpath2 = dir.stringByAppendingPathComponent(file2);
        let getpath3 = dir.stringByAppendingPathComponent(file3);
        let getpath4 = dir.stringByAppendingPathComponent(file4);
        let getpath5 = dir.stringByAppendingPathComponent(file5);
        let getpath6 = dir.stringByAppendingPathComponent(file6);
        let getpath7 = dir.stringByAppendingPathComponent(file7);
        let getpath8 = dir.stringByAppendingPathComponent(file8);
        let getpath9 = dir.stringByAppendingPathComponent(file9);
        let getpath10 = dir.stringByAppendingPathComponent(file10);
        let getpath11 = dir.stringByAppendingPathComponent(file11);
        let getpath12 = dir.stringByAppendingPathComponent(file12);
        let getpath13 = dir.stringByAppendingPathComponent(file13);
        let getpath14 = dir.stringByAppendingPathComponent(file14);
        let getpath15 = dir.stringByAppendingPathComponent(file15);
        let getpath16 = dir.stringByAppendingPathComponent(file16);
        let getpath17 = dir.stringByAppendingPathComponent(file17);
        let getpath18 = dir.stringByAppendingPathComponent(file18);
        let getpath19 = dir.stringByAppendingPathComponent(file19);
        let getpath20 = dir.stringByAppendingPathComponent(file20);
        let getpath21 = dir.stringByAppendingPathComponent(file21);
        let getpath22 = dir.stringByAppendingPathComponent(file22);
        let getpath23 = dir.stringByAppendingPathComponent(file23);
        let getpath24 = dir.stringByAppendingPathComponent(file24);
        let getpath25 = dir.stringByAppendingPathComponent(file25);
        let getpath26 = dir.stringByAppendingPathComponent(file26);
        let getpath27 = dir.stringByAppendingPathComponent(file27);
        
        var checkkatore = NSFileManager.defaultManager();
        
        
        if((checkkatore.fileExistsAtPath(getpath))&&(checkkatore.fileExistsAtPath(getpath0))&&(checkkatore.fileExistsAtPath(getpath1))&&(checkkatore.fileExistsAtPath(getpath2))&&(checkkatore.fileExistsAtPath(getpath3))&&(checkkatore.fileExistsAtPath(getpath4))&&(checkkatore.fileExistsAtPath(getpath5))&&(checkkatore.fileExistsAtPath(getpath6))&&(checkkatore.fileExistsAtPath(getpath7))&&(checkkatore.fileExistsAtPath(getpath8))&&(checkkatore.fileExistsAtPath(getpath9))&&(checkkatore.fileExistsAtPath(getpath10))&&(checkkatore.fileExistsAtPath(getpath11))&&(checkkatore.fileExistsAtPath(getpath12))&&(checkkatore.fileExistsAtPath(getpath13))&&(checkkatore.fileExistsAtPath(getpath14))&&(checkkatore.fileExistsAtPath(getpath15))&&(checkkatore.fileExistsAtPath(getpath16))&&(checkkatore.fileExistsAtPath(getpath17))&&(checkkatore.fileExistsAtPath(getpath18))&&(checkkatore.fileExistsAtPath(getpath19))&&(checkkatore.fileExistsAtPath(getpath20))&&(checkkatore.fileExistsAtPath(getpath21))&&(checkkatore.fileExistsAtPath(getpath22))&&(checkkatore.fileExistsAtPath(getpath23))&&(checkkatore.fileExistsAtPath(getpath24))&&(checkkatore.fileExistsAtPath(getpath25))&&(checkkatore.fileExistsAtPath(getpath26))&&(checkkatore.fileExistsAtPath(getpath27)))
        {
            println("esistiamo tutti");
        }
        else
        {
            text.writeToFile(path, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path0, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path1, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path2, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path3, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path4, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path5, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path6, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path7, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path8, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path9, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path10, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path11, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path12, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path13, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path14, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path15, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path16, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path17, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path18, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path19, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path20, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path21, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path22, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path23, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path24, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path25, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path26, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            text1.writeToFile(path27, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
        }
        
        
        
        
        
    }
    /*override func supportedInterfaceOrientations() -> Int {
    return UIInterfaceOrientationMask.Portrait.rawValue.hashValue;
    }
    
    override func supportedInterfaceOrientations() -> Int {
    UIInterfaceOrientationMask.Portrait.rawValue.hashValue;
    return Int(UIInterfaceOrientationMask.All.rawValue.hashValue)
    }
    
    override func shouldAutorotate() -> Bool {
    return false
    }
    
    override func supportedInterfaceOrientations() -> Int {
    return UIInterfaceOrientation.Portrait.rawValue
    }*/
    
    
    override func supportedInterfaceOrientations() -> Int {
        return UIInterfaceOrientation.Portrait.hashValue;
    }
    override func shouldAutorotate() -> Bool {
        return false;
    }
    
    
    
    
    func rotated()
    {
        println("eseguito");
        
        var screenSize: CGRect = UIScreen.mainScreen().bounds;
        if(UIDeviceOrientationIsLandscape(UIDevice.currentDevice().orientation))
        {
            println("sono landscape");
            vars.screenWidth = screenSize.height;
            vars.screenHeight = screenSize.width;
        }
        
        if(UIDeviceOrientationIsPortrait(UIDevice.currentDevice().orientation))
        {
            println("sono portrait");
            vars.screenWidth = screenSize.width;
            vars.screenHeight = screenSize.height;
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}



