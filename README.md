## Webpack 3 Dedupe Issue Demonstration

https://github.com/webpack/webpack/issues/5593

In Webpack 1, modules importing the same version of a dependencies would be deduped via a DedupePlugin. In webpack 3, the DedupePlugin was removed. As you can see in this example, the webpack 1 output here doesn't include a third instance of lodash, but the webpack 3 output does. 

The dependency structure is:

```
- lodash@4
  - dedupe-example-dependency-a
    -lodash@3
  - dedupe-example-dependency-b
    -lodash@3
```

#### Webpack 3
<img width="1860" alt="screen shot 2017-12-14 at 8 56 55 pm" src="https://user-images.githubusercontent.com/7452924/34027421-6e09175e-e111-11e7-80c5-97b3d01b9eb0.png">

#### Webpack 1 with DedupePlugin
<img width="1868" alt="screen shot 2017-12-14 at 8 56 59 pm" src="https://user-images.githubusercontent.com/7452924/34027418-63f6296e-e111-11e7-9ed7-d358ecbb696d.png">
