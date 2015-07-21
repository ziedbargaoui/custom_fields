# -*- encoding: utf-8 -*-
# stub: custom_fields_effective 2.3.2 ruby lib

Gem::Specification.new do |s|
  s.name = "custom_fields_effective"
  s.version = "2.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Didier Lafforgue"]
  s.date = "2015-07-17"
  s.description = "Manage custom fields to a mongoid document or a collection. This module is one of the core features we implemented in our custom cms named Locomotive."
  s.email = ["didier@nocoffee.fr"]
  s.extra_rdoc_files = ["MIT-LICENSE", "README.textile"]
  s.files = ["MIT-LICENSE", "README.textile", "config/locales", "config/locales/de.yml", "config/locales/en.yml", "config/locales/fr.yml", "config/locales/pt-BR.yml", "config/locales/ru.yml", "lib/custom_fields", "lib/custom_fields.rb", "lib/custom_fields/extensions", "lib/custom_fields/extensions/active_support.rb", "lib/custom_fields/extensions/carrierwave.rb", "lib/custom_fields/extensions/mongoid", "lib/custom_fields/extensions/mongoid/document.rb", "lib/custom_fields/extensions/mongoid/factory.rb", "lib/custom_fields/extensions/mongoid/fields", "lib/custom_fields/extensions/mongoid/fields.rb", "lib/custom_fields/extensions/mongoid/fields/i18n.rb", "lib/custom_fields/extensions/mongoid/fields/localized.rb", "lib/custom_fields/extensions/mongoid/relations", "lib/custom_fields/extensions/mongoid/relations/referenced", "lib/custom_fields/extensions/mongoid/relations/referenced/in.rb", "lib/custom_fields/extensions/mongoid/relations/referenced/many.rb", "lib/custom_fields/extensions/mongoid/validations", "lib/custom_fields/extensions/mongoid/validations/collection_size.rb", "lib/custom_fields/extensions/mongoid/validations/macros.rb", "lib/custom_fields/extensions/origin", "lib/custom_fields/extensions/origin/smash.rb", "lib/custom_fields/field.rb", "lib/custom_fields/source.rb", "lib/custom_fields/target.rb", "lib/custom_fields/target_helpers.rb", "lib/custom_fields/types", "lib/custom_fields/types/belongs_to.rb", "lib/custom_fields/types/boolean.rb", "lib/custom_fields/types/date.rb", "lib/custom_fields/types/date_time.rb", "lib/custom_fields/types/default.rb", "lib/custom_fields/types/email.rb", "lib/custom_fields/types/file.rb", "lib/custom_fields/types/float.rb", "lib/custom_fields/types/has_many.rb", "lib/custom_fields/types/integer.rb", "lib/custom_fields/types/many_to_many.rb", "lib/custom_fields/types/money.rb", "lib/custom_fields/types/relationship_default.rb", "lib/custom_fields/types/select.rb", "lib/custom_fields/types/string.rb", "lib/custom_fields/types/tags.rb", "lib/custom_fields/types/text.rb", "lib/custom_fields/version.rb"]
  s.homepage = "http://github.com/ziedbargaoui/custom_fields"
  s.rubyforge_project = "nowarning"
  s.rubygems_version = "2.4.6"
  s.summary = "Custom fields extension for Mongoid"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mongoid>, ["~> 3.1.6"])
      s.add_runtime_dependency(%q<activesupport>, ["~> 3.2.21"])
      s.add_runtime_dependency(%q<carrierwave-mongoid>, ["~> 0.6.0"])
      s.add_runtime_dependency(%q<money>, ["~> 5.0"])
      s.add_development_dependency(%q<yard>, ["~> 0.7.3"])
      s.add_development_dependency(%q<mocha>, ["~> 0.9.12"])
      s.add_development_dependency(%q<rspec>, ["~> 2.6"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.6.1"])
      s.add_development_dependency(%q<database_cleaner>, ["~> 0.9.1"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<RedCloth>, ["~> 4.2.8"])
    else
      s.add_dependency(%q<mongoid>, ["~> 3.1.6"])
      s.add_dependency(%q<activesupport>, ["~> 3.2.21"])
      s.add_dependency(%q<carrierwave-mongoid>, ["~> 0.6.0"])
      s.add_dependency(%q<money>, ["~> 5.0"])
      s.add_dependency(%q<yard>, ["~> 0.7.3"])
      s.add_dependency(%q<mocha>, ["~> 0.9.12"])
      s.add_dependency(%q<rspec>, ["~> 2.6"])
      s.add_dependency(%q<simplecov>, ["~> 0.6.1"])
      s.add_dependency(%q<database_cleaner>, ["~> 0.9.1"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<RedCloth>, ["~> 4.2.8"])
    end
  else
    s.add_dependency(%q<mongoid>, ["~> 3.1.6"])
    s.add_dependency(%q<activesupport>, ["~> 3.2.21"])
    s.add_dependency(%q<carrierwave-mongoid>, ["~> 0.6.0"])
    s.add_dependency(%q<money>, ["~> 5.0"])
    s.add_dependency(%q<yard>, ["~> 0.7.3"])
    s.add_dependency(%q<mocha>, ["~> 0.9.12"])
    s.add_dependency(%q<rspec>, ["~> 2.6"])
    s.add_dependency(%q<simplecov>, ["~> 0.6.1"])
    s.add_dependency(%q<database_cleaner>, ["~> 0.9.1"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<RedCloth>, ["~> 4.2.8"])
  end
end
