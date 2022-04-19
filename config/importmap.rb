# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "stimulus_reflex", to: "https://ga.jspm.io/npm:stimulus_reflex@3.5.0-pre8/javascript/stimulus_reflex.js"
pin "@rails/actioncable", to: "https://ga.jspm.io/npm:@rails/actioncable@6.1.5/app/assets/javascripts/action_cable.js"
pin "cable_ready", to: "https://ga.jspm.io/npm:cable_ready@5.0.0-pre8/javascript/index.js"
pin "morphdom", to: "https://ga.jspm.io/npm:morphdom@2.6.1/dist/morphdom.js"
pin "stimulus", to: "https://ga.jspm.io/npm:stimulus@3.0.1/dist/stimulus.js"
pin "swiper", to: "https://ga.jspm.io/npm:swiper@8.0.7/swiper.esm.js"
pin "dom7", to: "https://ga.jspm.io/npm:dom7@4.0.4/dom7.esm.js"
pin "ssr-window", to: "https://ga.jspm.io/npm:ssr-window@4.0.2/ssr-window.esm.js"
pin "tom-select", to: "https://ga.jspm.io/npm:tom-select@2.0.1/dist/js/tom-select.complete.js"
pin "alpinejs", to: "https://ga.jspm.io/npm:alpinejs@3.9.1/dist/module.esm.js"
pin "debounced", to: "https://ga.jspm.io/npm:debounced@0.0.5/src/index.js"
pin "alpine-turbo-drive-adapter", to: "https://ga.jspm.io/npm:alpine-turbo-drive-adapter@2.0.0/dist/alpine-turbo-drive-adapter.esm.js"
pin_all_from "app/javascript/channels", under: "channels"
pin "ahoy", to: "https://ga.jspm.io/npm:ahoy@1.0.1/lib/index.js"
pin "os", to: "https://ga.jspm.io/npm:@jspm/core@2.0.0-beta.19/nodelibs/browser/os.js"
pin "autonumeric", to: "https://ga.jspm.io/npm:autonumeric@4.6.0/dist/autoNumeric.min.js"
pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.11.4/lib/index.js"
pin "tailwindcss-stimulus-components", to: "https://ga.jspm.io/npm:tailwindcss-stimulus-components@3.0.4/dist/tailwindcss-stimulus-components.modern.js"
pin "flatpickr", to: "https://ga.jspm.io/npm:flatpickr@4.6.11/dist/esm/index.js"
pin 'monthSelectPlugin', to: 'https://ga.jspm.io/npm:flatpickr@4.6.11/dist/plugins/monthSelect/index.js'
pin 'flatpickr_spa', to: 'https://ga.jspm.io/npm:flatpickr@4.6.11/dist/l10n/es.js'
pin "chartkick", to: "chartkick.js"
pin "Chart.bundle", to: "Chart.bundle.js"
pin "stimulus-lightbox", to: "https://ga.jspm.io/npm:stimulus-lightbox@3.0.0/dist/stimulus-lightbox.es.js"
pin "lightgallery", to: "https://ga.jspm.io/npm:lightgallery@2.4.0/lightgallery.es5.js"
pin "cleave.js", to: "https://ga.jspm.io/npm:cleave.js@1.6.0/dist/cleave.js"
pin "stimulus-use", to: "https://ga.jspm.io/npm:stimulus-use@0.50.0-2/dist/index.js"
pin "hotkeys-js", to: "https://ga.jspm.io/npm:hotkeys-js@3.8.9/dist/hotkeys.esm.js"
pin "@rails/ujs", to: "https://ga.jspm.io/npm:@rails/ujs@7.0.2/lib/assets/compiled/rails-ujs.js"
