import { BrowserModule } from '@angular/platform-browser';
import { ErrorHandler, NgModule } from '@angular/core';
import { IonicApp, IonicErrorHandler, IonicModule } from 'ionic-angular';

import { MyApp } from './app.component';
import { HomePage } from '../pages/home/home';
import { ListPage } from '../pages/list/list';
import { SettingsPage } from '../pages/settings/settings';
import { Constants } from '../theme/constants';

import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';
import { Toast } from '@ionic-native/toast';

@NgModule({
  declarations: [
    MyApp,
    HomePage,
    ListPage,
    SettingsPage
  ],
  imports: [
    BrowserModule,
    IonicModule.forRoot(MyApp),
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp,
    HomePage,
    ListPage,
    SettingsPage
  ],
  providers: [
    Toast,
    StatusBar,
    SplashScreen,
    Constants,
    {provide: ErrorHandler, useClass: IonicErrorHandler}
  ]
})
export class AppModule {}