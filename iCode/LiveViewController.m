//
//  LiveViewController.m
//  iCode
//
//  Created by Mr.Nut on 16/10/29.
//  Copyright © 2016年 Mr.Nut. All rights reserved.
//

#import "LiveViewController.h"
#import "LogViewController.h"
//#import <IJKMediaFramework/IJKMediaFramework.h>
@interface LiveViewController ()

//@property (atomic, strong) NSURL *url;
//@property (atomic, retain) id <IJKMediaPlayback> player;
//@property (weak, nonatomic) UIView *PlayerView;
//
//- (void)play_btn:(id)sender;
@end

@implementation LiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //    UIStoryboard * stroy = [UIStoryboard storyboardWithName:@"loginReginster" bundle:nil];
    //    LogViewController * logVC = [stroy instantiateViewControllerWithIdentifier:@"login"];
    //    [self presentViewController:logVC animated:NO completion:^{
    //
    //    }];
    
    
    //-----------------直播-------------------------
    // Do any additional setup after loading the view, typically from a nib.
    
    //网络视频
    //    self.url = [NSURL URLWithString:@"https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4"];
    //    _player = [[IJKAVMoviePlayerController alloc] initWithContentURL:self.url];
    
    //直播视频
    
   
//    self.url = [NSURL URLWithString:@"http://live.hkstv.hk.lxdns.com/live/hks/playlist.m3u8"];
//    _player = [[IJKFFMoviePlayerController alloc] initWithContentURL:self.url withOptions:nil];
//    
//    UIView *playerView = [self.player view];
//    
//    UIView *displayView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 180)];
//    //暂停
//    UITapGestureRecognizer* singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(play_btn:)];
//    [displayView addGestureRecognizer:singleTap];
//    
//    
//    self.PlayerView = displayView;
//    self.PlayerView.backgroundColor = [UIColor blackColor];
//    [self.view addSubview:self.PlayerView];
//    self.view.backgroundColor = [UIColor whiteColor];
//    
//    
//    playerView.frame = self.PlayerView.bounds;
//    playerView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
//    
//    [self.PlayerView insertSubview:playerView atIndex:1];
//    [_player setScalingMode:IJKMPMovieScalingModeAspectFill];
//    [self installMovieNotificationObservers];
//    
    
    // Do any additional setup after loading the view.
}
//-(void)viewWillAppear:(BOOL)animated{
//    if (![self.player isPlaying]) {
//        [self.player prepareToPlay];
//    }
//}
//#pragma Selector func
//
//- (void)loadStateDidChange:(NSNotification*)notification {
//    IJKMPMovieLoadState loadState = _player.loadState;
//    
//    if ((loadState & IJKMPMovieLoadStatePlaythroughOK) != 0) {
//        NSLog(@"LoadStateDidChange: IJKMovieLoadStatePlayThroughOK: %d\n",(int)loadState);
//    }else if ((loadState & IJKMPMovieLoadStateStalled) != 0) {
//        NSLog(@"loadStateDidChange: IJKMPMovieLoadStateStalled: %d\n", (int)loadState);
//    } else {
//        NSLog(@"loadStateDidChange: ???: %d\n", (int)loadState);
//    }
//}
//
//- (void)moviePlayBackFinish:(NSNotification*)notification {
//    int reason =[[[notification userInfo] valueForKey:IJKMPMoviePlayerPlaybackDidFinishReasonUserInfoKey] intValue];
//    switch (reason) {
//        case IJKMPMovieFinishReasonPlaybackEnded:
//            NSLog(@"playbackStateDidChange: IJKMPMovieFinishReasonPlaybackEnded: %d\n", reason);
//            break;
//            
//        case IJKMPMovieFinishReasonUserExited:
//            NSLog(@"playbackStateDidChange: IJKMPMovieFinishReasonUserExited: %d\n", reason);
//            break;
//            
//        case IJKMPMovieFinishReasonPlaybackError:
//            NSLog(@"playbackStateDidChange: IJKMPMovieFinishReasonPlaybackError: %d\n", reason);
//            break;
//            
//        default:
//            NSLog(@"playbackPlayBackDidFinish: ???: %d\n", reason);
//            break;
//    }
//}
//
//- (void)mediaIsPreparedToPlayDidChange:(NSNotification*)notification {
//    NSLog(@"mediaIsPrepareToPlayDidChange\n");
//}
//
//- (void)moviePlayBackStateDidChange:(NSNotification*)notification {
//    switch (_player.playbackState) {
//        case IJKMPMoviePlaybackStateStopped:
//            NSLog(@"IJKMPMoviePlayBackStateDidChange %d: stoped", (int)_player.playbackState);
//            break;
//            
//        case IJKMPMoviePlaybackStatePlaying:
//            NSLog(@"IJKMPMoviePlayBackStateDidChange %d: playing", (int)_player.playbackState);
//            break;
//            
//        case IJKMPMoviePlaybackStatePaused:
//            NSLog(@"IJKMPMoviePlayBackStateDidChange %d: paused", (int)_player.playbackState);
//            break;
//            
//        case IJKMPMoviePlaybackStateInterrupted:
//            NSLog(@"IJKMPMoviePlayBackStateDidChange %d: interrupted", (int)_player.playbackState);
//            break;
//            
//        case IJKMPMoviePlaybackStateSeekingForward:
//        case IJKMPMoviePlaybackStateSeekingBackward: {
//            NSLog(@"IJKMPMoviePlayBackStateDidChange %d: seeking", (int)_player.playbackState);
//            break;
//        }
//            
//        default: {
//            NSLog(@"IJKMPMoviePlayBackStateDidChange %d: unknown", (int)_player.playbackState);
//            break;
//        }
//    }
//}
//
//#pragma Install Notifiacation
//
//- (void)installMovieNotificationObservers {
//    [[NSNotificationCenter defaultCenter] addObserver:self
//                                             selector:@selector(loadStateDidChange:)
//                                                 name:IJKMPMoviePlayerLoadStateDidChangeNotification
//                                               object:_player];
//    [[NSNotificationCenter defaultCenter] addObserver:self
//                                             selector:@selector(moviePlayBackFinish:)
//                                                 name:IJKMPMoviePlayerPlaybackDidFinishNotification
//                                               object:_player];
//    
//    [[NSNotificationCenter defaultCenter] addObserver:self
//                                             selector:@selector(mediaIsPreparedToPlayDidChange:)
//                                                 name:IJKMPMediaPlaybackIsPreparedToPlayDidChangeNotification
//                                               object:_player];
//    
//    [[NSNotificationCenter defaultCenter] addObserver:self
//                                             selector:@selector(moviePlayBackStateDidChange:)
//                                                 name:IJKMPMoviePlayerPlaybackStateDidChangeNotification
//                                               object:_player];
//    
//}
//
//- (void)removeMovieNotificationObservers {
//    [[NSNotificationCenter defaultCenter] removeObserver:self
//                                                    name:IJKMPMoviePlayerLoadStateDidChangeNotification
//                                                  object:_player];
//    [[NSNotificationCenter defaultCenter] removeObserver:self
//                                                    name:IJKMPMoviePlayerPlaybackDidFinishNotification
//                                                  object:_player];
//    [[NSNotificationCenter defaultCenter] removeObserver:self
//                                                    name:IJKMPMediaPlaybackIsPreparedToPlayDidChangeNotification
//                                                  object:_player];
//    [[NSNotificationCenter defaultCenter] removeObserver:self
//                                                    name:IJKMPMoviePlayerPlaybackStateDidChangeNotification
//                                                  object:_player];
//    
//}
//- (void)play_btn:(id)sender {
//    if (![self.player isPlaying]) {
//        [self.player play];
//    }else{
//        [self.player pause];
//    }
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
