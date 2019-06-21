//
//  Sub2ViewController.swift
//  HelloWorld
//
//  Created by matsumoto on 2019/06/14.
//  Copyright © 2019 zyyx. All rights reserved.
//

import UIKit

class Sub2ViewController: UIViewController {

    @IBOutlet weak var targetView: UIView!
    @IBAction func onTapStart(_ sender: Any) {
        let animation = CABasicAnimation(keyPath: "cornerRadius")
        
        animation.timingFunction = CAMediaTimingFunction(
            name: CAMediaTimingFunctionName.default)
        
        animation.fromValue = 0
        animation.toValue = 20
        
        animation.duration = 1
        
        targetView.layer.add(animation, forKey: "cornerRadius")
        targetView.layer.cornerRadius = 20
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
