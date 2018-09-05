//
//  SecondViewController.swift
//  LetTryEmbededSegue
//
//  Created by Nattapong Unaregul on 05/09/2018.
//  Copyright © 2018 Nattapong Unaregul. All rights reserved.
//

import UIKit

protocol SecondViewControllerDelegate : AnyObject {
    func sendMessageFromSecond(s : String)
}

class SecondViewController: UIViewController {
    weak var delegate : SecondViewControllerDelegate?
    @IBAction func sendMessage(_ sender: Any) {
        delegate?.sendMessageFromSecond(s: "HERE IS A MESSAGE FROM VIEW 2")
    }
    @IBOutlet weak var lb_message: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
