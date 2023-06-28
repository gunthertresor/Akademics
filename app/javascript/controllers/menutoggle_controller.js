import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="menutoggle"
export default class extends Controller {

    static targets = ["menu"]

    connect() {
        // console.log("hello menu")
    }

    toggle() {
        console.log(this.menuTarget);
        this.menuTarget.classList.toggle('d-none')
    }
}
