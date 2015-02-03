module.exports = function(grunt) {

 grunt.initConfig({
  watch: {
      files: ['/src/*','README.md'],
      tasks: ['markdown']
    },
  markdown: {
    all: {
      files: [
        {
          expand: true,
          src: 'README.md',
          dest: './',
          ext: '.html'
        }
      ],
      options: {
        template: 'src/cv.tpl',
       /* preCompile: function(src, context) {  
          return src;
        },*/
        postCompile: function(src, context) {   
          src = src.replace(/\{/g,'<small>');
          src = src.replace(/\}/g,'</small>');

          //containers
          src = src.replace(/<!--- ([\w\.\d\-]+) -->/g, function(str,arg){ 
            var found = arg.split(".");
            var id = found.shift(); 
            var className = found.join(" ");
              return '<div id="'+id+(className?'" class="'+className:"")+'">';
          });
          src = src.replace(/<!--- \/([\w.\-\d]+) -->/g, "</div>")

          return src;
        },
        autoTemplate: false,
      //  autoTemplateFormat: 'jst',
      /*  markdownOptions: {
          gfm: true,
          highlight: 'manual',
          codeLines: {
            before: '<span>',
            after: '</span>'
          }
        }*/
      }
    }
  }
});



  grunt.loadNpmTasks('grunt-markdown');
  grunt.loadNpmTasks('grunt-contrib-watch');

  grunt.registerTask('default', ['markdown']); 

};