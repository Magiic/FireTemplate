//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit

protocol ___VARIABLE_DataSourceProtocol___ {
    func height(forCollectionView collectionView: UICollectionView, at indexPath: IndexPath) -> CGFloat
}

class ___FILEBASENAMEASIDENTIFIER___: UICollectionViewLayout {

    var cellPadding: CGFloat = CGFloat(___VARIABLE_CellPadding___)
    var width: CGFloat = 0.0
    var numberOfItems: Int = 0

    fileprivate var cache = [UICollectionViewLayoutAttributes]()

    fileprivate var contentHeight: CGFloat = 0.0

    fileprivate var contentWidth: CGFloat {
        let insets = self.collectionView!.contentInset
        return self.collectionView!.bounds.width - (insets.left + insets.right)
    }

    fileprivate var widthView: CGFloat {
        let insets = self.collectionView!.contentInset
        return self.collectionView!.bounds.width - (insets.left + insets.right)
    }

    var dataSource: ___VARIABLE_DataSourceProtocol___?

    //MARK:- Override

    override var collectionViewContentSize: CGSize {
        return CGSize(width: contentWidth, height: contentHeight)
    }

    override func prepare() {
        configPrepareLayout()
    }

    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        return UICollectionViewLayoutAttributes(forCellWith: indexPath)
    }

    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        return cache.filter { $0.frame.intersects(rect) }
    }

    override func invalidateLayout() {
        super.invalidateLayout()

        cache = []
        contentHeight = 0
    }

    override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        if let oldWidth = collectionView?.bounds.width {
            return oldWidth != newBounds.width
        }

        return false
    }

    // MARK: - Setup Prepare Layout

    fileprivate func configPrepareLayout() {
        cache.removeAll()
        self.width = self.collectionView?.bounds.width ?? 0
        self.numberOfItems = self.collectionView?.numberOfItems(inSection: 0) ?? 0
        guard let aCollectionView = collectionView else { return }

        let numberOfItems = aCollectionView.numberOfItems(inSection: 0)

        for index in 0..<numberOfItems {
            let indexPath = IndexPath(item: index, section: 0)
            let estimateHeight = dataSource?.height(forCollectionView: aCollectionView, at: indexPath) ?? 0.0
            let frame = attributeFrame(for: indexPath, estimateHeight: estimateHeight)

            contentHeight = max(contentHeight, frame.maxY)

            let attributes = UICollectionViewLayoutAttributes(forCellWith: indexPath)
            attributes.frame = frame
            cache.append(attributes)
        }
    }

    // MARK:- Self-sizing

    var heightCache = [Int: CGFloat]()

    func attributeFrame(for indexPath: IndexPath, estimateHeight: CGFloat) -> CGRect {
        let height = heightCache[indexPath.row] ?? estimateHeight
        let heightsTillNow: CGFloat = (0..<indexPath.item).reduce(0) { (result, idx) -> CGFloat in
            return result + self.cellPadding + (heightCache[idx] ?? estimateHeight)
        }

        return CGRect(x: 0, y: heightsTillNow, width: self.width, height: height)
    }

    override func shouldInvalidateLayout(forPreferredLayoutAttributes preferredAttributes: UICollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: UICollectionViewLayoutAttributes) -> Bool {

        let index = originalAttributes.indexPath.item
        if let height = self.heightCache[index], height == preferredAttributes.size.height {
            return false
        } else {
            return true
        }
    }

    override func invalidationContext(forPreferredLayoutAttributes preferredAttributes: UICollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutInvalidationContext {
        let context = super.invalidationContext(forPreferredLayoutAttributes: preferredAttributes, withOriginalAttributes: originalAttributes)

        self.heightCache[originalAttributes.indexPath.item] = preferredAttributes.size.height
        context.contentSizeAdjustment = CGSize(width: 0, 0)

        let indexPaths: [IndexPath] = (originalAttributes.indexPath.item..<self.numberOfItems).map {
            return IndexPath(item: $0, section: 0)
        }
        context.invalidateItems(at: indexPaths)

        return context
    }
}
