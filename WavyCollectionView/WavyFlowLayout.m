//
//  WavyFlowLayout.m
//  WavyCollectionView
//
//  Created by Hyung Jip Moon on 2017-02-23.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "WavyFlowLayout.h"

@interface WavyFlowLayout ()

@property (nonatomic) NSArray *savedAttributes;

@end

@implementation WavyFlowLayout


- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
    NSArray<UICollectionViewLayoutAttributes *> *superAttrs = [super layoutAttributesForElementsInRect:rect];

    NSMutableArray<UICollectionViewLayoutAttributes *> *newAttrs = [[NSMutableArray alloc]init];

    // Copy NSArray elements into the NSMutableArray
    newAttrs = [NSMutableArray arrayWithArray:superAttrs];
    
    // Go through for loop in new NSMutable Array to set each element's position
    for (UICollectionViewLayoutAttributes *attributes in newAttrs) {
        
        attributes.frame = CGRectMake(attributes.frame.origin.x, arc4random_uniform(1000), self.itemSize.width, self.itemSize.height);
    }
    
    return newAttrs;
}

- (void)prepareLayout {

    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    self.itemSize = CGSizeMake(100,50);
    self.minimumInteritemSpacing = CGFLOAT_MAX;
}

@end


