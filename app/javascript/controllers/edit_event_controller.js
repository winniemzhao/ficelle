import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit-event"
export default class extends Controller {
  static targets = ["pending", "confirmed", "completed", "edit", "show"]

  connect() {
    // console.log("all pending targets", this.pendingTargets)
    // console.log("all confirmed targets", this.confirmedTargets)
    // console.log("all completed targets", this.completedTargets)
    // console.log("all edit targets",this.editTargets)
    // console.log("all show targets",this.showTargets)
  }

  revealEdit(event) {
    // console.log("click to edit")
    // console.log(event.target.id)

    const current = this.pendingTargets.find( pending => event.target.id === pending.id)
    const editCurrent = this.editTargets.find( edit => event.target.id === edit.id)

    // console.log(editCurrent)

    current.classList.add("d-none")
    editCurrent.classList.remove("d-none")
  }

  revealShowConfirmed() {
    console.log("click to show confirmed")
    this.confirmedTarget.classList.add("d-none")
    this.showTarget.classList.remove("d-none")
  }

  revealShowCompleted() {
    console.log("click to show completed")
    this.completedTarget.classList.add("d-none")
    this.showTarget.classList.remove("d-none")
  }

  hideEdit() {
    // console.log("click to hide edit")

    const current = this.pendingTargets.find( pending => event.target.id === pending.id)
    const editCurrent = this.editTargets.find( edit => event.target.id === edit.id)

    current.classList.remove("d-none")
    editCurrent.classList.add("d-none")
  }

  hideShowConfirmed() {
    console.log("click to hide show confirmed")
    this.confirmedTarget.classList.remove("d-none")
    this.showTarget.classList.add("d-none")
  }

  hideShowCompleted() {
    console.log("click to hide show completed")
    this.completedTarget.classList.remove("d-none")
    this.showTarget.classList.add("d-none")
  }
}
