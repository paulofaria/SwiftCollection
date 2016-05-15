//
//  ItemSection+Interface.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 5/13/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension ItemSection {
    
    public func dequeueReusableCellWithReuseIdentifier(identifier: String, forItem item: ItemSource) -> UICollectionViewCell {
        return delegate(item) { self.collection?.dequeueReusableCellWithReuseIdentifier(identifier, forItem: $0, inSection: self) } ?? UICollectionViewCell()
    }
    
    public func dequeueReusableSupplementaryViewOfKind(elementKind: String, withReuseIdentifier identifier: String, forItem item: ItemSource) -> UICollectionReusableView {
        return delegate(item) { self.collection?.dequeueReusableSupplementaryViewOfKind(elementKind, withReuseIdentifier: identifier, forItem: $0, inSection: self) } ?? UICollectionReusableView()
    }
    
    public func selectItem(item: ItemSource?, animated: Bool, scrollPosition: UICollectionViewScrollPosition) {
        self.collection?.selectItem(index(item), inSection: self, animated: animated, scrollPosition: scrollPosition)
    }
    
    public func deselectItem(item: ItemSource, animated: Bool) {
        delegate(item) { self.collection?.deselectItem($0, inSection: self, animated: animated) }
    }
    
    public func layoutAttributesForItem(item: ItemSource) -> UICollectionViewLayoutAttributes? {
        return delegate(item) { self.collection?.layoutAttributesForItem($0, inSection: self) }
    }
    
    public func layoutAttributesForSupplementaryElementOfKind(kind: String, atItem item: ItemSource) -> UICollectionViewLayoutAttributes? {
        return delegate(item) { self.collection?.layoutAttributesForSupplementaryElementOfKind(kind, atItem: $0, inSection: self) }
    }
    
    public func cellForItem(item: ItemSource) -> UICollectionViewCell? {
        return delegate(item) { self.collection?.cellForItem($0, inSection: self) }
    }
    
    public func scrollToItem(item: ItemSource, atScrollPosition scrollPosition: UICollectionViewScrollPosition, animated: Bool) {
        delegate(item) { self.collection?.scrollToItem($0, inSection: self, atScrollPosition: scrollPosition, animated: animated) }
    }
    
    public func insertItem(item: ItemSource) {
        delegate(item) { self.collection?.insertItems([$0], inSection: self) }
    }
    
    public func deleteItem(item: ItemSource) {
        delegate(item) { self.collection?.deleteItems([$0], inSection: self) }
    }
        
    public func reloadItem(item: ItemSource) {
        delegate(item) { self.collection?.reloadItems([$0], inSection: self) }
    }
    
}
