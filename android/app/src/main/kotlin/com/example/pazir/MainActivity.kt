package com.pazaizla.aozlida

import io.flutter.embedding.android.FlutterActivity
import com.google.firebase.messaging.FirebaseMessaging
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import android.provider.Settings
import com.pichillilorenzo.flutter_inappwebview_android.InAppWebViewFlutterPlugin
import androidx.webkit.WebSettingsCompat
import androidx.webkit.WebViewFeature

class MainActivity: FlutterActivity() {
    private val CHANNEL = "getPushTokenChannel" 
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            
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
            
            if (call.method == "enableGooglePayInWebView") {
                val enabled = enableGooglePayInWebView(flutterEngine)
                result.success(enabled)
            }
        }
    }

    private fun enableGooglePayInWebView(flutterEngine: FlutterEngine): Boolean {
        if (!WebViewFeature.isFeatureSupported(WebViewFeature.PAYMENT_REQUEST)) {
            return false
        }

        val plugin = flutterEngine.plugins.get(InAppWebViewFlutterPlugin::class.java) as? InAppWebViewFlutterPlugin
            ?: return false
        val webViews = plugin.inAppWebViewManager?.keepAliveWebViews?.values ?: return false
        var enabled = false

        for (flutterWebView in webViews) {
            val webView = flutterWebView?.webView ?: continue
            WebSettingsCompat.setPaymentRequestEnabled(webView.settings, true)
            enabled = true
        }

        return enabled
    }
}