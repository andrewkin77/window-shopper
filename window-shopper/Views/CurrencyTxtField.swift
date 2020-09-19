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
    
    override func draw(_ rect: CGRect ) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.9952836633, green: 0.9879123569, blue: 1, alpha: 0.8)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.1870645285, green: 0.2015096247, blue: 0.2223366499, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale.current//(identifier: "ru_RUS")
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
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
        
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white ])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }
    }

