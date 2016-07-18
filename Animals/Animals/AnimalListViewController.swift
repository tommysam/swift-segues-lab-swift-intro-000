//
//  ViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalListViewController: UITableViewController {
    let animals = [
        "Dog",
        "Cat",
        "Mouse",
        "Hamster",
        "Bunny",
        "Panda",
        "Lion",
        "Pig",
        "Frog",
        "Octopus",
    ]

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("AnimalCell", forIndexPath: indexPath)
        let animal = animals[indexPath.row]
        cell.textLabel?.text = animal
        return cell
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier != "AnimalDetailView" { return }
        if let dest = segue.destinationViewController as? AnimalViewController,
               indexPath = tableView.indexPathForSelectedRow {
            dest.animal = animals[indexPath.row]
        }
    }
}
