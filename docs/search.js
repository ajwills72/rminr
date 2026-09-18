(function () {
  const input = document.getElementById('site-search');
  const status = document.getElementById('search-status');
  const results = document.getElementById('search-results');

  fetch('search.json')
    .then(function (response) { return response.json(); })
    .then(function (documents) {
      function search() {
        const terms = input.value.toLowerCase().trim().split(/\s+/).filter(Boolean);
        results.innerHTML = '';
        if (!terms.length) {
          status.textContent = 'Enter one or more search terms.';
          return;
        }

        const matches = documents.map(function (document) {
          const haystack = (document.title + ' ' + document.text).toLowerCase();
          const score = terms.reduce(function (total, term) {
            return total + (haystack.includes(term) ? 1 : 0);
          }, 0);
          return { document: document, score: score };
        }).filter(function (match) {
          return match.score === terms.length;
        }).sort(function (left, right) {
          return right.score - left.score || left.document.title.localeCompare(right.document.title);
        }).slice(0, 30);

        status.textContent = matches.length + ' result' + (matches.length === 1 ? '' : 's') + '.';
        matches.forEach(function (match) {
          const item = document.createElement('li');
          const link = document.createElement('a');
          link.href = match.document.url;
          link.textContent = match.document.title;
          item.appendChild(link);
          const excerpt = document.createElement('p');
          excerpt.textContent = match.document.text.slice(0, 240) + '...';
          item.appendChild(excerpt);
          results.appendChild(item);
        });
      }

      input.addEventListener('input', search);
      search();
    })
    .catch(function () {
      status.textContent = 'Search is temporarily unavailable.';
    });
}());