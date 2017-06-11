//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Qichao Wang on 2017/6/10.
//  Copyright © 2017年 Qichao Wang. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var user: Int!
    var ai: Int!
    
    @IBOutlet weak var back: UIButton!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var info: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // Do any additional setup after loading the view.
        // rock 1, scissor 2, paper 3
        print("user",user)
        print("ai",ai)
        
        switch user {
        case 1:
            if ai == 1{
                image.image = UIImage(named:"itsATie")
                info.text = "Tie"
            }
            else if ai == 2{
                image.image = UIImage(named:"RockCrushesScissors")
                info.text = "You Win"
            }
            else if ai == 3{
                image.image = UIImage(named:"PaperCoversRock")
                info.text = "You Lose"
            }
        case 2:
            if ai == 1{
                image.image = UIImage(named:"RockCrushesScissors")
                info.text = "You Lose"
            }
            else if ai == 2{
                image.image = UIImage(named:"itsATie")
                info.text = "Tie"
            }
            else if ai == 3{
                image.image = UIImage(named:"ScissorsCutPaper")
                info.text = "You Win"
            }
        case 3:
            if ai == 1{
                image.image = UIImage(named:"PaperCoversRock")
                info.text = "You Win"
            }
            else if ai == 2{
                image.image = UIImage(named:"ScissorsCutPaper")
                info.text = "You Lose"
            }
            else if ai == 3{
                image.image = UIImage(named:"itsATie")
                info.text = "Tie"
            }
        default: break
            
        }
    }

    @IBAction func backToMain(){
        performSegue(withIdentifier: "segueMain", sender: self)
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        _ = segue.destination as! ViewController
    }
    

}
