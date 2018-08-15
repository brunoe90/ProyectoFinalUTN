import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { MessageToast } from '../../providers/MessageToast';
import { BluetoothSerial } from '@ionic-native/bluetooth-serial';

@Component({
  selector: 'page-home',
  templateUrl: 'home.html',
 providers: [MessageToast,BluetoothSerial]
})
export class HomePage {
  connections:Array<{id: string, name: string, mac: string}>;
  constructor(public navCtrl: NavController, public messageToast: MessageToast,private bluetoothSerial: BluetoothSerial) {
    this.connections = [];
    // for(var i = 0;i<10;i++){
    //   this.connections.push({
    //     id:"id" + i,
    //     name:"nombre"+i,
    //     mac: "00:00:00:0"+i
    //   });
    // }
  }
  buttonClick(e){
    debugger;
  }


  handlerConnection(e){
    debugger;
    e.stopPropagation();
    console.log("Entre en showDevices");
    // var promise =  new Promise(function(resolve) {
    //     setTimeout(resolve, delay);
    // });
    // promise.then(this.successTest,this.failureTest);
    this.bluetoothSerial.discoverUnpaired().then(this.successBluetooth.bind(this),this.failureBluetooth.bind(this));
    console.log("Sali en showDevices");
  }

  successTest(e){
    debugger;
  }
  failureTest(e){
    debugger;
  }
  showDevices(){
    console.log("Entre en showDevices");
    this.bluetoothSerial.discoverUnpaired().then(this.successBluetooth.bind(this),this.failureBluetooth.bind(this));
    console.log("Sali en showDevices");
  }
  disbledBT(e){
    console.log("Entre en deshabilitado");
    this.messageToast.showToastMessage("Habilitá el Bluetooth");
  }
  successBluetooth(results){
    console.log("Entre en Success");
    results.forEach(function(device) {
      this.connections.push({
        id:device.id,
        name:device.name,
        mac: device.mac
      });
    },this);
    console.log("Sali en Success");
  }
  failureBluetooth(e){
    console.log("Entre en error");
  }

}
