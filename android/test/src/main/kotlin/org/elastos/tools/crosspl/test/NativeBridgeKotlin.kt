package org.elastos.tools.crosspl.test

import android.util.Log
import org.elastos.tools.crosspl.annotation.NativeInterface
import org.elastos.tools.crosspl.NativeBase
import org.elastos.tools.crosspl.Utils

open class NativeBridgeKotlin private constructor() {
    open class Test1 : NativeBase {
        constructor() : super()
        constructor(nativeHandle: Long) : super(nativeHandle)

        @NativeInterface
        fun testRun(input: Int) : Int{
            Log.i(Utils.TAG, Test1::class.java.name + ".testRun() called. input = " + input);
            return 0;
        }
    }
}
