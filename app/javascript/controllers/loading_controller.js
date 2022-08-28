import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="loading"
export default class extends Controller {
  connect() {
    console.log("Hello from the loading controller!")
  }

  load() {
    console.log("Hello from Click")
  }
}
