import { Injectable } from '@angular/core';

@Injectable()
export class Constants {

  itemsTitles:string[];
  itemsDesctriptions:string[];
  icons:string[];

  constructor() {
  // constructor(public toast: Toast) {
    this.icons = ['compass', 'build',"git-branch","hammer","locate","outlet"];
    this.itemsTitles = ['Velocidad','Mapa','Limpiavidrios','Codigo de Error','Navegación','Aceleración'];
    this.itemsDesctriptions = ['Velocidad Desc','Mapa Desc','Limpiavidrios Desc','Codigo de Error Desc','Navegación Desc','Aceleración Desc'];
  }

}
