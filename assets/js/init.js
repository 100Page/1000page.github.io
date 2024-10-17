import { createHeaderCateogyMenu } from './component/header.category.menu.js';
import { createSearchPostForm } from './component/search.post.form.js';
import { createFooterTopBtn } from './component/footer.top.btn.js';



const headerCateogyMenu = createHeaderCateogyMenu();
headerCateogyMenu.init();

const searchPostForm = createSearchPostForm();
if(window.location.pathname === '/search') {
  searchPostForm.init();
}

const footerTopBtn = createFooterTopBtn();
footerTopBtn.init();
