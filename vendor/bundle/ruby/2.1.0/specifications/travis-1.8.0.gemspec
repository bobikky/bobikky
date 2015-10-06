# -*- encoding: utf-8 -*-
# stub: travis 1.8.0 ruby lib

Gem::Specification.new do |s|
  s.name = "travis"
  s.version = "1.8.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Konstantin Haase", "Hiro Asari", "Henrik Hodne", "joshua-anderson", "Aaron Hill", "Peter Souter", "Peter van Dijk", "Max Barnash", "Mathias Meyer", "Dan Buch", "Carlos Palhares", "Andreas Tiefenthaler", "Thais Camilo and Konstantin Haase", "Julia S.Simon", "Justin Lambert", "Maarten van Vliet", "Mario Visic", "Matthias Bussonnier", "Michael Mior", "Miro Hron\u{10d}ok", "Neamar", "Nicolas Bessi (nbessi)", "Piotr Sarnacki", "Rapha\u{eb}l Pinson", "Rob Hoelz", "Tobias Wilken", "Zachary Gershman", "Zachary Scott", "jeffdh", "john muhl", "Laurent Petit", "Adam Lavin", "Adrien Brault", "Basarat Ali Syed", "Benjamin Manns", "Daniel Chatfield", "Eric Herot", "George Millo", "Jacob Burkhart", "Joe Rafaniello", "Jon-Erik Schneiderhan", "Jonne Ha\u{df}", "Josh Kalderimis"]
  s.date = "2015-07-15"
  s.description = "CLI and Ruby client library for Travis CI"
  s.email = ["konstantin.mailinglists@googlemail.com", "asari.ruby@gmail.com", "me@henrikhodne.com", "j@zatigo.com", "aa1ronham@gmail.com", "p.morsou@gmail.com", "peter.van.dijk@netherlabs.nl", "i.am@anhero.ru", "meyer@paperplanes.de", "dan@meatballhat.com", "me@xjunior.me", "at@an-ti.eu", "dev+narwen+rkh@rkh.im", "julia.simon@biicode.com", "jlambert@eml.cc", "maartenvanvliet@gmail.com", "mario@mariovisic.com", "bussonniermatthias@gmail.com", "mmior@uwaterloo.ca", "miro@hroncok.cz", "neamar@neamar.fr", "nbessi@users.noreply.github.com", "drogus@gmail.com", "raphael.pinson@camptocamp.com", "rob@hoelz.ro", "tw@cloudcontrol.de", "pair+zg@pivotallabs.com", "e@zzak.io", "jeffdh@gmail.com", "git@johnmuhl.com", "laurent.petit@gmail.com", "adam@lavoaster.co.uk", "adrien.brault@gmail.com", "basaratali@gmail.com", "benmanns@gmail.com", "chatfielddaniel@gmail.com", "eric.github@herot.com", "georgejulianmillo@gmail.com", "jburkhart@engineyard.com", "jrafanie@users.noreply.github.com", "jon-erik.schneiderhan@meyouhealth.com", "me@jhass.eu", "josh.kalderimis@gmail.com"]
  s.executables = ["travis"]
  s.files = ["bin/travis"]
  s.homepage = "https://github.com/travis-ci/travis.rb"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Travis CI client"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>, ["~> 0.9"])
      s.add_runtime_dependency(%q<faraday_middleware>, [">= 0.9.1", "~> 0.9"])
      s.add_runtime_dependency(%q<highline>, ["~> 1.6"])
      s.add_runtime_dependency(%q<backports>, [">= 0"])
      s.add_runtime_dependency(%q<gh>, ["~> 0.13"])
      s.add_runtime_dependency(%q<launchy>, ["~> 2.1"])
      s.add_runtime_dependency(%q<pry>, ["< 0.10", "~> 0.9"])
      s.add_runtime_dependency(%q<typhoeus>, [">= 0.6.8", "~> 0.6"])
      s.add_runtime_dependency(%q<pusher-client>, ["~> 0.4"])
      s.add_runtime_dependency(%q<addressable>, ["~> 2.3"])
      s.add_development_dependency(%q<rspec>, ["~> 2.12"])
      s.add_development_dependency(%q<sinatra>, ["~> 1.3"])
      s.add_development_dependency(%q<rack-test>, ["~> 0.6"])
    else
      s.add_dependency(%q<faraday>, ["~> 0.9"])
      s.add_dependency(%q<faraday_middleware>, [">= 0.9.1", "~> 0.9"])
      s.add_dependency(%q<highline>, ["~> 1.6"])
      s.add_dependency(%q<backports>, [">= 0"])
      s.add_dependency(%q<gh>, ["~> 0.13"])
      s.add_dependency(%q<launchy>, ["~> 2.1"])
      s.add_dependency(%q<pry>, ["< 0.10", "~> 0.9"])
      s.add_dependency(%q<typhoeus>, [">= 0.6.8", "~> 0.6"])
      s.add_dependency(%q<pusher-client>, ["~> 0.4"])
      s.add_dependency(%q<addressable>, ["~> 2.3"])
      s.add_dependency(%q<rspec>, ["~> 2.12"])
      s.add_dependency(%q<sinatra>, ["~> 1.3"])
      s.add_dependency(%q<rack-test>, ["~> 0.6"])
    end
  else
    s.add_dependency(%q<faraday>, ["~> 0.9"])
    s.add_dependency(%q<faraday_middleware>, [">= 0.9.1", "~> 0.9"])
    s.add_dependency(%q<highline>, ["~> 1.6"])
    s.add_dependency(%q<backports>, [">= 0"])
    s.add_dependency(%q<gh>, ["~> 0.13"])
    s.add_dependency(%q<launchy>, ["~> 2.1"])
    s.add_dependency(%q<pry>, ["< 0.10", "~> 0.9"])
    s.add_dependency(%q<typhoeus>, [">= 0.6.8", "~> 0.6"])
    s.add_dependency(%q<pusher-client>, ["~> 0.4"])
    s.add_dependency(%q<addressable>, ["~> 2.3"])
    s.add_dependency(%q<rspec>, ["~> 2.12"])
    s.add_dependency(%q<sinatra>, ["~> 1.3"])
    s.add_dependency(%q<rack-test>, ["~> 0.6"])
  end
end
