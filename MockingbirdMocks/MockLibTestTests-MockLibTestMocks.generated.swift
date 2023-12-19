//
//  MockLibTestTests-MockLibTestMocks.generated.swift
//  MockLibTest
//
//  Generated by Mockingbird v0.20.0.
//  DO NOT EDIT
//

@testable import MockLibTest
@testable import Mockingbird
import Foundation
import Swift
import SwiftUI

private let mkbGenericStaticMockContext = Mockingbird.GenericStaticMockContext()

// MARK: - Mocked MockTwoProtocol
public final class MockTwoProtocolMock: MockLibTest.MockTwoProtocol, Mockingbird.Mock {
  typealias MockingbirdSupertype = MockLibTest.MockTwoProtocol
  public static let mockingbirdContext = Mockingbird.Context()
  public let mockingbirdContext = Mockingbird.Context(["generator_version": "0.20.0", "module_name": "MockLibTest"])

  fileprivate init(sourceLocation: Mockingbird.SourceLocation) {
    self.mockingbirdContext.sourceLocation = sourceLocation
    MockTwoProtocolMock.mockingbirdContext.sourceLocation = sourceLocation
  }

  // MARK: Mocked `canWalk`()
  public func `canWalk`() -> Bool {
    return self.mockingbirdContext.mocking.didInvoke(Mockingbird.SwiftInvocation(selectorName: "`canWalk`() -> Bool", selectorType: Mockingbird.SelectorType.method, arguments: [], returnType: Swift.ObjectIdentifier((Bool).self))) {
      self.mockingbirdContext.recordInvocation($0)
      let mkbImpl = self.mockingbirdContext.stubbing.implementation(for: $0)
      if let mkbImpl = mkbImpl as? () -> Bool { return mkbImpl() }
      for mkbTargetBox in self.mockingbirdContext.proxy.targets(for: $0) {
        switch mkbTargetBox.target {
        case .super:
          break
        case .object(let mkbObject):
          guard var mkbObject = mkbObject as? MockingbirdSupertype else { break }
          let mkbValue: Bool = mkbObject.`canWalk`()
          self.mockingbirdContext.proxy.updateTarget(&mkbObject, in: mkbTargetBox)
          return mkbValue
        }
      }
      if let mkbValue = self.mockingbirdContext.stubbing.defaultValueProvider.value.provideValue(for: (Bool).self) { return mkbValue }
      self.mockingbirdContext.stubbing.failTest(for: $0, at: self.mockingbirdContext.sourceLocation)
    }
  }

  public func `canWalk`() -> Mockingbird.Mockable<Mockingbird.FunctionDeclaration, () -> Bool, Bool> {
    return Mockingbird.Mockable<Mockingbird.FunctionDeclaration, () -> Bool, Bool>(context: self.mockingbirdContext, invocation: Mockingbird.SwiftInvocation(selectorName: "`canWalk`() -> Bool", selectorType: Mockingbird.SelectorType.method, arguments: [], returnType: Swift.ObjectIdentifier((Bool).self)))
  }

  // MARK: Mocked `canJump`()
  public func `canJump`() -> Void {
    return self.mockingbirdContext.mocking.didInvoke(Mockingbird.SwiftInvocation(selectorName: "`canJump`() -> Void", selectorType: Mockingbird.SelectorType.method, arguments: [], returnType: Swift.ObjectIdentifier((Void).self))) {
      self.mockingbirdContext.recordInvocation($0)
      let mkbImpl = self.mockingbirdContext.stubbing.implementation(for: $0)
      if let mkbImpl = mkbImpl as? () -> Void { return mkbImpl() }
      for mkbTargetBox in self.mockingbirdContext.proxy.targets(for: $0) {
        switch mkbTargetBox.target {
        case .super:
          break
        case .object(let mkbObject):
          guard var mkbObject = mkbObject as? MockingbirdSupertype else { break }
          let mkbValue: Void = mkbObject.`canJump`()
          self.mockingbirdContext.proxy.updateTarget(&mkbObject, in: mkbTargetBox)
          return mkbValue
        }
      }
      if let mkbValue = self.mockingbirdContext.stubbing.defaultValueProvider.value.provideValue(for: (Void).self) { return mkbValue }
      self.mockingbirdContext.stubbing.failTest(for: $0, at: self.mockingbirdContext.sourceLocation)
    }
  }

  public func `canJump`() -> Mockingbird.Mockable<Mockingbird.FunctionDeclaration, () -> Void, Void> {
    return Mockingbird.Mockable<Mockingbird.FunctionDeclaration, () -> Void, Void>(context: self.mockingbirdContext, invocation: Mockingbird.SwiftInvocation(selectorName: "`canJump`() -> Void", selectorType: Mockingbird.SelectorType.method, arguments: [], returnType: Swift.ObjectIdentifier((Void).self)))
  }
}

/// Returns a concrete mock of `MockTwoProtocol`.
public func mock(_ type: MockLibTest.MockTwoProtocol.Protocol, file: StaticString = #file, line: UInt = #line) -> MockTwoProtocolMock {
  return MockTwoProtocolMock(sourceLocation: Mockingbird.SourceLocation(file, line))
}
