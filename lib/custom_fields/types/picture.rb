module CustomFields

  module Types

    module Picture

      module Field; end

      module Target

        extend ActiveSupport::Concern

        module ClassMethods

          # Adds a picture field
          #
          # @param [ Class ] klass The class to modify
          # @param [ Hash ] rule It contains the name of the field and if it is required or not
          #
          def apply_picture_custom_field(klass, rule)
            name = rule['name']

            klass.field name, type: ::Picture, localize: rule['localized'] || false

            # other methods
            klass.send(:define_method, :"formatted_#{name}") { _get_formatted_picture(name) }
            klass.send(:define_method, :"formatted_#{name}=") { |value| _set_formatted_picture(name, value) }

            if rule['required']
              klass.validates_presence_of name, :"formatted_#{name}"
            end
          end

          # Build a hash storing the formatted value for
          # a picture custom field of an instance.
          #
          # @param [ Object ] instance An instance of the class enhanced by the custom_fields
          # @param [ String ] name The name of the picture custom field
          #
          # @return [ Hash ] field name => formatted picture
          #
          def picture_attribute_get(instance, name)
            if value = instance.send(:"formatted_#{name}")
              { name => value, "formatted_#{name}" => value }
            else
              {}
            end
          end

          # Set the value for the instance and the picture field specified by
          # the 2 params.
          #
          # @param [ Object ] instance An instance of the class enhanced by the custom_fields
          # @param [ String ] name The name of the picture custom field
          # @param [ Hash ] attributes The attributes used to fetch the values
          #
          def picture_attribute_set(instance, name, attributes)
            return unless attributes.key?(name) || attributes.key?("formatted_#{name}")

            value = attributes[name] || attributes["formatted_#{name}"]

            instance.send(:"formatted_#{name}=", value)
          end

        end

        protected

        def _set_formatted_picture(name, value)
          if value.is_a?(::String) && !value.blank?
            picture = ::Picture._strptime(value, self._formatted_picture_format)

            if picture
              value = ::Time.zone.local(picture[:year], picture[:mon], picture[:mday], picture[:hour], picture[:min], picture[:sec] || 0)#, picture[:zone] || "")
            else
              value = ::Time.zone.parse(value) rescue nil
            end
          end

          self.send(:"#{name}=", value)
        end

        def _get_formatted_picture(name)
          self.send(name.to_sym).strftime(self._formatted_picture_format) rescue nil
        end

        def _formatted_picture_format
          I18n.t('time.formats.default')
        end

      end

    end

  end

end
