//
//  PlaneDataSource.m
//  Econom
//
//  Created by Alexey Golovenkov on 02/09/14.
//  Copyright (c) 2014 termint. All rights reserved.
//

#import "AGPlaneDataSource.h"
#import "AGItemCell.h"

@implementation AGPlaneDataSource

#pragma mark -
#pragma mark UITableViewDataSource methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:_cellReusableIdentifier];

    if ([cell isKindOfClass:[AGItemCell class]] && indexPath.row < [_data count]) {
        [(AGItemCell *)cell setDataItem : _data[indexPath.row]];
    }

    return cell;
}

@end
