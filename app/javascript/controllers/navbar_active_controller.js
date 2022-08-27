import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar-active"
export default class extends Controller {
  static targets = ["icon"]
  connect() {
    // console.log(this.iconTargets);
  }

  iconActive() {
    console.log(this.iconTarget);
    this.iconTarget.classList.add("my-nav")
  }
}
