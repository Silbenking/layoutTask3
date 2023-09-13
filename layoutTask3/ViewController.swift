//
//  ViewController.swift
//  layoutTask3
//
//  Created by Сергей Сырбу on 11.09.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let instantImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "insntant")
        return imageView
    }()
    
    let resetLabel: UILabel = {
        let label = UILabel()
        label.text = "Reset your password"
        label.font = .systemFont(ofSize: Constant.resetLabelFontSize)
        return label
    }()
    
    let lineUIView: UIView = {
        let line = UIView()
        line.backgroundColor = UIColor(red: 251/255, green: 133/255, blue: 0, alpha: 1)
        return line
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Which method you want to use  to reset your password."
        label.textAlignment = .left
        label.font = .systemFont(ofSize: Constant.titleLabelFontSize)
        label.numberOfLines = 0
        return label
    }()
    
    let smsView = CustomView(text: "Continue with email", image: UIImage(named: "sms")!)
    let cellView = CustomView(text: "Continue with mobile", image: UIImage(named: "call")!)
    let messView = CustomView(text: "Continue with secret question", image: UIImage(named: "mess")!)

    let poliecesLabel: UILabel = {
        let label = UILabel()
        label.text = "Policies and Terms of condition"
        label.textColor = UIColor(red: 251/255, green: 133/255, blue: 0/255, alpha: 1)
        label.font = .systemFont(ofSize: Constant.policesLabelFontSize)
        return label
    }()
    
    let helpLabel: UILabel = {
        let label = UILabel()
        label.text = "Help"
        label.font = .systemFont(ofSize: Constant.helpLabelFontSize)
        return label
    }()
    
    private enum Constant {
        static let instantImageOffset: CGFloat = 90
        static let resetLabelFontSize: CGFloat = 24
        static let resetLabelOffset: CGFloat = 87
        static let linelOffset: CGFloat = 12
        static let linelWidth: CGFloat = 342
        static let linelHeight: CGFloat = 1
        static let titleLabelFontSize: CGFloat = 14
        static let titleLabelOffset: CGFloat = 45
        static let allOffset: CGFloat = 24
        static let stackSpacing: CGFloat = 48
        static let stackOffset: CGFloat = 24
        static let policesLabelFontSize: CGFloat = 14
        static let helpLabelFontSize: CGFloat = 16
        static let stackLabelSpacing: CGFloat = 12
        static let stackLabelOffset: CGFloat = 230
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        setupAppearance()
    }
    

    private func setupLayout() {
        view.addSubview(instantImage)
        instantImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(Constant.instantImageOffset)
        }
        view.addSubview(resetLabel)
        resetLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(instantImage.snp.bottom).offset(Constant.resetLabelOffset)
        }
        view.addSubview(lineUIView)
        lineUIView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(resetLabel.snp.bottom).offset(Constant.linelOffset)
            make.size.equalTo(CGSize(width: Constant.linelWidth, height: Constant.linelHeight))
        }
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(resetLabel.snp.bottom).offset(Constant.titleLabelOffset)
            make.left.trailing.equalToSuperview().inset(Constant.allOffset)
        }
        let stackView = UIStackView()
        stackView.addArrangedSubview(smsView)
        stackView.addArrangedSubview(cellView)
        stackView.addArrangedSubview(messView)
        stackView.spacing = Constant.stackOffset
        stackView.axis = .vertical
        view.addSubview(stackView)
        stackView.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(Constant.stackSpacing)
            make.left.equalToSuperview().inset(Constant.allOffset)
        }
        let stackLabel = UIStackView()
        stackLabel.addArrangedSubview(poliecesLabel)
        stackLabel.addArrangedSubview(helpLabel)
        stackLabel.spacing = Constant.stackLabelSpacing
        stackLabel.axis = .vertical
        stackLabel.alignment = .center
        view.addSubview(stackLabel)
        stackLabel.snp.makeConstraints { make in
            make.top.equalTo(stackView.snp.bottom).offset(Constant.stackLabelOffset)
            make.centerX.equalToSuperview()
        }
        
    }
    
    private func setupAppearance() {
        view.backgroundColor = .white
    }
    
    private func setupBehavior() {
        
    }
}

