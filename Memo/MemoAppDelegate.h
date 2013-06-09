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
    NSTextField *_memoLine;
    NSTableView *_tv;
    NSMutableArray * memos;
}
@property (strong) IBOutlet NSTextField *memoLine;
@property (strong) IBOutlet NSTableView *tv;

@property (strong) IBOutlet NSWindow *window;
- (IBAction)add:(id)sender;

@end
