//
//  Backend.swift
//  Venga
//
//  Created by David Richards on 4/29/17.
//  Copyright © 2017 David Richards. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

open class Backend: NSObject {
    
    static let sharedClient = Backend()
    var headers: HTTPHeaders = HTTPHeaders()
    
    /*
    open func signupHost(stripeHost: StripeHost, completion: @escaping (Error?) -> ()) {
        NSLog("Trying to create host")
        Alamofire.request(GlobalConst.hostUrl, method: .post, parameters: stripeHost.toDict(), encoding: JSONEncoding.default, headers: self.headers).validate().responseJSON { response in
            switch response.result {
            case .success(_):
                completion(nil)
            case .failure(let error):
                NSLog(error.localizedDescription)
                completion(error)
            }
        }
    }
    
    open func reset(_
               newPassword: String,
               currentPassword: String,
               completion: @escaping (Error?) -> ()
               ){
        
        let params: Dictionary<String, String> = [
        "current_password": currentPassword,
        "new_password": newPassword
        ]
        
        Alamofire.request(GlobalConst.userResetUrl, method: .patch, parameters: params, encoding: JSONEncoding.default, headers: self.headers).validate().responseJSON { response in
            switch response.result {
            case .success(_):
               completion(nil)
            case .failure(let error):
                NSLog(error.localizedDescription)
                completion(error)
            }
        }
    }

    
    open func login(_ email: String?,
               password: String?,
               completion: @escaping (UserModel?, Error?) -> ()
        ){
        
        // initialize the param dict
        var params = Dictionary<String, String>()
        
        NSLog("Trying to login")
        
        // add the facebook token if the user logged in with facebook
        if (Realm().loginType() == "facebook") {
            if AccessToken.current != nil {
                if let token: String = AccessToken.current?.authenticationToken {
                    NSLog(token)
                    params["facebookToken"] = token
                }
            }
        }
        
        if let emailText = email, let passwordText = password {
            params["email"] = emailText
            params["password"] = passwordText
        }
        
        // make the request with custom params if they are entered
        Alamofire.request(GlobalConst.userLoginUrl, method: .post, parameters: params, encoding: JSONEncoding.default).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                
                print("Successful login")
                // set the headers for the backend api
                self.headers = ["Authorization": json["token"].stringValue]
                // save the token to the userdata store
                Realm().saveToken(json["token"].stringValue)
                
                // return the user object
                completion(UserModel(json: json), nil)
            case .failure(let error):
                NSLog(error.localizedDescription)
                completion(nil, error)
            }
            
        }
    }
    
    open func singup(firstname: String,
                lastname: String,
                email: String,
                password: String,
                completion: @escaping (Any?, Error?) -> ()
        ) {
        NSLog("Trying to singup with \(email)")
        
        let params: Dictionary<String, String> = [
            "firstname": firstname,
            "lastname": lastname,
            "email": email,
            "password": password
        ]
        
        Alamofire.request(GlobalConst.userSignupUrl, method: .post, parameters: params, encoding: JSONEncoding.default).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                // return the user object
                completion(value, nil)
            case .failure(let error):
                NSLog(error.localizedDescription)
                completion(nil, error)
            }
            
        }
        
    }
    
    open func getUser(completion: @escaping (UserModel?, Error?) -> ()) {
        // make the api request to get the user profile
        Alamofire.request(GlobalConst.userMeUrl, headers: self.headers).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                // convert to json
                let json = JSON(value)
                // return the user object
                completion(UserModel(json: json), nil)
            case .failure(let error):
                NSLog(error.localizedDescription)
                completion(nil, error)
            }
            
        }
    }
    
    open func getPresignedUrls(titles: [String], completion: @escaping ([UploadImage]?, Error?) -> ()) {
        let params: [String: Any] = [
            "titles": titles
        ]
        Alamofire.request(GlobalConst.imagesPreSignedUrls, method: .post, parameters: params, encoding: JSONEncoding.default, headers: self.headers).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                // return the user object
                let json = JSON(value)
                let uploadedImages = json.arrayValue.map { image in
                    return UploadImage(title: image["title"].stringValue, image: UIImage(), url: image["url"].stringValue, uploadUrl: image["uploadUrl"].stringValue)
                }
                completion(uploadedImages, nil)
            case .failure(let error):
                NSLog(error.localizedDescription)
                completion(nil, error)
            }
            
        }
    }
    
    open func uploadS3Images(images: [UploadImage], completion: @escaping ([Dictionary<String, String>]?, Error?) -> ()) {
        
        let myGroup = DispatchGroup()
        var uploadedImages = [Dictionary<String, String>]()
        
        for image in images {
            myGroup.enter()
            
            // For some reason the content type has to be set to empty string to get the upload to work
            Alamofire.upload(UIImageJPEGRepresentation(image.image, 1.0)!, to: image.uploadUrl, method: .put, headers: ["Content-Type": ""])
                .uploadProgress { progress in // main queue by default
                    print("Upload Progress: \(progress.fractionCompleted)")
                }.validate().responseData { response in
                debugPrint(response)
                switch response.result {
                case .success(let value):
                    myGroup.leave()
                    print("SUCCESS \(value)")
                    uploadedImages.append(["title": image.title, "url": image.url])
                case .failure(let error):
                    myGroup.leave()
                    NSLog("FAILURE \(error.localizedDescription)")
                    completion(nil, error)
                }
            }
        }
        
        
        myGroup.notify(queue: DispatchQueue.main, execute: {
            print("Finished all requests.")
            completion(uploadedImages, nil)
        })
        
    }
    */
}
