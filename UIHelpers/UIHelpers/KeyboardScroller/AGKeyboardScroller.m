//
//  AGKeyboardScroller.m
//  UIHelpers
//
//  Created by Alexey Golovenkov on 03.10.14.
//  Copyright (c) 2014 Alexey Golovenkov. All rights reserved.
//

#import "AGKeyboardScroller.h"

@implementation AGKeyboardScroller

- (void)awakeFromNib {
	[super awakeFromNib];
	
	[self subscribeForNotifications];
}

- (void)dealloc {
	[self unsubsribeFromNotifications];
}

#pragma mark -
#pragma mark Keyboard notifications handlers

- (void)keyboardWillShowWithNotification:(NSNotification*)notification {
    
}

- (void)keyboardWillHideWithNotification:(NSNotification*)notification {
    
}

#pragma mark -
#pragma mark Private methods

- (void)subscribeForNotifications {
	NSNotificationCenter* notificationCenter = [NSNotificationCenter defaultCenter];
	[notificationCenter addObserver:self selector:@selector(keyboardWillShowWithNotification:) name:UIKeyboardWillShowNotification object: nil];
	[notificationCenter addObserver:self selector:@selector(keyboardWillHideWithNotification:) name:UIKeyboardWillHideNotification object: nil];
}

- (void)unsubsribeFromNotifications {
	[[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (UIView*)activeViewForView:(UIView*)view {
    if ([view isFirstResponder]) {
        return view;
    }
    for (UIView* subview in [view subviews]) {
        if ([subview isFirstResponder]) {
            return subview;
        }
        [self activeViewForView:subview];
    }
    return nil;
}

@end
