//
//  PlaceModel.swift
//  FoursquareClone
//
//  Created by Mark Santoro on 8/12/24.
//
// This file acts as a Singleton!

import Foundation
import UIKit

class PlaceModel {
    
    static let sharedInstance = PlaceModel()
    
    var placeName = ""
    var placeType = ""
    var placeAtmosphere = ""
    var placeImage = UIImage()
    var placeLatitude = ""
    var placeLongitude = ""
    
    private init(){}
    
}
