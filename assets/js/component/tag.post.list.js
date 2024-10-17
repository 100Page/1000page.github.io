/*
  const tagLinks = document.querySelectorAll('.tag-link');
  tagLinks.forEach((el) => {
    el.addEventListener('click', (e) => {
      e.preventDefault();
      const newUrl = el.getAttribute('data-url');
      window.location.hash = newUrl;
      addStyle(newUrl);
      showTagList(newUrl);
      scrollToList(newUrl);
    });

  });

  function addStyle(tagId) {
    tagLinks.forEach(link => {
      link.classList.remove('on');
    });

    const el = document.querySelector(`[data-url=${tagId}]`);
    el.classList.add('on');
  }

  function showTagList(tagId) {
    if(!tagId) return;

    tagId = tagId.replace('#', '');

    const tagContainers= document.querySelectorAll('.tag-list-container');

    tagContainers.forEach(el => {
      if(el.id === tagId+'Container') {
        el.classList.remove('none');
      } else {
        el.classList.add('none');
      }
    });

    addStyle(tagId);
  }

  function scrollToList(tagId) {
    const element = document.getElementById(`${tagId}Container`);
    if(element) {
      element.scrollIntoView({ behavior: 'smooth', block: 'start' });
    }
  }

  window.addEventListener('hashchange', () => {
    showTagList(location.hash);
    scrollToList(location.hash.replace('#', ''));
  });

  if(window.location.hash) {
    showTagList(location.hash);
    scrollToList(location.hash.replace('#', ''));
  }
*/