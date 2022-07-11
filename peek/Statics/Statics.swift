//
//  ColorPalette.swift
//  peek
//
//  Created by Bekzhan Talgat on 11.07.2022.
//

import UIKit

struct ColorPalette {
    static var customWhite: UIColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1)
    static var customYellow: UIColor = UIColor(red: 0.96, green: 0.98, blue: 0.098, alpha: 1)
}


struct LogoImage {
    
    static func getLogoImageView() -> UIImageView {
        let iv = UIImageView()
        iv.image = UIImage(named: "Logo")
        iv.contentMode = .scaleAspectFill

        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }
    
}


struct Buttons {
    static func getPrimaryButton(title: String ) -> UIButton {
        let btn = UIButton(type: .system)
        btn.backgroundColor = ColorPalette.customYellow
        btn.setTitle(title, for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 24)
        btn.setTitleColor(UIColor.black, for: .normal)

        btn.layer.cornerRadius = 12.5
        btn.layer.shadowColor = UIColor.systemGray.cgColor
        btn.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        btn.layer.shadowOpacity = 1.0
        btn.layer.shadowRadius = 2.5
        btn.layer.masksToBounds = false
        btn.layer.cornerRadius = 12.5

        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }
    
    static func getSecondaryButton(title: String) -> UIButton {
        let btn = UIButton(type: .system)
        btn.backgroundColor = .black
        btn.setTitle(title, for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 24)
        btn.setTitleColor(ColorPalette.customWhite, for: .normal)

        btn.layer.cornerRadius = 12.5
        btn.layer.borderColor = ColorPalette.customWhite.cgColor
        btn.layer.borderWidth = 2

        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }
    
    
}
