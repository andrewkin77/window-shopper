//
//  Wage.swift
//  window-shopper
//
//  Created by Андрей Лебедев on 19.09.2020.
//  Copyright © 2020 Андрей Лебедев. All rights reserved.
//

import Foundation
class Wage
{
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int
    {
        return Int(ceil(price/wage))
    }
}
