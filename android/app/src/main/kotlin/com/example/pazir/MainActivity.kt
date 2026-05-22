package com.pazaizla.aozlida

import io.flutter.embedding.android.FlutterActivity
import com.google.firebase.messaging.FirebaseMessaging
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import android.provider.Settings

class MainActivity: FlutterActivity() {
    private val CHANNEL = "getPushTokenChannel" //原生通道名称
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            //原生通道方法
            if (call.method == "getPushToken") {
                FirebaseMessaging.getInstance().token
                    .addOnCompleteListener { task ->
                        if (task.isSuccessful) {
                            result.success(task.result)
                        } else {
                            result.success("")
                        }
                    }
            } else {
                result.notImplemented()
            }
        }
    }
}