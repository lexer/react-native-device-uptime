package com.reactnativedeviceuptime

import android.os.SystemClock
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.bridge.ReactContextBaseJavaModule
import com.facebook.react.bridge.ReactMethod

class DeviceUptimeModule(reactContext: ReactApplicationContext) : ReactContextBaseJavaModule(reactContext) {

    override fun getName(): String {
        return "DeviceUptime"
    }

    @ReactMethod(isBlockingSynchronousMethod = true)
    fun Int getUptime() {
      return SystemClock.elapsedRealtime()
    }


}
