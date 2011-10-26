
<p><%= link_to "New Fortune", new_fortune_path %></p>

  <% for fortune in @fortunes %>
  <article id="slot">
    <header>
      <%= link_to "Show", fortune %>
      <%= link_to "Edit", edit_fortune_path(fortune) %>
      <%= link_to "Destroy", fortune, :confirm => 'Are you sure?', :method => :delete %>
    </header>
    <%= fortune.body %>
  </article>
  <% end %>


