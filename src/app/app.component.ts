import { Component } from '@angular/core';
import OneSignal from 'onesignal-cordova-plugin';

@Component({
  selector: 'app-root',
  templateUrl: 'app.component.html',
  styleUrls: ['app.component.scss'],
})
export class AppComponent {
  constructor() {
    this.oneSignalInit();
  }

  public oneSignalInit():void {
    // Uncomment to set OneSignal device logging to VERBOSE
    OneSignal.setLogLevel(6, 0);

    // NOTE: Update the setAppId value below with your OneSignal AppId.
    OneSignal.setAppId('16f39668-...');

    OneSignal.setNotificationOpenedHandler((jsonData) => {
      console.log('NotificationOpenedHandler: ' + JSON.stringify(jsonData));
    });

    OneSignal.getDeviceState(deviceState => {
      console.log('oneSignalInit() ran, deviceState: ', deviceState);
    });

  }
}
