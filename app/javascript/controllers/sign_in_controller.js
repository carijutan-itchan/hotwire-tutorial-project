import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = [ "errorMessage" ]
  static values = { displayMessage: Boolean }
  
  clearMessage() {
    this.errorMessageTarget.hidden = true
  }
}