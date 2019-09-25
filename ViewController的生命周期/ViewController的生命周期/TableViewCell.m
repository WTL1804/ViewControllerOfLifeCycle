//
//  TableViewCell.m
//  ViewController的生命周期
//
//  Created by 王天亮 on 2019/9/25.
//  Copyright © 2019 王天亮. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    return self;
}
- (void)layoutSubviews {
    
}

@end
