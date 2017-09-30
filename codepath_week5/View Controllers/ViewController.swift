//
//  ViewController.swift
//  codepath_week5
//
//  Created by Jaehee Chung on 9/27/17.
//  Copyright © 2017 Jaehee Chung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet var actionView: ActionView!
	fileprivate let colors = [UIColor.red, UIColor.black, UIColor.white, UIColor.orange, UIColor.green]
	override func viewDidLoad() {
		super.viewDidLoad()
		
		actionView.prepare(with: "Change my color", actionTitle: "Ok") {
			let randomIndex = Int(arc4random_uniform(4))
			self.view.backgroundColor = self.colors[randomIndex]
		}
	}


}

