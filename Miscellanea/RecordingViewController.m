//
//  RecordingViewController.m
//  Miscellanea
//
//  Created by Emannuel Carvalho on 4/30/16.
//  Copyright © 2016 Emannuel Carvalho. All rights reserved.
//

#import "RecordingViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface RecordingViewController ()
@property (weak, nonatomic) IBOutlet UILabel  *statusLabel;
@property (strong, nonatomic) AVAudioRecorder *recorder;
@property (strong, nonatomic) AVAudioPlayer   *player;
@end

@implementation RecordingViewController

- (IBAction)record:(UIButton *)sender {
    NSURL *url = [self getURL];
    NSDictionary *settings = [self settingsForAudio];
    NSError *error;
    
    _recorder = [[AVAudioRecorder alloc] initWithURL:url settings:settings error:&error];
    
    if (error) {
        return;
    }
    
    if ([_recorder prepareToRecord]) {
        [_recorder record];
    }
}

- (IBAction)stop:(UIButton *)sender {
    [_recorder stop];
}

- (IBAction)play:(UIButton *)sender {
    NSURL *url = [self getURL];
    NSError *error;
    _player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    
    if (error) {
        return;
    }
    
    if ([_player prepareToPlay]) {
        [_player play];
    }
}

- (NSDictionary *)settingsForAudio {
    NSMutableDictionary *settings = [NSMutableDictionary dictionary];
    
    [settings setValue: [NSNumber numberWithInt:kAudioFormatLinearPCM] forKey:AVFormatIDKey];
    [settings setValue: [NSNumber numberWithFloat:8000.0] forKey:AVSampleRateKey];
    [settings setValue: [NSNumber numberWithInt: 1] forKey:AVNumberOfChannelsKey];
    [settings setValue: [NSNumber numberWithInt:16] forKey:AVLinearPCMBitDepthKey];
    [settings setValue: [NSNumber numberWithBool:NO] forKey:AVLinearPCMIsBigEndianKey];
    [settings setValue: [NSNumber numberWithBool:NO] forKey:AVLinearPCMIsFloatKey];
    [settings setValue:  [NSNumber numberWithInt: AVAudioQualityMax] forKey:AVEncoderAudioQualityKey];
    
    return  settings;
}

- (NSURL *)getURL {
    NSArray *searchPaths =NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath_ = [searchPaths objectAtIndex: 0];
    NSString *pathToSave = [documentPath_ stringByAppendingPathComponent:@"myAudioFile"];
    NSURL *url = [NSURL fileURLWithPath:pathToSave];
    return  url;
}


@end
