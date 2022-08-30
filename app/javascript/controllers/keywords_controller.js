import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="keywords"
export default class extends Controller {
  static targets = ["span"]
  connect() {
    console.log()
    console.log(this.element)
  }

  toggle(event) {
    // console.log(event.target.getAttribute("data-keyword_id"))
    if (this.element.classList.contains("keyword-outline")) {
      this.element.classList.remove("keyword-outline");
      this.spanTarget.classList.remove("fa-circle-check")
      this.spanTarget.classList.add("fa-circle-plus")
      fetch(`/preferences/destroy?keyword_id=${event.target.getAttribute("data-keyword_id")}`)
    } else {
      this.element.classList.add("keyword-outline");
      this.spanTarget.classList.remove("fa-circle-plus")
      this.spanTarget.classList.add("fa-circle-check")
      fetch(`/preferences/create?keyword_id=${event.target.getAttribute("data-keyword_id")}`)
    }
  }
}
