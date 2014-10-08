//
//  ItemCell.h
//  Econom
//
//  Created by Alexey Golovenkov on 02/09/14.
//  Copyright (c) 2014 termint. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AGItemCell : UITableViewCell

@property (nonatomic, strong) NSObject *dataItem;

- (void)customize;

@end
