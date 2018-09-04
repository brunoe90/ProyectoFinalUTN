import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { Constants } from '../../../theme/constants';
import { MessageToast } from '../../../providers/MessageToast';

@Component({
  selector: 'page-list',
  templateUrl: 'listCheck.html',
  providers: [MessageToast]
})
export class ListCheckPage {
  selectedItem: any;
  icons: string[];
  items: Array<{title: string, note: string, icon: string}>;

  constructor(public navCtrl: NavController, public navParams: NavParams,public constants: Constants,public messageToast:MessageToast) {
    // If we navigated to this page, we will have an item available as a nav param
  }

  itemTapped(event, item) {
    //this.messageToast.showToastMessage(item.title);
    // That's right, we're pushing to ourselves!
  }

}
