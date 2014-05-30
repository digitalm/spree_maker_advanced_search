Deface::Override.new(:virtual_path => 'spree/shared/_nav_bar',
  :name => 'add_advanced_search_link_to_nav_bar',
  :insert_bottom => "li#search-bar",
  :text => "
  <nav id='advanced_search_link_search-bar'>
    <ul>
        <li><%= link_to( t('add_on.advanced_search.advanced_search'), products_advanced_search_path ) %></li>
    </ul>
  </nav>
  ")