import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="keywords"
export default class extends Controller {
  connect() {
    console.log("Hello from our first Stimulus controller")
  }

  toggle() {
    if (this.element.classList.contains("keyword-outline")) {
      this.element.classList.remove("keyword-outline");
    } else {
      this.element.classList.add("keyword-outline");
    }
  }
}
