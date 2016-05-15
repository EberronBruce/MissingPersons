//
//  FaceService.swift
//  MissingPersons
//
//  Created by Bruce Burgess on 5/15/16.
//  Copyright © 2016 Red Raven Computing Studios. All rights reserved.
//

import Foundation
import ProjectOxfordFace

class FaceService {
    static let instance = FaceService()
    
    let client = MPOFaceServiceClient(subscriptionKey: "14224c6dd28c427eb4cebad65268ad50")
}