module.exports = function(grunt) {

 grunt.initConfig({
  watch: {
      files: ['src/*'],
      tasks: ['default']
    },
  rename: {
        moveHTML: {
            src: 'src/text.html',
            dest: 'index.html'
        }, 
    },
  copy: {
    copyREADME: {
      src: 'src/text.md',
      dest: 'README.md',
      options: {
        processContent: function (content, srcpath) {  
          return content.replace(/<!--(.*?)-->/g,'');
        },
      },
    },
  },
  markdown: {
    all: {
      files: [
        {
          expand: true,
          src: 'src/text.md',
          dest: '.',
          ext: '.html'
        }
      ],
      options: {
        template: 'src/cv.tpl',
        preCompile: function(src, context) {   
          src = src.replace(/\{/g,'<span>');
          src = src.replace(/\}/g,'</span>');
           return src;
        }, 
        postCompile: function(src, context) {    

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


  grunt.loadNpmTasks('grunt-contrib-copy');
  grunt.loadNpmTasks('grunt-rename');
  grunt.loadNpmTasks('grunt-markdown');
  grunt.loadNpmTasks('grunt-contrib-watch');

  grunt.registerTask('default', ['markdown','rename','copy']); 

};