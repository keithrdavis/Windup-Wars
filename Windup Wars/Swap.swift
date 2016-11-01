//
//  Swap.swift
//  Windup Wars
//
//  This program is free software; you can redistribute it and/or
//  modify it under the terms of the GNU General Public License
//  as published by the Free Software Foundation; either version 2
//  of the License, or (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program; if not, write to the Free Software
//  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
//
//  Created by Keith Davis on 10/31/16.
//  Copyright © 2016 ZuniSoft. All rights reserved.
//

import Foundation

struct Swap: CustomStringConvertible, Hashable {
    let windupA: Windup
    let windupB: Windup
    
    init(windupA: Windup, windupB: Windup) {
        self.windupA = windupA
        self.windupB = windupB
    }
    
    static func ==(lhs: Swap, rhs: Swap) -> Bool {
        return (lhs.windupA == rhs.windupA && lhs.windupB == rhs.windupB) ||
            (lhs.windupB == rhs.windupA && lhs.windupA == rhs.windupB)
    }
    
    var hashValue: Int {
        return windupA.hashValue ^ windupB.hashValue
    }
    
    var description: String {
        return "swap \(windupA) with \(windupB)"
    }
}
