'use strict';

/**
 * A set of functions called "actions" for `dashboard`
 */

module.exports = {
    async index(ctx) {
    let content={voiceCount:0,languages:[]};
    const items = await  strapi.query('catalogue').find({ id_gt:0 ,_sort: 'language:asc'});
    //console.log(items);
    const totalItems=items.length;
    content.voiceCount=totalItems;
    let languages=[];
    let  prevLang='';
    let cnt=0;
    let langElem={language:'', voices:0};
    for(let item of items) {
      let  lang=item.language;
      if(lang!=prevLang)
      {
        if(prevLang!='')
        {
          languages.push(langElem);
        }
        langElem ={language:lang, voices:1};
      }
      else
      {
         langElem.voices++;
      }
      prevLang=lang;
    }
    //push last element;
    languages.push(langElem);
    content.languages=languages;
    console.log(content);
    const fields = JSON.stringify(content);
    ctx.send(fields);
  },

};
