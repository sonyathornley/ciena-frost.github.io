Overview
--------

Frost leverages a number of open source projects and Ciena built addons for app development.

Functionality includes:
- [Addons](https://guides.emberjs.com/v2.2.0/addons-and-dependencies/managing-dependencies/)
- [Animation](http://ef4.github.io/liquid-fire/)
- [CSS polyfills](http://bourbon.io/)
- [Code coverage](https://github.com/sglanzer/ember-cli-blanket)
- [Code style](https://github.com/dockyard/ember-suave)
- [Components](https://guides.emberjs.com/v2.2.0/components/defining-a-component/)
- [D3 visualization](http://d3js.org/)
- [Date formatting](https://github.com/stefanpenner/ember-moment)
- [Data stores](https://guides.emberjs.com/v2.2.0/models/)
- [Debugging](https://guides.emberjs.com/v2.2.0/ember-inspector/installation/)
- [Dependency injection](https://guides.emberjs.com/v2.2.0/applications/dependency-injection/)
- [ES6](https://github.com/babel/ember-cli-babel)
- [Frost addons](https://bitbucket.ciena.com/projects/NMS_FROST)
- Functional programming [Ember](http://emberjs.com/api/classes/Ember.computed.html) [lodash](https://lodash.com/docs)
- [Mocking](http://www.ember-cli-mirage.com/)
- [Object binding/observation](https://guides.emberjs.com/v2.2.0/object-model/)
- [Responsive layout](https://github.com/freshbooks/ember-responsive)
- [REST conventions](http://jsonapi.org/)
- [Routing](https://guides.emberjs.com/v2.2.0/routing/)
- [Services](https://guides.emberjs.com/v2.2.0/applications/services/)
- [SCSS](https://bitbucket.ciena.com/projects/NMS_FROST/repos/frost-css/browse/styles/frost) variables and patterns
- [SVG](https://bitbucket.ciena.com/projects/NMS_FROST/repos/frost-svg/browse/public/svgs) icons and images
- [Templating](https://guides.emberjs.com/v2.2.0/templates/handlebars-basics/)
- [Testing](https://guides.emberjs.com/v2.2.0/testing/) with [Mocha](https://github.com/switchfly/ember-cli-mocha/)

### Project structure

Most features in a Frost app (routes, controllers, template, components) are organized using
[pods](http://ember-cli.com/user-guide/#pod-structure) (--pod with generators) with the exception
of the following top level entities:
- data (models, adapters, serializers)
- mirage (mock server, faker database)
- routing
- services (including initializers)
- transitions (animation hooks)

Until pods 2.0 is released, it's up to individuals to follow these conventions.

### Running an existing project
```bash
git clone <project>
cd <project>
npm install && bower install
ember server
```

Open a browser to http://<server>:4200 to view the project.

### Creating a new project

```bash
npm install -g fr-cli-init
fr-init // Answer questions
cd <project>
ember init
ember install frost-cli
ember frost init // Answer yes (press enter) for all prompts
rm -rf node_modules bower_components
npm install && bower install
ember server
```

Open a browser to http://<server>:4200 to view the project.

### Testing a project

Run `ember test` or alternatively run `ember server` and open a browser to `<server>:4200/tests?coverage`

### Deploying a project

http://ember-cli.com/user-guide/#deployments
