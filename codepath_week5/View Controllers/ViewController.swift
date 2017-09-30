//
//  ViewController.swift
//  codepath_week5
//
//  Created by Jaehee Chung on 9/27/17.
//  Copyright © 2017 Jaehee Chung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	fileprivate var actionView: ActionView!
	fileprivate let colors = [UIColor.orange, UIColor.white, UIColor.green, UIColor.brown, UIColor.red]
	override func viewDidLoad() {
		super.viewDidLoad()
		
		actionView = ActionView(frame: CGRect(x: 60, y: 60, width: view.bounds.width - 120, height: 150))
		actionView.prepare(with: "Change my color", actionTitle: "Ok") {
			let randIndex = Int(arc4random_uniform(5))
			self.view.backgroundColor = self.colors[randIndex]
		}
		view.addSubview(actionView)
		
	}
}

