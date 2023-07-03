import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

    static targets = ["gototop"]

    connect() {
        window.addEventListener("scroll", (event) => {
            if (window.scrollY > 100) {
                this.gototopTarget.classList.remove('d-none')
            } else {
                this.gototopTarget.classList.add('d-none')
            }
        });
    }
}
