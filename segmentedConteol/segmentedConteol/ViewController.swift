//
//  ViewController.swift
//  segmentedConteol
//
//  Created by Nicholas McGinnis on 7/5/21.
//

import UIKit

class ViewController: UIViewController {

	// Outlets from storyboard
	@IBOutlet weak var segmentedControl: UISegmentedControl!
	@IBOutlet weak var textLabel: UILabel!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		// Enables first position of segment control
		segmentedControl.setEnabled(true, forSegmentAt: 0)
		// Gives label initial text
		textLabel.text = "First segment"
	}

	// Changes label text based on which segment of the segmented control is selected.
	@IBAction func indexChanged(_ sender: Any) {
		switch segmentedControl.selectedSegmentIndex {
		case 0:
			textLabel.text = "First Segment"
		case 1:
			textLabel.text = "Number 2"
		default:
			break
		}
	}
	
}

