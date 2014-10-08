//
//  PlaneDataSource.h
//  Econom
//
//  Created by Alexey Golovenkov on 02/09/14.
//  Copyright (c) 2014 termint. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AGPlaneDataSource : NSObject <UITableViewDataSource>

@property (nonatomic, strong) NSArray *data;
@property (nonatomic, copy) IBInspectable NSString *cellReusableIdentifier;

@end
