//
//  ViewController.swift
//  ProgrammaticView
//
//  Created by Derrick Park on 2017-05-24.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let framingView: UIView = UIView(frame: CGRect.zero)
    let squareButton: UIButton = UIButton(type: .system)
    let portraitButton: UIButton = UIButton(type: .system)
    let landscapeButton: UIButton = UIButton(type: .system)
    var framingViewHeightConstraint: NSLayoutConstraint = NSLayoutConstraint.init()
    var framingViewWidthConstraint: NSLayoutConstraint = NSLayoutConstraint.init()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        squareButton.setTitle("Square", for: .normal)
        squareButton.addTarget(self, action: #selector(resizeFramingView), for: .touchUpInside)
        view.addSubview(squareButton)
        squareButton.translatesAutoresizingMaskIntoConstraints = false
        
        portraitButton.setTitle("Portrait", for: .normal)
        portraitButton.addTarget(self, action: #selector(resizeFramingView), for: .touchUpInside)
        view.addSubview(portraitButton)
        portraitButton.translatesAutoresizingMaskIntoConstraints = false
        
        landscapeButton.setTitle("Landscape", for: .normal)
        landscapeButton.addTarget(self, action: #selector(resizeFramingView), for: .touchUpInside)
        view.addSubview(landscapeButton)
        landscapeButton.translatesAutoresizingMaskIntoConstraints = false
        
        framingView.translatesAutoresizingMaskIntoConstraints = false
        framingView.backgroundColor = UIColor.green
        view.addSubview(framingView)
        
        
        let buttonsHorizontalContraintsFormat = "|[squareButton(==portraitButton)][portraitButton(==landscapeButton)][landscapeButton]|"
        
        let buttonsHorizontalContraints = NSLayoutConstraint.constraints(withVisualFormat: buttonsHorizontalContraintsFormat, options: .alignAllCenterY, metrics: nil, views: ["squareButton":squareButton, "portraitButton":portraitButton, "landscapeButton":landscapeButton])
        
        NSLayoutConstraint.activate(buttonsHorizontalContraints)
        
        let squareButtonBottomConstraint = NSLayoutConstraint.init(item: squareButton, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: -50.0)
        squareButtonBottomConstraint.isActive = true
        
        let framingViewCenterXContraint = NSLayoutConstraint.init(item: framingView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        
        framingViewCenterXContraint.isActive = true
        
        let framingViewCenterYContraint = NSLayoutConstraint.init(item: framingView, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0.0)
        
        framingViewCenterYContraint.isActive = true
        
        framingViewHeightConstraint = NSLayoutConstraint.init(item: framingView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 500.0)
        framingViewHeightConstraint.isActive = true
        
        framingViewWidthConstraint = NSLayoutConstraint.init(item: framingView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 500.0)
        framingViewWidthConstraint.isActive = true
        
        
        //MY OBJECTS
        //purple
        let purpleView = UIView()
        purpleView.backgroundColor = UIColor.purple
        purpleView.translatesAutoresizingMaskIntoConstraints = false
        framingView.addSubview(purpleView)
        
        let purpleHeight = NSLayoutConstraint.init(item: purpleView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 50.0)
        purpleHeight.isActive = true
        
        let purpleWidth = NSLayoutConstraint.init(item: purpleView, attribute: .width, relatedBy: .equal, toItem: framingView, attribute: .width, multiplier: 0.6, constant: 0)
        purpleWidth.isActive = true
        
        let purpleTrailing = NSLayoutConstraint.init(item: purpleView, attribute: .trailing, relatedBy: .equal, toItem: framingView, attribute: .trailing, multiplier: 1.0, constant: -20.0)
        purpleTrailing.isActive = true
        
        let purpleBottom = NSLayoutConstraint.init(item: purpleView, attribute: .bottom, relatedBy: .equal, toItem: framingView, attribute: .bottom, multiplier: 1.0, constant: -20.0)
        purpleBottom.isActive = true
        
        
        //red
        let redView = UIView()
        redView.backgroundColor = UIColor.red
        redView.translatesAutoresizingMaskIntoConstraints = false
        framingView.addSubview(redView)
        
        let redHeight = NSLayoutConstraint.init(item: redView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 50.0)
        redHeight.isActive = true
        
        let redWidth = NSLayoutConstraint.init(item: redView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 150.0)
        redWidth.isActive = true
        
        let redTrailing = NSLayoutConstraint.init(item: redView, attribute: .trailing, relatedBy: .equal, toItem: framingView, attribute: .trailing, multiplier: 1.0, constant: -20.0)
        redTrailing.isActive = true
        
        let redTop = NSLayoutConstraint.init(item: redView, attribute: .top, relatedBy: .equal, toItem: framingView, attribute: .top, multiplier: 1.0, constant: 20.0)
        redTop.isActive = true
        
        
        
        //orangeLeft
        let orangeLeftView = UIView()
        orangeLeftView.backgroundColor = UIColor.orange
        orangeLeftView.translatesAutoresizingMaskIntoConstraints = false
        redView.addSubview(orangeLeftView)
        
        let orangeLeftHeight = NSLayoutConstraint.init(item: orangeLeftView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 30.0)
        orangeLeftHeight.isActive = true
        
        let orangeLeftWidth = NSLayoutConstraint.init(item: orangeLeftView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 70.0)
        orangeLeftWidth.isActive = true
        
        let orangeLeftLeading = NSLayoutConstraint.init(item: orangeLeftView, attribute: .leading, relatedBy: .equal, toItem: redView, attribute: .leading, multiplier: 1.0, constant: 10.0)
        orangeLeftLeading.isActive = true
        
        let orangeLeftCenterY = NSLayoutConstraint.init(item: orangeLeftView, attribute: .centerY, relatedBy: .equal, toItem: redView, attribute: .centerY, multiplier: 1.0, constant: 0)
        orangeLeftCenterY.isActive = true
        
        //orangeRight
        let orangeRightView = UIView()
        orangeRightView.backgroundColor = UIColor.orange
        orangeRightView.translatesAutoresizingMaskIntoConstraints = false
        redView.addSubview(orangeRightView)
        
        let orangeRightHeight = NSLayoutConstraint.init(item: orangeRightView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 30.0)
        orangeRightHeight.isActive = true
        
        let orangeRightWidth = NSLayoutConstraint.init(item: orangeRightView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 50.0)
        orangeRightWidth.isActive = true
        
        let orangeRightTrailing = NSLayoutConstraint.init(item: orangeRightView, attribute: .trailing, relatedBy: .equal, toItem: redView, attribute: .trailing, multiplier: 1.0, constant: -10.0)
        orangeRightTrailing.isActive = true
        
        let orangeRightCenterY = NSLayoutConstraint.init(item: orangeRightView, attribute: .centerY, relatedBy: .equal, toItem: redView, attribute: .centerY, multiplier: 1.0, constant: 0)
        orangeRightCenterY.isActive = true
        
        
        
        
        
    }
    
    func resizeFramingView(_ sender: UIButton) {
        var newWidth: CGFloat = 0.0
        var newHeight: CGFloat = 0.0
        if (sender == self.squareButton) {
            newWidth = 500.0
            newHeight = 500.0
        } else if (sender == self.portraitButton) {
            newWidth = 350.0
            newHeight = 550.0
        } else if (sender == self.landscapeButton) {
            newWidth = 900.0
            newHeight = 300.0
        }
        
        UIView.animate(withDuration: 2.0) {
            self.framingViewHeightConstraint.constant = newHeight
            self.framingViewWidthConstraint.constant = newWidth
            self.view.layoutIfNeeded()
        }
    }
}

