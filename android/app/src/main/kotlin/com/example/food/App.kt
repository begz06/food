package com.example.food
import android.app.Application
import com.yandex.mapkit.MapKitFactory

class App :  Application() {
    override fun onCreate() {
        super.onCreate()
        MapKitFactory.setLocale("ru_RU") // Your preferred language. Not required, defaults to system language
        MapKitFactory.setApiKey("d280928e-bb83-4794-8297-61139a630af3") // Your generated API key
    }
}
