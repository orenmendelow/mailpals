import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["options"]
  
  connect() {
    this.toggleVisibility()
  }
  
  toggleVisibility() {
    const enabled = this.element.querySelector("#club_use_custom_questions").checked
    this.optionsTarget.classList.toggle("hidden", !enabled)
  }
} 