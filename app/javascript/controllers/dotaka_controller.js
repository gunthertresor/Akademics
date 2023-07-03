import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

    static targets = ["dotaka", "courses", "profil", "dashboard", "navbar", "body"]

    connect() {
        // this.dotakaTarget.style.left = "180px";
    }

    aka() {
        switch (window.location.pathname) {
            case '/courses':
                // this.dotakaTarget.style.left = `${this.coursesTarget.offsetLeft + (this.coursesTarget.offsetWidth/2)}px`;
                this.dotakaTarget.style.left = `${this.coursesTarget.offsetLeft + 15}px`;
                this.dotakaTarget.style.width = `${this.coursesTarget.offsetWidth - 30}px`
                // this.dotakaTarget.style.transition = 'all 0s'
                break
            case '/my_profil':
                this.dotakaTarget.style.left = `${this.profilTarget.offsetLeft + 15}px`;
                this.dotakaTarget.style.width = `${this.profilTarget.offsetWidth - 30}px`
                // this.dotakaTarget.style.transition = 'all 0s'
                break
            case '/dashboard':
                this.dotakaTarget.style.left = `${this.dashboardTarget.offsetLeft + 15}px`
                this.dotakaTarget.style.width = `${this.dashboardTarget.offsetWidth - 30}px`
                // this.dotakaTarget.style.transition = 'all 0s'
                break
            default:
                this.dotakaTarget.style.left = "0px";
                this.dotakaTarget.style.width = `0px`
                this.dotakaTarget.style.visibility = 'hidden'
        }
    }

    mouseOver1() {
        this.dotakaTarget.style.left = `${this.coursesTarget.offsetLeft + 15}px`;
        this.dotakaTarget.style.width = `${this.coursesTarget.offsetWidth - 30}px`
        this.dotakaTarget.style.visibility = 'visible'
    }
    mouseOut1() { this.aka() }
    mouseOver2() {
        this.dotakaTarget.style.left = `${this.profilTarget.offsetLeft + 15}px`;
        this.dotakaTarget.style.width = `${this.profilTarget.offsetWidth - 30}px`
        this.dotakaTarget.style.visibility = 'visible'
    }
    mouseOut2() { this.aka() }
    mouseOver3() {
        this.dotakaTarget.style.left = `${this.dashboardTarget.offsetLeft + 15}px`;
        this.dotakaTarget.style.width = `${this.dashboardTarget.offsetWidth - 30}px`
        this.dotakaTarget.style.visibility = 'visible'
    }
    mouseOut3() { this.aka() }

    detectscroll() {
        var currentScroll = window.scrollY;
        if (currentScroll > previousScroll){
                console.log('up 1');
        } else {
                console.log(currentScroll, previousScroll);
        }
        var previousScroll = currentScroll;
    }
}
