//
//  ViewController.swift
//  LetTryEmbededSegue
//
//  Created by Nattapong Unaregul on 05/09/2018.
//  Copyright © 2018 Nattapong Unaregul. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {

    var firstViewController : FirstViewController?
    var secondViewController : SecondViewController?
    
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBAction func action_valueChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            firstView.isHidden = false
            secondView.isHidden = true
        }else{
            firstView.isHidden = true
            secondView.isHidden = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueFirst"
            , let destVc = segue.destination as? FirstViewController {
            firstViewController = destVc
            firstViewController?.delegate = self
        }else if segue.identifier == "segueSecond"
            , let destVc = segue.destination as? SecondViewController{
            secondViewController = destVc
            secondViewController?.delegate = self
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ContainerViewController : FirstViewControllerDelegate {
    func sendMessage(s: String) {
        secondViewController?.lb_message.text = s
    }
}

extension ContainerViewController : SecondViewControllerDelegate {
    func sendMessageFromSecond(s: String) {
        firstViewController?.lb_message.text = s
    }
}














