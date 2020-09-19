//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Андрей Лебедев on 11/04/2019.
//  Copyright © 2019 Андрей Лебедев. All rights reserved.
//

import UIKit
@IBDesignable
class CurrencyTxtField: UITextField {
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        }
    func customizeView(){
        backgroundColor = #colorLiteral(red: 0.9952836633, green: 0.9879123569, blue: 1, alpha: 0.2481018926)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white ])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }
    }

