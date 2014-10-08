//
//  ItemCell.m
//  Econom
//
//  Created by Alexey Golovenkov on 02/09/14.
//  Copyright (c) 2014 termint. All rights reserved.
//

#import "AGItemCell.h"

@implementation AGItemCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setDataItem:(NSObject *)dataItem {
    _dataItem = dataItem;
    [self customize];
}

- (void)customize {
    // to be implemeted in inheritors
}

@end
