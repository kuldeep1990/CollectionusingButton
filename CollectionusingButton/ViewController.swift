//
//  ViewController.swift
//  CollectionusingButton
//
//  Created by KULDEP KUMAR PRAJAPATI on 30/08/20.
//  Copyright © 2020 KULDEP KUMAR PRAJAPATI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnapple: UIButton!
    @IBOutlet var btnApple: [UIButton]!
    
    
    
    //    @IBOutlet weak var btnTortoise: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnapple.isSelected = false
    }
    
    
    
    @IBAction func multipleButtonTaped(_ sender: UIButton) {
        _ = btnApple.map{ $0.isSelected = false }
        
        print("tag value",sender.tag)
        
//        below method are  same
//        btnApple.forEach{
//            $0.isSelected = false
//        }
        
//        we can use same the below method
//        for btn in btnApple{
//            btn.isSelected = false
//        }
        
        
//        if sender.tag == 1{
//            apple()
//        }else if sender.tag == 2{
//            chat()
//        }else if sender.tag == 3{
//            home()
//        }else if sender.tag == 4{
//            delete()
//        }
        
//        _ = sender.tag == 1 ? apple() : sender.tag == 2 ? chat() : sender.tag == 3 ? home() : delete()
        
        switch sender.tag {
        case 1:
            apple()
            case 2:
            chat()
            case 3:
            home()
            case 4:
            delete()
        default:
            
            print("😃😃😃😃😃😃")
        }
        
        sender.isSelected.toggle()
    }
    
    func apple(){
        print("apple")
    }
    
    func chat(){
        print("chat")
    }
    
    func home(){
        print("home")
    }
    
    func delete(){
        print("delete")
    }
}

