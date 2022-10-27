//
//  SecondaryButton.swift
//  WorkoutApp
//
//  Created by Aligazy Kismetov on 27.10.2022.
//

import UIKit

final class SecondaryButton: UIButton{
    
    private let label = UILabel()
    private let iconView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
        layoutViews()
        configures()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setTitle(_ title: String){
        label.text = title
    }
}

private extension SecondaryButton{
    
    func addViews(){
        addSubview(label)
        addSubview(iconView)
    }
    
    //Constraints
    
    func layoutViews(){
        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            iconView.widthAnchor.constraint(equalToConstant: 10),
            
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.trailingAnchor.constraint(equalTo: iconView.leadingAnchor),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        ])
    }
    
    //Customizing Button
    
    func configures(){
        
        backgroundColor = Resources.Colors.secodary
        layer.cornerRadius = 14
        makeSystem(self) //Animation
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = Resources.Colors.active
        label.font = Resources.Fonts.helveticaRegular(with: 15)
        label.textAlignment = .center
        
        iconView.translatesAutoresizingMaskIntoConstraints = false
        iconView.image = Resources.Images.Common.downArrow?.withRenderingMode(.alwaysTemplate) //For repainting Color
        iconView.tintColor = Resources.Colors.active
    }
}
