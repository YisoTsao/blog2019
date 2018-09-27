$(document).on('turbolinks:load', function(){
  var handies = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.whitespace,
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    remote: {
      url: '/handies/autocomplete?query=%QUERY',
      wildcard: '%QUERY'
    }
  });
  $('#handies_search').typeahead(null, {
    source: handies
  });
})