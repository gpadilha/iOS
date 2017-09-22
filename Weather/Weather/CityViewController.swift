//
//  CityViewController.swift
//  Weather
//
//  Created by Guilherme Maia on 2017-09-21.
//  Copyright © 2017 gpadilha. All rights reserved.
//

import UIKit

class CityViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let buttonDetails = UIButton(frame: .init(x: 80, y: 300, width: 200, height: 50))
        buttonDetails.setTitle("Show details", for: .normal)
        buttonDetails.backgroundColor = UIColor.green
        buttonDetails.addTarget(self, action: #selector(showWeatherDetails), for: .touchUpInside)
        
        view.addSubview(buttonDetails)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showWeatherDetails(){
        let details = DetailedViewController()
         self.navigationController?.pushViewController(details, animated: true)
        
    }


}

