//
//  UIViewCustom.swift
//  layoutTask3
//
//  Created by Сергей Сырбу on 11.09.2023.
//

import Foundation
import UIKit
import SnapKit

class CustomView: UIView {
    
    private enum Constant {
        static let widthView: CGFloat = 342
        static let heightView: CGFloat = 40
        static let cornerRadiusView: CGFloat = 20
        static let imageViewInset: CGFloat = 24
        static let textLabelInset: CGFloat = 16
    }
    
    let view: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 253/255, green: 235/255, blue: 219/255, alpha: 1)
        return view
    }()
    let textLabel = UILabel()
    let imageView = UIImageView()
    
    init(text: String, image: UIImage) {
        super.init(frame: .zero)
        configureView()
        setText(text)
        setImage(image)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
  
    func configureView() {
        addSubview(textLabel)
        addSubview(imageView)
        self.layer.cornerRadius = Constant.cornerRadiusView
        backgroundColor = UIColor(red: 253/255, green: 235/255, blue: 219/255, alpha: 1)
        
        self.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: Constant.widthView , height: Constant.heightView))
        }
        imageView.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(Constant.imageViewInset)
            make.centerY.equalToSuperview()
        }
        textLabel.snp.makeConstraints { make in
            make.leading.equalTo(imageView.snp.trailing).offset(Constant.textLabelInset)
            make.centerY.equalToSuperview()
        }
    }
    
    func setText(_ text: String) {
        textLabel.text = text
    }
    
    func setImage(_ image: UIImage) {
        imageView.image = image
    }

    
}
