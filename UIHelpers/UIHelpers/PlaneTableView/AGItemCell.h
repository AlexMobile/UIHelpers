//
//  ItemCell.h
//  Econom
//
//  Created by Alexey Golovenkov on 02/09/14.
//  Copyright (c) 2014 termint. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  Basic class for table view cells
 */
@interface AGItemCell : UITableViewCell

/**
 *  Item to be displayed in the cell
 */
@property (nonatomic, strong) NSObject *dataItem;

/**
 *  Inheritors must implement this method to display dataItem
 */
- (void)customize;

@end
