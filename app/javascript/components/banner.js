import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["MISTER COCKTAIL"],
    typeSpeed: 100
  });
}

export { loadDynamicBannerText };
