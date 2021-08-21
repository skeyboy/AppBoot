//
//  Array+Snap.swift
//  AppBoot
//
//  Created by sk on 2021/8/21.
//

import UIKit
import SnapKit

public extension Array where Element: UIView {
    func flowLayout(hSpace: CGFloat = 0, vSpace: CGFloat = 0, width: CGFloat = 0, height:CGFloat = 0, columnCount: Int = 1, callback:((Element,Int)->Void)? = nil) {
        let row = (self.count - 1) / columnCount  + 1
        for index in 0 ..< count {
            let currentColumn = index % columnCount
            let currentRow = index / columnCount
            let leading = CGFloat(currentColumn+1) * hSpace + CGFloat(currentColumn) * width
            let top = CGFloat(currentRow + 1) * vSpace + CGFloat(currentRow) * height
            
            let currentItem = self[index]
            currentItem.snp.remakeConstraints { make in
                make.width.equalTo(width)
                make.height.equalTo(height)
                make.leading.equalToSuperview().offset(leading)
                if currentColumn == columnCount - 1 {
                    make.trailing.equalToSuperview().offset(-hSpace)
                }
                
                make.top.equalToSuperview().offset(top)
                if row  == currentRow  + 1 {
                    make.bottom.equalToSuperview().offset(-vSpace)
                }
            }
            callback?(currentItem, index)
        }
        
    }
}
