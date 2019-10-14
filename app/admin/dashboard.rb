ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
     columns do
       column do
          panel 'Ultimos post agregados' do
            ul do
                Post.last(5).map do |post|
                  li link_to(post.title, admin_post_path(post))
                end
              end
            end
          end

       column do
           panel 'Usuarios' do
             ul do
               li "Usuarios registrados: #{User.count}"
               li "Administradores registrados: #{AdminUser.count}"
             end
            end
          end

          column do
              panel 'Posts' do
                ul do
                  li "Post Creados: #{Post.count}"
                  li "Comentarios Creados: #{Comment.count}"
                end
               end
             end

             column do
                 panel 'Aviso de Remates' do
                   ul do
                     li "Avisos Remates Ingresados: #{Auctionnotice.count}"
                     li "Avisos Remates Seleccionados: #{Auctionnotice.selected.count}"
                     li "Avisos Remates Pendientes por Revisar: #{Auctionnotice.pending.count}"
                     li "Avisos Remates Descartados: #{Auctionnotice.rejected.count}"
                   end
                end
              end

              column do
                  panel 'Propiedades' do
                    ul do
                      li "Propiedades Ingresadas: #{Realty.count}"

                    end
                  end
             end
           end

          panel "Grafico Ingreso Aviso de Remate" do
              render 'shared/chart'
           end


        end

     end
