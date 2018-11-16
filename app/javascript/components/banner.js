import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Cocktail"],
    typeSpeed: 1,
  });
}

export { loadDynamicBannerText };
