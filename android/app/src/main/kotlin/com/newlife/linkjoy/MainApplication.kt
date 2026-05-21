package com.newlife.linkjoy

import io.flutter.app.FlutterApplication

class MainApplication : FlutterApplication() {

    override fun onCreate() {
        super.onCreate()
        CrashHandler.instance.initialize(this)
    }
}
