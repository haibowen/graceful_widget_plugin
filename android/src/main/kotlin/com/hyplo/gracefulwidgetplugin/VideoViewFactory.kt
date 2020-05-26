package com.hyplo.gracefulwidgetplugin

import android.annotation.TargetApi
import android.content.Context
import android.os.Build
import android.view.View
import android.widget.VideoView
import io.flutter.plugin.common.PluginRegistry
import io.flutter.plugin.common.StandardMessageCodec
import io.flutter.plugin.platform.PlatformView
import io.flutter.plugin.platform.PlatformViewFactory

class VideoViewFactory(registrar: PluginRegistry.Registrar) : PlatformViewFactory(StandardMessageCodec.INSTANCE) {
    private val registrar: PluginRegistry.Registrar
    @TargetApi(Build.VERSION_CODES.LOLLIPOP)
    override fun create(context: Context?, viewId: Int, args: Any?): PlatformView {
        return args?.let { com.hyplo.gracefulwidgetplugin_example.VideoView(context, viewId, it, registrar) }!!
    }

    init {
        this.registrar = registrar
    }
}
