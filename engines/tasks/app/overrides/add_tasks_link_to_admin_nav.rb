Deface::Override.new(:virtual_path => "admin/shared/_nav",
                    :name => "add_tasks_link_to_admin_nav",
                    :insert_after => "[data-samurai-hook='admin_nav']",
                    :partial => "overrides/admin_tasks_link",
                    :namespaced => true)
