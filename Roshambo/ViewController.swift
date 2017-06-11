//
//  ViewController.swift
//  Roshambo
//
//  Created by Qichao Wang on 2017/6/10.
//  Copyright © 2017年 Qichao Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //rock:1  scissor:2  paper:3
    
    @IBOutlet weak var rock: UIButton!
    @IBOutlet weak var scissor: UIButton!
    @IBOutlet weak var paper: UIButton!
    
    
    @IBAction func userRock(){
        performSegue(withIdentifier: "segueRock", sender: self)
    }
    
    @IBAction func userScissor(){
        performSegue(withIdentifier: "segueScissor", sender: self)
    }
    
    @IBAction func userPaper(){
        performSegue(withIdentifier: "seguePaper", sender: self)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func generateAi() -> Int{
        return Int(arc4random_uniform(3)+1)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! ResultViewController
        
        if segue.identifier == "segueRock"{
            controller.user = 1
        }
        else if segue.identifier == "segueScissor"{
            controller.user = 2
        }
        else if segue.identifier == "seguePaper"{
            controller.user = 3
        }
        controller.ai = self.generateAi()

    }
}

