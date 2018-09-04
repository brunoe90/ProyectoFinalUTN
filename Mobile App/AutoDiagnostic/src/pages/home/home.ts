import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { MessageToast } from '../../providers/MessageToast';
import { BluetoothSerial } from '@ionic-native/bluetooth-serial';
import {ElementRef, ViewChild} from '@angular/core';



@Component({
  selector: 'page-home',
  templateUrl: 'home.html',
 providers: [MessageToast,BluetoothSerial]
})

export class HomePage  {

 //  @ViewChild([NOMBRE DEL ID #id en el HTML] ) [Variable] : ElementRef;
  @ViewChild('connectingButton') btButton: ElementRef;
  @ViewChild('connectionSuccess') imgSuccessBT: ElementRef;

  constructor(public navCtrl: NavController, public messageToast: MessageToast,private bluetoothSerial: BluetoothSerial) {}

  ionViewDidEnter(){
    this.bluetoothSerial.isEnabled().then(this.enabledBT.bind(this),this.disbledBT.bind(this));
  }

  buttonClick(e){
    // this.bluetoothSerial.isConnected().then(this.successConnectedBT, this.failureConnectedBT);
    this.bluetoothSerial.isEnabled().then(this.enabledBT.bind(this),this.disbledBT.bind(this));
  }

  enabledBT(e){
    this.ConntectedBT(true);
  }

  disbledBT(e){
    this.ConntectedBT(false);
    this.messageToast.showToastMessage("Habilitá el Bluetooth");
  }
  ConntectedBT(yes){
    if(yes){
      this.btButton.nativeElement.style.display = "none";
      // this.imgSuccessBT._elementRef.nativeElement;
      this.imgSuccessBT.nativeElement.style.display = "block";
    }else{
      this.btButton.nativeElement.style.display = "block";
      // this.imgSuccessBT._elementRef.nativeElement;
      this.imgSuccessBT.nativeElement.style.display = "none";
    }
  }
  successConnectedBT(result){
    console.log("Entre en Success");
    // results.forEach(function(device) {
    //   this.connections.push({
    //     id:device.id,
    //     name:device.name,
    //     mac: device.mac
    //   });
    // },this);
  }
  failureConnectedBT(e){
    console.log("Entre en error");
  }

}
