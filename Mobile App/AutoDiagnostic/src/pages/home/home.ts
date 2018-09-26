import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { MessageToast } from '../../providers/MessageToast';
import { BluetoothSerial } from '@ionic-native/bluetooth-serial';
import {ElementRef, ViewChild} from '@angular/core';

// con esta linea te corre el console log en la consola de la poronga de OS que estes corriendo
// ionic cordova run android -l -c -s --bug

@Component({
  selector: 'page-home',
  templateUrl: 'home.html',
 providers: [MessageToast,BluetoothSerial]
})

export class HomePage  {

 //  @ViewChild([NOMBRE DEL ID #id en el HTML] ) [Variable] : ElementRef;
  @ViewChild('connectingButton') btButton: ElementRef;
  @ViewChild('connectionSuccess') imgSuccessBT: ElementRef;
  @ViewChild('toggleButton') toggleButton: ElementRef;
  booleanV:boolean;

  constructor(public navCtrl: NavController, public messageToast: MessageToast,private bluetoothSerial: BluetoothSerial) {
    this.booleanV = true;
  }

  ionViewDidEnter(){
    this.bluetoothSerial.isEnabled().then(this.enabledBT.bind(this),this.disbledBT.bind(this));
  }

  buttonClick(e){
    this.bluetoothSerial.isEnabled().then(this.enabledBT.bind(this),this.disbledBT.bind(this));
  }
  onToggleClick(e){
    if(this.booleanV==true){
      this.bluetoothSerial.write("1").then(this.success.bind(this), this.error.bind(this));
      this.booleanV = false;
    }
    else{
      this.bluetoothSerial.write("0").then(this.success.bind(this), this.error.bind(this));
      this.booleanV = true;
    }
  }
  enabledBT(e){
    this.bluetoothSerial.list().then(this.onDeviceList.bind(this), this.failureConnectedBT.bind(this));
  }
  onDeviceList(devices) {
      var t = this;
      // remove existing devices
      devices.forEach(function(device) {
        console.log("Dispositivos:" + device.id + device.name);
        if(device.name == "?"){
            t.bluetoothSerial.connect(device.address).subscribe(t.successConnectedBT.bind(t),t.failureConnectedBT.bind(t));
        }
      });
  }
  disbledBT(e){
    this.messageToast.showToastMessage("Habilitá el Bluetooth gil");
  }
  successConnectedBT(){
    this.messageToast.showToastMessage("Coneccion satisfactoria");
  }
  failureConnectedBT(e){
    this.messageToast.showToastMessage("Coneccion Erronea");
  }
  success(e){
  }
  error(e){
  }

}
