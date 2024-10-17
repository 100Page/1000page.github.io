const defaultOptions = {
  getHeaderCategory: () => document.getElementById('headerCategory'),
  getOpenBtn: () => document.getElementById('categoryOpenBtn'),
  getCloseBtn: () => document.getElementById('categoryCloseBtn'),
};

export function createHeaderCateogyMenu(customOptions = {}) {
  const options = { ...defaultOptions, ...customOptions };
  const { getHeaderCategory, getOpenBtn, getCloseBtn } = options;

  const $headerCategory = getHeaderCategory();
  const $openBtn = getOpenBtn();
  const $closeBtn = getCloseBtn();

  const toggleVisibility = () => {
    const isVisible = $headerCategory.classList.toggle('visible');

    if(isVisible) {
      document.documentElement.classList.add('no-scroll');
      document.body.classList.add('no-scroll');
    } else {
      document.documentElement.classList.remove('no-scroll');
      document.body.classList.remove('no-scroll');
    }
  };

  const init = () => {
    $openBtn.addEventListener('click', toggleVisibility);
    $closeBtn.addEventListener('click', toggleVisibility);
  };

  const destroy = () => {
    $openBtn.removeEventListener('click', toggleVisibility);
    $closeBtn.removeEventListener('click', toggleVisibility);
  };

  return { init, destroy};

}