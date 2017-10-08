//
//  ActionView.swift
//  codepath_week5
//
//  Created by Jaehee Chung on 9/29/17.
//  Copyright © 2017 Jaehee Chung. All rights reserved.
//

import UIKit

class ActionView: UIView {

	@IBOutlet var contentView: UIView!
	@IBOutlet var title: UILabel!
	@IBOutlet var actionButton: UIButton!
	
	fileprivate var action: () -> Void = { }
	
	@IBAction func actionTapped(_ sender: Any) {
		action()
	}
	
	//Needed for using this view in storyboards
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		initSubviews()
	}
	
	//Needed for using this view programmatically
	override init(frame: CGRect) {
		super.init(frame: frame)
		initSubviews()
	}
	
	fileprivate func initSubviews() {
		// standard initialization logic
		let nib = UINib(nibName: "ActionView", bundle: nil)
		nib.instantiate(withOwner: self, options: nil)
		contentView.frame = bounds
		addSubview(contentView)
	}
	
	func prepare(with title: String?, actionTitle: String?, action: @escaping () -> Void) {
		self.title.text = title
		self.actionButton.setTitle(actionTitle, for: .normal)
		self.action = action
	}

}
