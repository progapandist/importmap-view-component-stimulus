import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["container"];

  connect() {
    this.containerTarget.innerText = "Hello from a normal Stimulus Controller!";
  }
}
