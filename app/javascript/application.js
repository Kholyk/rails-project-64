// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"

// Sample for using bootstrap Popover on some elements
// https://getbootstrap.com/docs/5.3/components/popovers/#enable-popovers
const nodesList = document.querySelectorAll('[data-bs-toggle="popover"]');
Array.from(nodesList).map(el => new bootstrap.Popover(el, {'trigger': 'focus'}))
