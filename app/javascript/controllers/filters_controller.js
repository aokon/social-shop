import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static get targets() {
    return ["form"]
  }

  submit(_event) {
    console.log("here")
    this.formTarget.requestSubmit()
  }
}
