// app/javascript/controllers/datepicker_controller.js

import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()
// import { French } from "flatpickr/dist/l10n/fr.js";
// import FlatpickrLanguages from "flatpickr/dist/l10n"; // Importer la localisation française

export default class extends Controller {
  connect() {

    console.log("Hello")

    flatpickr(this.element, {
      disableMobile: "true",
      dateFormat: "d/m/Y",
      defaultDate: 'today',
      maxDate: 'today',
      locale: {
        firstDayOfWeek: 1,
        weekdays: {
          shorthand: ["dim", "lun", "mar", "mer", "jeu", "ven", "sam"],
          longhand: ["dimanche", "lundi", "mardi", "mercredi", "jeudi", "vendredi", "samedi"],
        },
        months: {
          shorthand: ["janv","févr", "mars", "avr", "mai", "juin", "juil", "août", "sept", "oct", "nov", "déc",],
          longhand: ['Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin', 'Juillet', 'Août', 'Septembre', 'Octobre', 'Novembre', 'Décembre'],
        },
      },
    })
  }
}
