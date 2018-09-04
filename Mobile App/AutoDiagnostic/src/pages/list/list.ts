import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { Constants } from '../../theme/constants';
import { MessageToast } from '../../providers/MessageToast';
import {ListSpeedPage} from '../listInfo/speed/listSpeed';
import {ListCheckPage} from '../listInfo/check/listCheck';

@Component({
  selector: 'page-list',
  templateUrl: 'list.html',
  providers: [MessageToast]
})
export class ListPage {
  selectedItem: any;
  icons: string[];
  items: Array<{title: string, note: string, icon: string}>;

  constructor(public navCtrl: NavController, public navParams: NavParams,public constants: Constants,public messageToast:MessageToast) {
    // If we navigated to this page, we will have an item available as a nav param
    this.selectedItem = navParams.get('item');
    // Let's populate this page with some filler content for funzies
    this.items = [];
    for (let i = 0; i < constants.itemsTitles.length; i++) {
      this.items.push({
        title: constants.itemsTitles[i],
        note: constants.itemsDesctriptions[i],
        icon: constants.icons[i]
      });
    }
  }

  itemTapped(event, item) {
    //this.messageToast.showToastMessage(item.title);
    // That's right, we're pushing to ourselves!
    debugger;
    switch(item.note){
      case "1":
        this.navCtrl.push(ListSpeedPage);
        break;
      case "2":
        this.navCtrl.push(ListCheckPage);
        break;
      default:
        this.messageToast.showToastMessage("Soon my friend...");
        break;
    }
  }

}
