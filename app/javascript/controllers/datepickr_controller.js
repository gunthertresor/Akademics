import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepickr"
export default class extends Controller {
  connect() {
    // console.log('hellllo')
    flatpickr(this.element, {
        enableTime: true,
        dateFormat: "Y-m-d H:i",
    });
  }
}
