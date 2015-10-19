//
//  FunnyAnimalsTableViewController.swift
//  UIStackViewDemo-1
//
//  Created by Michal Pyrka on 26/09/15.
//  Copyright © 2015 Droids On Roids. All rights reserved.
//

import UIKit

class FunnyAnimalsTableViewController: UITableViewController {
    
    var animalsCollection: [FunnyAnimalsCollection] = [FunnyDogsCollection(), FunnyCatsCollection(), FunnyLlamasCollection()]

    @IBAction func addNewCollectionTapped(sender: UIBarButtonItem) {
        var allCollections: [FunnyAnimalsCollection] = [FunnyDogsCollection(), FunnyCatsCollection(), FunnyLlamasCollection()]
        var newCollection = allCollections[random() % allCollections.count]
        newCollection.isNew = true
        animalsCollection.append(newCollection)
        self.tableView.reloadData()
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    }

    @IBAction func showMoreTapped(sender: UIButton) {
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalsCollection.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("FunnyAnimalCollectionCell", forIndexPath: indexPath) as! AnimalsCollectionCell
        let collection = animalsCollection[indexPath.row]
        cell.thumbnailImageView.image = collection.thumbnailPhoto
        cell.nameLabel.text = collection.name
        cell.isNewLabel.hidden = !collection.isNew
        cell.descriptionLabel.text = collection.collectionDescription
        
        return cell
    }
}

extension UITableView {
    func cellWithSubview(cellSubview: UIView) -> AnimalsCollectionCell? {
        let cellFrame = convertRect(cellSubview.bounds, fromView: cellSubview)
        let cellCenter = CGPoint(x: CGRectGetMidX(cellFrame), y: CGRectGetMidY(cellFrame))
        if let indexPath = indexPathForRowAtPoint(cellCenter), let cell = self.cellForRowAtIndexPath(indexPath) as? AnimalsCollectionCell {
            return cell
        }
        
        return nil
    }
}
