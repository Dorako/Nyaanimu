//
//  AppDelegate.h
//  Nyaanimu
//
//  Created by Malthe Elkær on 2/9/13.
//  Copyright (c) 2013 Malthe Elkær. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *tfTitle;
@property (weak) IBOutlet NSTextField *tfGroup;
@property (weak) IBOutlet NSPopUpButton *pbResolution;
@property (weak) IBOutlet NSPopUpButton *pbSource;
@property (weak) IBOutlet NSButton *bGenerate;
- (IBAction)generate:(id)sender;
@property (weak) IBOutlet NSTextField *tfRSS;
@property (weak) IBOutlet NSButton *bCopy;
- (IBAction)copy:(id)sender;

@end
