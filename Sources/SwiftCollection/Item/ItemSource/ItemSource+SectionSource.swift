//
//  ItemSource+SectionSource.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 5/13/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

#if canImport(UIKit)
import UIKit

extension ItemSource where Self : SectionSource {
    
    // Delegate
    
    public func shouldHighlightItem(_ item: Int) -> Bool {
        return shouldHighlight
    }
    
    public func didHighlightItem(_ item: Int) {
        didHighlight()
    }
    
    public func didUnhighlightItem(_ item: Int) {
        didUnhighlight()
    }
    
    public func shouldSelectItem(_ item: Int) -> Bool {
        return shouldSelect
    }
    
    public func shouldDeselectItem(_ item: Int) -> Bool {
        return shouldDeselect
    }
    
    public func didSelectItem(_ item: Int) {
        didSelect()
    }
    
    public func didDeselectItem(_ item: Int) {
        didDeselect()
    }
    
    public func willDisplayCell(_ cell: UICollectionViewCell, forItem item: Int) {
        willDisplayCell(cell)
    }
    
    public func willDisplaySupplementaryView(_ view: UICollectionReusableView, forElementKind elementKind: String, forItem item: Int) {
        willDisplaySupplementaryView(view, forElementKind: elementKind)
    }
    
    public func didEndDisplayingCell(_ cell: UICollectionViewCell, forItem item: Int) {
        didEndDisplayingCell(cell)
    }
    
    public func didEndDisplayingSupplementaryView(_ view: UICollectionReusableView, forElementOfKind elementKind: String, forItem item: Int) {
        didEndDisplayingSupplementaryView(view, forElementOfKind: elementKind)
    }
    
    // Flow Layout Delegate
    
    public func sizeForItem(_ item: Int) -> CGSize {
        return size
    }
    
    // Data Source
    
    public var numberOfItems: Int {
        return 1
    }
    
    public func cellForItem(_ item: Int) -> UICollectionViewCell {
        return cell
    }
    
}
#endif
