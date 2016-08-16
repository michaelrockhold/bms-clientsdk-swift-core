/*
*     Copyright 2016 IBM Corp.
*     Licensed under the Apache License, Version 2.0 (the "License");
*     you may not use this file except in compliance with the License.
*     You may obtain a copy of the License at
*     http://www.apache.org/licenses/LICENSE-2.0
*     Unless required by applicable law or agreed to in writing, software
*     distributed under the License is distributed on an "AS IS" BASIS,
*     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*     See the License for the specific language governing permissions and
*     limitations under the License.
*/


/// Callback for data tasks invoked by BmsUrlSession
public typealias BMSDataTaskCompletionHandler = (NSData?, NSURLResponse?, NSError?) -> Void


// Custom wrapper for NSURLSession task completion handlers
// Uses AuthorizationManager from the BMSSecurity framework to handle network requests to MCA protected backends
internal struct BMSUrlSessionCompletionHandler {
    
    
    // Required to hook in challenge handling via AuthorizationManager
    static func from(completionHandler: BMSDataTaskCompletionHandler, urlSession: NSURLSession, request: NSURLRequest) -> BMSDataTaskCompletionHandler {
        
        return { (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
            
            completionHandler(data, response, error)
        }
    }
}