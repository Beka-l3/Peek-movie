//
//  ColorPalette.swift
//  peek
//
//  Created by Bekzhan Talgat on 11.07.2022.
//

import UIKit

struct ConstraintConstants {
    static let logoDistanceFromCenter: CGFloat = -176
    static let logoSize: CGFloat = 200
    
    static let buttonHeight: CGFloat = 48
    static let buttonLeadingAnchors: CGFloat = 32
    static let buttonTrailingAnchors: CGFloat = -32
    
    static let primaryButtonDisatnceFromCenter: CGFloat = 192
    static let secondaryButtonDistanceFromPrimary: CGFloat = 16
    
    
    static let inputFieldHeight: CGFloat = 48
    static let inputFieldLeadingAnchor: CGFloat = 32
    static let inputFieldTrailingAnchor: CGFloat = -32
    static let inputFieldDistanceFromCenter: CGFloat = -56
    static let distanceBetweenInputFields: CGFloat = 16
}

struct ColorPalette {
    static var customWhite: UIColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1)
    static var customYellow: UIColor = UIColor(red: 0.96, green: 0.98, blue: 0.098, alpha: 1)
    static var customBlack = UIColor(red: 0.05, green: 0.05, blue: 0.05, alpha: 1)
}


struct Images {
    
    static func getImageView(named name: String) -> UIImageView {
        let iv = UIImageView()
        iv.image = UIImage(named: name)
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

struct InputFields {
    static func inputField(placeholderText: String) -> UITextField {
        let iv = UITextField()
        iv.backgroundColor = ColorPalette.customWhite
        iv.textColor = ColorPalette.customBlack
        iv.tintColor = .systemPurple
        iv.font = .systemFont(ofSize: 24)
        iv.textAlignment = .center

        let placeholder = NSAttributedString(
            string: placeholderText,
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
                
        iv.attributedPlaceholder = placeholder

        iv.layer.cornerRadius = 12.5

        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }
}

struct Labels {
    
    static func getPrimaryLabel(texted text: String, ofSize size: CGFloat) -> UILabel {
        let l = UILabel()
        l.text = text
        l.font = .systemFont(ofSize: size)
        l.textColor = ColorPalette.customYellow

        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }
    
    static func getSecondaryLabel(texted text: String, ofSize size: CGFloat) -> UILabel {
        let l = UILabel()
        l.text = text
        l.font = .systemFont(ofSize: size)
        l.textColor = ColorPalette.customWhite

        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }
}
