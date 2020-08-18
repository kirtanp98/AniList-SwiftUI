//
//  Network.swift
//  AniList
//
//  Created by Kirtan Patel on 7/13/20.
//
import Apollo
import CoreData
import Foundation

//Thanks to David Choi
//Apollo GraphQL and SwiftUI - https://www.youtube.com/watch?v=ZOerbQDOAgc

class Network {
    static let shared = Network()
    
    private lazy var networkTransport: HTTPNetworkTransport = {
      let transport = HTTPNetworkTransport(url: URL(string: "https://graphql.anilist.co")!)
      transport.delegate = self
      return transport
    }()
    
    private(set) lazy var apollo = ApolloClient(url: URL(string: "https://graphql.anilist.co")!)
}

extension Network: HTTPNetworkTransportPreflightDelegate {

  func networkTransport(_ networkTransport: HTTPNetworkTransport,
                          shouldSend request: URLRequest) -> Bool {
    // If there's an authenticated user, send the request. If not, don't.
    if let key = KeychainWrapper.standard.string(forKey: "authkey") {
        if !key.isEmpty {
            return true
        } else {
            return false
        }
    }
    return false
  }
  
  func networkTransport(_ networkTransport: HTTPNetworkTransport,
                        willSend request: inout URLRequest) {
                        
    // Get the existing headers, or create new ones if they're nil
    var headers = request.allHTTPHeaderFields ?? [String: String]()
    
    let key = KeychainWrapper.standard.string(forKey: "authkey")

    // Add any new headers you need
    headers["Authorization"] = "Bearer \(key!)"
    headers["Content-Type"] = "application/json"
    headers["Accept"] = "application/json"
  
    // Re-assign the updated headers to the request.
    request.allHTTPHeaderFields = headers
    
    print("Outgoing request: \(request)")
  }
}

// MARK: - Task Completed Delegate

extension Network: HTTPNetworkTransportTaskCompletedDelegate {
  func networkTransport(_ networkTransport: HTTPNetworkTransport,
                        didCompleteRawTaskForRequest request: URLRequest,
                        withData data: Data?,
                        response: URLResponse?,
                        error: Error?) {
    print("Raw task completed for request: \(request)")
                        
    if let error = error {
      print("Error: \(error)")
    }
    
    if let response = response {
      print("Response: \(response)")
    } else {
      print("No URL Response received!")
    }
    
    if let data = data {
      print("Data: \(String(describing: String(bytes: data, encoding: .utf8)))")
    } else {
      print("No data received!")
    }
  }
}

// MARK: - Retry Delegate

//extension Network: HTTPNetworkTransportRetryDelegate {
//
//  func networkTransport(_ networkTransport: HTTPNetworkTransport,
//                        receivedError error: Error,
//                        for request: URLRequest,
//                        response: URLResponse?,
//                        continueHandler: @escaping (_ action: HTTPNetworkTransport.ContinueAction) -> Void) {
//    // Check if the error and/or response you've received are something that requires authentication
//    guard UserManager.shared.requiresReAuthentication(basedOn: error, response: response) else {
//      // This is not something this application can handle, do not retry.
//      continueHandler(.fail(error))
//      return
//    }
//
//    // Attempt to re-authenticate asynchronously
//    UserManager.shared.reAuthenticate { (reAuthenticateError: Error?) in
//      // If re-authentication succeeded, try again. If it didn't, don't.
//      if let reAuthenticateError = reAuthenticateError {
//        continueHandler(.fail(reAuthenticateError)) // Will return re authenticate error to query callback
//        // or (depending what error you want to get to callback)
//        continueHandler(.fail(error)) // Will return original error
//      } else {
//        continueHandler(.retry)
//      }
//    }
//  }
//}
