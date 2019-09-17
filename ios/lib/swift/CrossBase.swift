import Foundation

/* @CrossClass */
@objc open class CrossBase : NSObject {
  public init(className: String? = nil, nativeHandle: Int64 = 0) {
    CrossBase.initializer
    
    if className != nil {
      self.className = className!
    } else {
      self.className = String(describing: type(of: self))
    }
    self.nativeHandle = nativeHandle

    if(self.nativeHandle == 0) {
      self.nativeHandle = CrossBase.CreateNativeObject(swiftClassName: self.className)
    }
  }
  
  deinit {
    CrossBase.DestroyNativeObject(swiftClassName: self.className, nativeHandle: self.nativeHandle)
  }
  
  func bind() {
    bindPlatformHandle(thisObj: self)
  }
  
  func unbind() {
    unbindPlatformHandle(thisObj: self)
  }
  
  private let className: String
  private var nativeHandle: Int64

  private static let initializer: Void = {
    crosspl_Factory_OnLoad()
  }()
  
  /* @CrossNativeInterface */
  private static func CreateNativeObject(swiftClassName: String) -> Int64{
    return crosspl_Proxy_CrossBase_CreateNativeObject(swiftClassName)
//    return 0
  }
  
  /* @CrossNativeInterface */
  private static func DestroyNativeObject(swiftClassName: String, nativeHandle: Int64) {
    crosspl_Proxy_CrossBase_DestroyNativeObject(swiftClassName, nativeHandle)
//    return
  }
  
  /* @CrossNativeInterface */
  private func bindPlatformHandle(thisObj: CrossBase) {
    crosspl_Proxy_CrossBase_bindPlatformHandle(nativeHandle, thisObj)
  }
  
  /* @CrossNativeInterface */
  private func unbindPlatformHandle(thisObj: CrossBase) {
    crosspl_Proxy_CrossBase_unbindPlatformHandle(nativeHandle, thisObj)
  }
}