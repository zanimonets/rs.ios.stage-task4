import Foundation

final class CallStation {
    var registeredUsers = Set<User>()
    var allCalls = Set<Call>()
}

extension CallStation: Station {
    func users() -> [User] {
        registeredUsers.map{$0}
    }
    
    func add(user: User) {
        registeredUsers.insert(user)
    }
    
    func remove(user: User) {
        registeredUsers.remove(user)
    }
    
    func execute(action: CallAction) -> CallID? {
        nil
    }
    
    func calls() -> [Call] {
        allCalls.map{$0}
    }
    
    func calls(user: User) -> [Call] {
        []
    }
    
    func call(id: CallID) -> Call? {
        nil
    }
    
    func currentCall(user: User) -> Call? {
        nil
    }
}
