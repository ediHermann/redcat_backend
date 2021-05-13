'use strict';

/**
 * A set of functions called "actions" for `homepage`
 */

module.exports = {
  async index(ctx) {


    let homePage=[];

    const modules = await  strapi.query('homepage-module').find({ active: 1 ,_sort: 'position:asc'});
    //console.log(modules);

    for(let item of modules) {
      let  moduleName=item.module

      moduleName=moduleName.toLowerCase();
      moduleName=moduleName.substr(0,moduleName.length-1);
      console.log(moduleName);
      let  moduleContent= await  strapi.query(moduleName).find({ id: 1 });

      //console.log(moduleContent)

      homePage.push(moduleContent);


    }
    console.log(homePage);


    const fields = JSON.stringify(homePage);
    ctx.send(fields);
    //ctx.send('Hello World!');
  },

};
