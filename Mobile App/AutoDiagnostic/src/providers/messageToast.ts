import { Injectable } from '@angular/core';
import { Toast } from '@ionic-native/toast';
import { Constants } from '../theme/constants';

@Injectable()
export class MessageToast {

    constructor(private toast: Toast,public constants: Constants) {

    }

    showToastMessage(message){
      var options = {
      message:message,
      duration:1000,
      position:'bottom',
      styling:{
         backgroundColor: '#665B4F',
         textColor: '#FFFFFF',
         cornerRadius:30,
         opacity:0.5
        }
      }
      this.toast.showWithOptions(options).subscribe(
        toast => {
          console.log(toast);
      });
    }

}
