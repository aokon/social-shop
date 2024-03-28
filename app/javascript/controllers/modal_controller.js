import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal"
export default class extends Controller {
  static targets = ["modal"]

  connect() {
    this.modalTarget.showModal();
  }
  // hide modal when clicking ESC
  // action: "keyup@window->turbo-modal#closeWithKeyboard"
  closeWithKeyboard(event) {
    if (event.code == "Escape") {
      this.hideModal()
    }
  }

  // hide modal when clicking outside of modal
  // action: "click@window->turbo-modal#closeBackground"
  closeBackground(event) {
    if (event && this.modalTarget.contains(event.target)) {
      return
    }
    this.hideModal()
  }
}
