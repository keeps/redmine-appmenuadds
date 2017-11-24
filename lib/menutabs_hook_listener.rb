module Menutabs
  class Hooks < Redmine::Hook::ViewListener

    def view_layouts_base_html_head(context = {})
      menulist = Menutab.order("position")

      context[:controller].send(:render_to_string, {
              :partial => "menutabs/show_partial",
              :locals => { menulist: menulist }
            })
    end
  end
end
