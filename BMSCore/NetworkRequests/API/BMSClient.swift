/*
*     Copyright 2015 IBM Corp.
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

import Foundation


public class BMSClient {
    
    
    // MARK: Constants
    
    /**
     *  The class singleton
     */
    public static let sharedInstance = BMSClient()
    
    public static let HTTP_SCHEME = "http"
    public static let HTTPS_SCHEME = "https"
    
    private static let QUERY_PARAM_SUBZONE = "subzone"
    
    
    
    // MARK: Properties (public)
    
    /**
     *  Specifies the base back-end URL
     */
    public var backendRoute: String {
        return ""
    }
    
    /**
     *  Specifies the back end application id.
     */
    public var backendGUID: String {
        return ""
    }
    
    /**
     *  Specifies default request timeout.
     */
    public var defaultRequestTimeout: Int
    
    
    
    // MARK: Properties (internal/private)
    
    var rewriteDomain: String
    
    
    
    // MARK: Initializer
    
    init() {
        defaultRequestTimeout = 20000
        rewriteDomain = ""
    }
    
    
    
    // MARK: Methods (public)
    
    /**
     *  Sets the base URL for the authorization server.
     *  <p>
     *  This method should be called before you send the first request that requires authorization.
     *  </p>
     *
     *  @param backendRoute Specifies the base URL for the authorization server
     *  @param backendGUID  Specifies the GUID of the application
     */
    public func initializeWithBackendRoute(backendRoute: String, backendGUID: String) {
        
    }
    
    /**
     *  Registers a delegate that will handle authentication for the specified realm
     *  
     *  @param authenticationDelegate Delegate that will handle authentication challenges
     *  @param realm Realm name
     */
    public func registerAuthenticationHandler() {
        
    }
    
    /**
     *  Unregisters an authentication delegate for the specified realm
     *
     *  @param realm Realm name
     */
    public func unregisterAuthenticationHandler() {
        
    }
    
}
