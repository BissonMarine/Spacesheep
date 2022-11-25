import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["result","start","end","price"]

  connect() {
    console.log("Controller stimulus connected")
  }

  compute() {
    if (this.startTarget.value !== "" && this.endTarget.value !== "") {
    const priceValue = parseInt(this.priceTarget.innerHTML.split("💰 ")[1].split(" ")[0])
    const startDate = Date.parse(this.startTarget.value)
    const endDate = Date.parse(this.endTarget.value)

    const diff = endDate - startDate
    const nbJours = Math.ceil(diff/(1000*60*60*24))
    console.log(nbJours)
    console.log(priceValue * nbJours)
    const result = priceValue * nbJours
    this.resultTarget.innerHTML = result
    }
  }
}

  // const start_date = new Date(booking_start_date);

  // const end_date = new Date(booking_end_date);

  // function diffdate(start_date, end_date){
    //   let WNbJours = end_date.getTime() - start_date.getTime();
    //   return Math.ceil(WNbJours/(1000*60*60*24));
    // }
