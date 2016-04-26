//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

// First, we will define a custom view controller named ViewController that
// is a sub-class of UIViewController
class ViewController : UIViewController {
    
    
    
    // This method runs when the superview loads
    override func viewDidLoad() {
        
        // Sub-classes of UIViewController must invoke the superclass method viewDidLoad in their
        // own version of viewDidLoad()
        super.viewDidLoad()
        
        // Make the view's background be gray
        view.backgroundColor = .cyanColor()
        
        /*
         * Create the switch object
         */
        
        
        /*
         * Create and position the label
         */
        let title = UILabel()
        let amount = UILabel()
        let thePercentge = UILabel()
        let total = UILabel()
        let userAmount = UITextField()
        let calc = UIButton()
        
        //    let myLabel2 = UILabel()
        // Set the label text and appearance
        title.text = "Tip Calculator"
        title.font = UIFont.boldSystemFontOfSize(36)
        
        amount.text = "Amount"
        amount.font = UIFont.systemFontOfSize(24)
        
        thePercentge.text = "Percentage Tip"
        thePercentge.font = UIFont.systemFontOfSize(24)
        
        
        total.text = "Total"
        total.font = UIFont.systemFontOfSize(24)
        
        //calc.text = ""
        
        
        
        // Required to autolayout this label
        title.translatesAutoresizingMaskIntoConstraints = false
        
        amount.translatesAutoresizingMaskIntoConstraints = false
        
        thePercentge.translatesAutoresizingMaskIntoConstraints = false
        
        total.translatesAutoresizingMaskIntoConstraints = false
        
        userAmount.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        // Add the label to the superview
        view.addSubview(title)
        view.addSubview(amount)
        view.addSubview(thePercentge)
        view.addSubview(total)
        
        /*
         * Layout all the interface elements
         */
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        // Create an empty list of constraints
        var allConstraints = [NSLayoutConstraint]()
        
        // Create a dictionary of views that will be used in the layout constraints defined below
        let viewsDictionary : [String : AnyObject] = ["title": title, "amount": amount, "percentage": thePercentge, "total": total, "useramount":userAmount]
        
        // Define the vertical constraints
        let verticalConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "V:[title][amount][percentage][total]",
            options: [],
            metrics: nil,
            views: viewsDictionary)
        
        // Add the vertical constraints to the list of constraints
        allConstraints += verticalConstraints
        
        // Define the horizontal constraints
        let horizontalConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "H:[title]",
            options: [],
            metrics: nil,
            views: viewsDictionary)
        
        // Add the vertical constraints to the list of constraints
        allConstraints += horizontalConstraints
        
        // Activate all defined constraints
        NSLayoutConstraint.activateConstraints(allConstraints)
        
    }
}

// Embed the view controller in the live view for the current playground page
XCPlaygroundPage.currentPage.liveView = ViewController()
XCPlaygroundPage.currentPage.needsIndefiniteExecution = true
