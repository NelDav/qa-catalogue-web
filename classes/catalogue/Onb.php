<?php


class Onb extends Catalogue {

  protected $name = 'onb';
  protected $label = 'Österreichische Nationalbibliothek';
  protected $url = 'https://search.onb.ac.at/primo-explore/search?vid=ONB&lang=de_DE';

  function getOpacLink($id, $record) {
    foreach ($record->getFields('035') as $tag35) {
      error_log(json_encode($tag35->subfields));
      $tag35a = $tag35->subfields->a;
      if (preg_match('/\(AT-OBV\)/', $tag35a)) {
        $id = preg_replace('/\(AT-OBV\)/', '', $tag35a);
        break;
      }
    }
    return 'http://data.onb.ac.at/rec/' . trim($id);
  }
}