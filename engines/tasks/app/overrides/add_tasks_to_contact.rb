if Samurai::Core.available?(:contacts)
  Deface::Override.new(:virtual_path => "samurai/contacts/contacts/show",
                      :name => "add_tasks_to_contact",
                      :insert_after => "[data-samurai-hook='contacts_show']",
                      :partial => "overrides/contact_tasks_list",
                      :namespaced => true)
end
