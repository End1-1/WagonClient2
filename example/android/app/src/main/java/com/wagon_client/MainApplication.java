package com.wagon_client;

import android.app.Application;

import com.yandex.mapkit.MapKitFactory;

public class MainApplication extends Application {
  @Override
  public void onCreate() {
    super.onCreate();
    //MapKitFactory.setLocale("YOUR_LOCALE");
    MapKitFactory.setApiKey("06495363-2976-4cbb-a0b7-f09387554b9d");
  }
}
