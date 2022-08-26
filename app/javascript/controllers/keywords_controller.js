import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="keywords"
export default class extends Controller {
  static targets = ["partner_id", "cards"]
  connect() {
    console.log(this.partner_idTarget.getAttribute("data-partner_id"))
  }

  toggle(event) {
    console.log(event.target.getAttribute("data-keyword_id"))
    if (this.element.classList.contains("keyword-outline")) {
      this.element.classList.remove("keyword-outline");
    } else {
      this.element.classList.add("keyword-outline");
      fetch(`/partners/${this.partner_idTarget.getAttribute("data-partner_id")}/preferences`, {
        method: "POST",
        body: { keyword_id: event.target.getAttribute("data-keyword_id") }
      })
    }
  }
}
