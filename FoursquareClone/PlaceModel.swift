//
//  PlaceModel.swift
//  FoursquareClone
//
//  Created by Mark Santoro on 8/12/24.
//

import Foundation
import UIKit

class PlaceModel {
    
    static let sharedInstance = PlaceModel()
    
    var placeName = ""
    var placeType = ""
    var placeAtmosphere = ""
    var placeImage = UIImage()
    
    private init(){}
    
}
