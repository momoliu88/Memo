//
//  MemoAppDelegate.h
//  Memo
//
//  Created by xiaoqinliu on 13-6-9.
//  Copyright 2013年 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MemoAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *_window;
}

@property (strong) IBOutlet NSWindow *window;

@end
