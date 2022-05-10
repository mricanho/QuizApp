import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["select", "choice", "text"]

  connect() {
    this.selected()
  }

  selected() {
    this.hideFields()
    switch (this.selectTarget.value) {
      case 'single_choice':
        this.choiceTarget.classList.remove('hidden')
        break;
      case 'multiple_choice':
        this.choiceTarget.classList.remove('hidden')
        break;
      case 'text':
        this.textTarget.classList.remove('hidden')
        break;
    }
  }

  hideFields() {
    this.choiceTarget.classList.add('hidden')
    this.textTarget.classList.add('hidden')
  }
}