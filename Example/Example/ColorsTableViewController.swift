//
//  ColorsTableViewController.swift
//  Example
//
//  Created by Jeswin Simon on 21/04/16.
//  Copyright © 2016 Jeswin Simon. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {
    
    // MARK: Attributes
    
    let reuseIdentifier = "ColorTableViewCell"
    
    let blackColor = CSSColor(colorName: "black", color: UIColor.blackCSSColor())
    let silverColor = CSSColor(colorName: "silver", color: UIColor.silverCSSColor())
    let grayColor = CSSColor(colorName: "gray", color: UIColor.grayCSSColor())
    let whiteColor = CSSColor(colorName: "white", color: UIColor.whiteCSSColor())
    let maroonColor = CSSColor(colorName: "maroon", color: UIColor.maroonCSSColor())
    let redColor = CSSColor(colorName: "red", color: UIColor.redCSSColor())
    let purpleColor = CSSColor(colorName: "purple", color: UIColor.purpleCSSColor())
    let fuchsiaColor = CSSColor(colorName: "fuchsia", color: UIColor.fuchsiaCSSColor())
    let greenColor = CSSColor(colorName: "green", color: UIColor.greenCSSColor())
    let limeColor = CSSColor(colorName: "lime", color: UIColor.limeCSSColor())
    let oliveColor = CSSColor(colorName: "olive", color: UIColor.oliveCSSColor())
    let yellowColor = CSSColor(colorName: "yellow", color: UIColor.yellowCSSColor())
    let navyColor = CSSColor(colorName: "navy", color: UIColor.navyCSSColor())
    let blueColor = CSSColor(colorName: "blue", color: UIColor.blueCSSColor())
    let tealColor = CSSColor(colorName: "teal", color: UIColor.tealCSSColor())
    let aquaColor = CSSColor(colorName: "aqua", color: UIColor.aquaCSSColor())
    
    var basicColors = [CSSColor]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        basicColors += [ blackColor,
                         silverColor,
                         grayColor,
                         whiteColor,
                         maroonColor,
                         redColor,
                         purpleColor,
                         fuchsiaColor,
                         greenColor,
                         limeColor,
                         oliveColor,
                         yellowColor,
                         navyColor,
                         blueColor,
                         tealColor,
                         aquaColor ]
        
        self.tableView.reloadData();
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return basicColors.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(reuseIdentifier, forIndexPath: indexPath)
        
        let selectedColor = basicColors[indexPath.row]
        
        cell.backgroundColor = selectedColor.color
        cell.textLabel?.text = selectedColor.colorName
        cell.textLabel?.textColor = getTextColor(selectedColor.color)
        
        return cell
    }
    
    // MARK: Private Methods
    
    // RGB to Gray conversion formula -> http://stackoverflow.com/questions/946544/good-text-foreground-color-for-a-given-background-color/946734#946734
    func getTextColor(backgroundColor: UIColor) -> UIColor {
        var red: CGFloat = 0.0
        var green: CGFloat = 0.0
        var blue: CGFloat = 0.0
        var alpha: CGFloat = 0.0
        
        backgroundColor.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        let colorIntensity = (red * 255 * 0.299 + green * 255 * 0.578 + blue * 255 * 0.114)
        
        if (colorIntensity > 186) {
            return UIColor.blackCSSColor()
        }
        else {
            return UIColor.whiteCSSColor()
        }
    }
    
}
