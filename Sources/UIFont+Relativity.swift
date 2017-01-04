//
//  UIFont+Relativity.swift
//  Relativity
//
//  Created by Dan Federman on 1/4/17.
//  Copyright © 2017 Dan Federman.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import CoreGraphics
import UIKit


public extension UIFont {
    
    /// The distance bnetween the top of the line to the top of a capital letter.
    public func capInset(with pixelRounder: PixelRounder = PixelRounder()) -> CGFloat {
        return pixelRounder.floorToPixel(ascender - capHeight)
    }
    
    /// The distance between the bottom of the line and the text baseline.
    public func baselineInset(with pixelRounder: PixelRounder = PixelRounder()) -> CGFloat {
        return pixelRounder.ceilToPixel(-descender)
    }
    
}
