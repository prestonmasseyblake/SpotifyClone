//
//  CollectionCellTwo.swift
//  SpotifyClone
//
//  Created by Preston Blake on 6/11/20.
//  Copyright © 2020 Preston. All rights reserved.
//

import UIKit

class CollectionCellTwo: UICollectionViewCell {
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var ArtistTileLabel: UILabel!
    @IBOutlet weak var artistAlbumLabel: UILabel!
    
    var contentBuild: content?
    override func awakeFromNib() {
        super.awakeFromNib()
        coverImage.image = UIImage(named:"\(contentBuild?.imageVieww! ?? "youngThugAlbum")")
        ArtistTileLabel.text = contentBuild?.title ?? "Facts"
        artistAlbumLabel.text = contentBuild?.subtitle ?? "Artist title Label"
        
    }
}
