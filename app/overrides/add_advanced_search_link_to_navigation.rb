Deface::Override.new(:virtual_path => 'spree/products/show',
  :name => 'add_advanced_search_link_to_navigation',
  :insert_bottom => "[data-hook='taxon_sidebar_navigation']",
  :text => "
  <nav id='advanced_search_link_sidebar'>
  <div class='navigation'>
  <h6 class='filter-title'><%=t('add_on.advanced_search')%></h6>
    <ul>
        <li><%= link_to( t('add_on.advanced_search.advanced_search'), products_advanced_search_path ) %></li>
    </ul>
  </div>
  </nav>
  ")