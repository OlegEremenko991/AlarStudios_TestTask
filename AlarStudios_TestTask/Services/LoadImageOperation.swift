//
//  LoadOperation.swift
//  AlarStudios_TestTask
//
//  Created by Олег Еременко on 10.10.2020.
//

import UIKit

public final class LoadImageOperation: Operation {
    var url: URL?
    var imageView: CustomImageView?
    
    public override func main() {
        guard let url = url else { return }
        imageView?.loadImage(from: url)
    }
}
