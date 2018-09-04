import { Injectable } from '@angular/core';

@Injectable()
export class Constants {

  itemsTitles:string[];
  itemsDesctriptions:string[];
  icons:string[];

  constructor() {
  // constructor(public toast: Toast) {
    this.icons = ['compass', 'build',"hammer","locate"];
    this.itemsTitles = ['Aceleración','Velocidad','Codigo de Error','Navegación'];
    this.itemsDesctriptions = ["0","1","2","3"];
  }

}
