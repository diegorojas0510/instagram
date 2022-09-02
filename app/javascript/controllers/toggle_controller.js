import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
    connect() {
        //this.element.textContent = "Hello World!"
        console.log("Diego Rojas");
        console.log(this.element);
    }
}
