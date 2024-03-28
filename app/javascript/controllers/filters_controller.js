import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static get targets() {
    return ["form"]
  }

  submit(_event) {
    this.formTarget.requestSubmit()
  }
}
