Deface::Override.new(:virtual_path => "layouts/samurai/application",
                    :name => "add_contacts_link_to_nav",
                    :insert_after => "[data-samurai-hook='main_nav']",
                    :partial => "overrides/contacts_link",
                    :namespaced => true,
                    :original => 'f5fe48b6dc6986328e0b873b3ffa1b228dd52a7c')
