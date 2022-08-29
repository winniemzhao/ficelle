import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit-event"
export default class extends Controller {
  static targets = ["pending", "confirmed", "completed", "edit", "show", "success"]

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

  revealShowConfirmed(event) {
    // console.log("click to show confirmed")

    const current = this.confirmedTargets.find( confirmed => event.target.id === confirmed.id)
    const showCurrent = this.showTargets.find( show => event.target.id === show.id)

    current.classList.add("d-none")
    showCurrent.classList.remove("d-none")
  }

  revealShowCompleted(event) {
    console.log("click to show completed")

    const current = this.completedTargets.find( completed => event.target.id === completed.id)
    const showCurrent = this.showTargets.find( show => event.target.id === show.id)

    current.classList.add("d-none")
    showCurrent.classList.remove("d-none")
  }

  hideEdit(event) {
    // console.log("click to hide edit")

    const current = this.pendingTargets.find( pending => event.target.id === pending.id)
    const editCurrent = this.editTargets.find( edit => event.target.id === edit.id)

    current.classList.remove("d-none")
    editCurrent.classList.add("d-none")
  }

  hideShowConfirmed(event) {
    console.log("click to hide show confirmed")

    const current = this.confirmedTargets.find( confirmed => event.target.id === confirmed.id)
    const showCurrent = this.showTargets.find( show => event.target.id === show.id)

    current.classList.remove("d-none")
    showCurrent.classList.add("d-none")
  }

  hideShowCompleted(event) {
    console.log("click to hide show completed")

    const current = this.completedTargets.find( completed => event.target.id === completed.id)
    const showCurrent = this.showTargets.find( show => event.target.id === show.id)

    current.classList.remove("d-none")
    showCurrent.classList.add("d-none")
  }

  eventSuccess(event) {
    const url = `/events/${event.target.id}/success`

    const csrfToken = document.getElementsByName("csrf-token")[0].content;

    fetch(url, {
      method: "PATCH",
      headers: {
        "X-CSRF-Token": csrfToken,
        "Accept": "application/json"
      },
      body: JSON.stringify({
        event: { id: event.target.id }
      })
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data.success)
        const current = this.successTargets.find( success => event.target.id === success.id)
        // console.log(current);
        // console.log(current.classList);
        // console.log(current.classList[1]);

        if (data.success) {
          current.classList.remove("fa-regular")
          current.classList.add("fa-solid")
        } else {
          current.classList.add("fa-regular")
          current.classList.remove("fa-solid")
        }

      })


  }
}
