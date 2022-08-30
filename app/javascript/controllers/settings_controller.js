import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="settings"
export default class extends Controller {
  static targets = ["frequency", "payment", "editFrequency", "editPayment", "show"]
  connect() {
    console.log("hello")
  }

  revealEdit() {
    this.frequencyTarget.classList.add("d-none")
    this.editFrequencyTarget.classList.remove("d-none")

  }

  revealPayment() {
  this.paymentTarget.classList.add("d-none")
  this.editPaymentTarget.classList.remove("d-none")
  }

  hideEdit() {
    this.frequencyTarget.classList.remove("d-none")
    this.editFrequencyTarget.classList.add("d-none")

  }

  hidePayment() {
  this.paymentTarget.classList.remove("d-none")
  this.editPaymentTarget.classList.add("d-none")
  }
}
