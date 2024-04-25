import { Controller } from "@hotwired/stimulus"
import { get } from "@rails/request.js"

// Connects to data-controller="activity"
export default class extends Controller {
  static targets = ["loading", "input"]

  connect() {
    console.log("Loading activity")
  }

  select(_event) {
    let url = this.inputTarget.dataset.url
    console.log(this.inputTarget.dataset)
    let body = document.getElementById("option")
    let params = new URLSearchParams()
    params.append("option", this.inputTarget.value)


    this.loadingTarget.classList.remove("hidden")
    body.textContent = ""

    const request = get(`${url}?${params}`, { responseKind: "turbo-stream" })
    request.then((_response) => {
      this.loadingTarget.classList.add("hidden")
    })
  }
}
