//
//  CustomControls.swift
//  collectionview
//
//  Created by Shiva on 09/18/2021.
//

import Foundation
import UIKit

//Size+Font+Color

class LabelLargeRegularBlack: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpLabel()
    }
    func setUpLabel() {
        self.textColor = Theme.Colors.Black
        self.font = UIFont(name: Theme.Fonts.Regular, size: Theme.FontSize.Large)
    }
}

class LabelSmallRegularBlack: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpLabel()
    }
    func setUpLabel() {
        self.textColor = Theme.Colors.Black
        self.font = UIFont(name: Theme.Fonts.Regular, size: Theme.FontSize.Small)
    }
}



class LabelMediumRegularBlack: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpLabel()
    }
    func setUpLabel() {
        self.textColor = Theme.Colors.Black
        self.font = UIFont(name: Theme.Fonts.Regular, size: Theme.FontSize.Medium)
    }
}

class LabelExtraLargeRegularBlack: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpLabel()
    }
    func setUpLabel() {
        self.textColor = Theme.Colors.Black
        self.font = UIFont(name: Theme.Fonts.Regular, size: Theme.FontSize.ExtraLarge)
    }
}



class RoundedButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpButton()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpButton()
    }
    func setUpButton()  {
        setTitleColor(Theme.Colors.Black, for: .normal)
        titleLabel?.font = UIFont(name: Theme.Fonts.Regular, size: Theme.FontSize.Small)
        self.layer.cornerRadius = Theme.CornerRadius.defaultRadius
        self.layer.borderWidth = 1
    }
}


class CustomTextfield: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpTextfield()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpTextfield()
    }
    func setUpTextfield()  {
        self.textColor = Theme.Colors.Black
        self.font =  UIFont(name: Theme.Fonts.Regular, size: Theme.FontSize.Small)
        useUnderline()
    }
    
    func useUnderline() {
        
        let border = CALayer()
        let borderWidth = CGFloat(1.0)
        border.borderColor = UIColor.black.cgColor
        //UIColor.blackColor.CGColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - borderWidth, width: self.frame.size.width, height: self.frame.size.height)
        //CGRectMake(0, self.frame.size.height - borderWidth, self.frame.size.width, self.frame.size.height)
        border.borderWidth = borderWidth
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}


