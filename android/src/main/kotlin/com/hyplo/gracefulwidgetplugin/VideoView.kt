package com.hyplo.gracefulwidgetplugin_example

import android.content.Context
import android.net.Uri
import android.view.LayoutInflater
import android.view.View
import com.hyplo.gracefulwidgetplugin.R
import fm.jiecao.jcvideoplayer_lib.JCVideoPlayerStandard
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.PluginRegistry
import io.flutter.plugin.platform.PlatformView

class VideoView internal constructor(context: Context?, viewId: Int, args: Any, registrar: PluginRegistry.Registrar) : PlatformView, MethodChannel.MethodCallHandler {
    private  val  jcVideoPlayerStandard :JCVideoPlayerStandard

    private val methodChannel: MethodChannel
    private val registrar: PluginRegistry.Registrar
    override fun getView(): View {
        return jcVideoPlayerStandard
    }

    override fun onMethodCall(methodCall: MethodCall, result: MethodChannel.Result) {
        when (methodCall.method) {
            "loadUrl" -> {
                val url = methodCall.arguments.toString()

                jcVideoPlayerStandard.setUp(url
                        , JCVideoPlayerStandard.SCREEN_LAYOUT_NORMAL, "视频显示")
//                jcVideoPlayerStandard.thumbImageView.setImageURI(Uri.parse("http://p.qpic.cn/videoyun/0/2449_43b6f696980311e59ed467f22794e792_1/640"))
//                jzvdStd.setUp(, "", Jzvd.SCREEN_NORMAL)
            }
            else -> result.notImplemented()
        }
    }

    override fun dispose() {}
    private fun getJzvStd(registrar: PluginRegistry.Registrar, args: Any): JCVideoPlayerStandard {
        return LayoutInflater.from(registrar.activity()).inflate(R.layout.video_show, null) as JCVideoPlayerStandard
    }

    init {
        this.registrar = registrar
        jcVideoPlayerStandard = getJzvStd(registrar, args)
        methodChannel = MethodChannel(registrar.messenger(), "")
        methodChannel.setMethodCallHandler(this)
    }
}