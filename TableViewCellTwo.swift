//
//  TableViewCellTwo.swift
//  SpotifyClone
//
//  Created by Preston Blake on 6/11/20.
//  Copyright © 2020 Preston. All rights reserved.
//
import UIKit

class TableViewCellTwo: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{

    var contentArr: [content] = []
           var one = content(imageView: "greenday", title: "Green Day", subtitle: "Album By GreenDay")
           var two = content(imageView: "starboy", title: "StarBoy", subtitle: "Album By The Weekend")
           var three = content(imageView: "drake", title: "More Life", subtitle: "Album By Drake")
           var four = content(imageView: "nirvana", title: "Nirvana", subtitle: "Album By Nirvan")
           var five = content(imageView: "illenium", title: "Fractures", subtitle: "Album By Illenium")
           var six = content(imageView: "skies", title: "Signs Of Jelousy", subtitle: "Album By lil Skies")
           var seven = content(imageView: "tyler", title: "FlowerBoy", subtitle: "Album By Tyler The Creator")
           var eight = content(imageView: "budgie", title: "Budgie", subtitle: "Album By Random Band")
    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.showsHorizontalScrollIndicator = false
        let layout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.minimumLineSpacing = 1
        contentArr.append(one)
        contentArr.append(two)
        contentArr.append(three)
        contentArr.append(four)
        contentArr.append(five)
        contentArr.append(six)
        contentArr.append(seven)
        contentArr.append(eight)
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return contentArr.count
    }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"collectionCellTwo", for: indexPath) as! CollectionCellTwo
        cell.artistAlbumLabel.text = contentArr[indexPath.row].title
        cell.ArtistTileLabel.text = contentArr[indexPath.row].subtitle
        cell.coverImage.image = UIImage(named: contentArr[indexPath.row].imageVieww!)
        return cell
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

