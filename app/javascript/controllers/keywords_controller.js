import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="keywords"
export default class extends Controller {
  static targets = ["partner_id"]
  connect() {
    // console.log(this.element)
  }

  toggle(event) {
    if (this.element.classList.contains("keyword-outline")) {
      this.element.classList.remove("keyword-outline");
    } else {
      this.element.classList.add("keyword-outline");
      fetch(`/preferences?keyword_id=${event.target.getAttribute("data-keyword_id")}`)
    }
  }
}
