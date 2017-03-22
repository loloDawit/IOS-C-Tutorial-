//
//  projectTableViewCell.h
//  App
//
//  Created by Dawit Abera on 3/21/17.
//  Copyright © 2017 University of Washington. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface projectTableViewCell : UITableViewCell

@property (strong,nonatomic) IBOutlet UILabel *TitleLabel;
@property (strong,nonatomic) IBOutlet UILabel *DescriptionLabel;
@property (strong,nonatomic) IBOutlet UIImageView *ThumImage;

@end
