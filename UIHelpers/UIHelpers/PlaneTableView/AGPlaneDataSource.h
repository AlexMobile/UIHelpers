//
//  PlaneDataSource.h
//  Econom
//
//  Created by Alexey Golovenkov on 02/09/14.
//  Copyright (c) 2014 termint. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  Simple data source for a plane table (without sections)
 */
@interface AGPlaneDataSource : NSObject <UITableViewDataSource>

/**
 *  Data to be displayed in table
 */
@property (nonatomic, strong) NSArray *data;

/**
 *  Reusable identifier for cells in table view
 */
@property (nonatomic, copy) IBInspectable NSString *cellReusableIdentifier;

@end
