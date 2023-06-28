import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="searchtoggle"
export default class extends Controller {

    static targets = ["searchtoggle"]
    connect() {
        console.log("hello search")
    }

    toggle() {
        console.log(this.menuTarget);
        this.searchtoggleTarget.classList.toggle('d-none')
        // this.menuTarget.style.heigth = "100px"
    }
}
