//
//  ViewController.swift
//  animated
//
//  Created by Student-001 on 26/10/18.
//  Copyright © 2018 ra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func animatedball(_ sender: UIButton) {
        switch sender.tag
         {
        
    
        case 102: animateNorth()
        
        case 104: animateWest()
        
        case 106: animateEast()
        case 108: animateSouth()
        case 109:animateSouthEast()
        default: stayATCenter()
            
        }
    }
    func stayATCenter()
    {
        ballImage.center = view.center
    }
    func animateNorth()
    {
        UIView.animate(withDuration: 0.5, delay: 0,options: .curveEaseIn,animations: {
            self.ballImage.frame = CGRect(x: self.ballImage.frame.origin.x, y: self.ballImage.frame.origin.y - 50, width: self.ballImage.frame.size.width, height: self.ballImage.frame.size.height)
        },completion:{(true)  in
        print("north animation completed")
    })
    }
    func animateWest()
    {
        UIView.animate(withDuration: 0.5, delay: 0,options: .curveEaseIn,animations: {
            self.ballImage.frame = CGRect(x: self.ballImage.frame.origin.x - 50, y: self.ballImage.frame.origin.y, width: self.ballImage.frame.size.width, height: self.ballImage.frame.size.height)
        },completion:{(true)  in
            print("west animation completed")
        })
    }
    func animateEast()
    {
        UIView.animate(withDuration: 0.5, delay: 0,options: .curveEaseIn,animations: {
            self.ballImage.frame = CGRect(x: self.ballImage.frame.origin.x + 50, y: self.ballImage.frame.origin.y, width: self.ballImage.frame.size.width, height: self.ballImage.frame.size.height)
        },completion:{(true)  in
            print("east animation completed")
        })
    }
    func animateSouth()
    {
        UIView.animate(withDuration: 0.5, delay: 0,options: .curveEaseIn,animations: {
            self.ballImage.frame = CGRect(x: self.ballImage.frame.origin.x, y: self.ballImage.frame.origin.y + 50, width: self.ballImage.frame.size.width, height: self.ballImage.frame.size.height)
        },completion:{(true)  in
            print("south animation completed")
        })
    }
    func  animateSouthEast()
    {
        UIView.animate(withDuration: 0.5, delay: 0,options: .curveEaseIn,animations: {
            self.ballImage.frame = CGRect(x: self.ballImage.frame.origin.x + 50, y: self.ballImage.frame.origin.y + 50, width: self.ballImage.frame.size.width, height: self.ballImage.frame.size.height)
        },completion:{(true)  in
            print("south east animation completed")
        })
    }
    
    @IBOutlet weak var ballImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


