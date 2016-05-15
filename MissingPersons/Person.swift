//
//  Person.swift
//  MissingPersons
//
//  Created by Bruce Burgess on 5/15/16.
//  Copyright © 2016 Red Raven Computing Studios. All rights reserved.
//

import UIKit
import ProjectOxfordFace

class Person {
    var faceId: String?
    var personImage: UIImage?
    var personImageUrl: String?
    
    init(personImageUrl: String) {
        self.personImageUrl = personImageUrl
    }
    
    func downloadFaceId() {
        if let img  = personImage, let imgData = UIImageJPEGRepresentation(img, 0.8) {
            FaceService.instance.client.detectWithData(imgData, returnFaceId: true, returnFaceLandmarks: false, returnFaceAttributes: nil, completionBlock: { (faces:[MPOFace]!, err:NSError!) in
                
                if err == nil {
                    var faceId: String?
                    for face in faces {
                        faceId = face.faceId
                        print("Face Id: \(faceId)")
                        break
                    }
                    
                    self.faceId = faceId
                    
                }
                
            })
        }
    }
}
