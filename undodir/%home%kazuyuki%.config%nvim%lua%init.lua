Vim�UnDo� 4ۤ�_���c���
xA�f�5!�
����                                      a*)     _�                             ����                                                                                                                                                                                                                                                                                                                                                             a)0,    �                   5��                                                  5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a)3�     �                  �               �                  �               5��                                                �                                                �                                              5�_�                    	        ����                                                                                                                                                                                                                                                                                                                                                             a)3�     �   	            5��    	                                           5�_�                    
        ����                                                                                                                                                                                                                                                                                                                                                             a)3�     �   	               �   
            5��    	                                           5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             a)3�     �   
            5��    
                      ;                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a)3�     �               5��                          <                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a)3�     �                  �               5��                         <              �      5�_�      	                 
    ����                                                                                                                                                                                                                                                                                                                                                             a)3�     �                 Commands:5��       
                 F                    5�_�      
           	      
    ����                                                                                                                                                                                                                                                                                                                                                             a)3�     �                  Commandss     5��                          <                     5�_�   	              
      
    ����                                                                                                                                                                                                                                                                                                                                                             a)3�     �                  Default Values:5��                          <                     5�_�   
                        ����                                                                                                                                                                                                                                                                                                                               
          
       V   
    a)3�     �                    settings = {}�                        end,�                =          return root_pattern(fname) or vim.loop.os_homedir()�                    root_dir = function(fname)�                    }�                      }�                      embeddedLanguages = {�                =      configurationSection = { "html", "css", "javascript" },�                    init_options = {�                    filetypes = { "html" }�                6    cmd = { "vscode-html-language-server", "--stdio" }5��                          <                     �                          o                     �                          �                     �                         �                    �                         �                    �                                             �                          !                     �                          #                     �               
          >      
              �                          v                     �                          {                     5�_�                    
   
    ����                                                                                                                                                                                                                                                                                                                               
          
       V   
    a)3�    �   	   
          require'lspconfig'.html.setup{}5��    	                                            5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        a)4�    �                settings = {}�                end,�                7    return root_pattern(fname) or vim.loop.os_homedir()�                root_dir = function(fname)�                }�                    }�                        javascript = true�                        css = true,�                    embeddedLanguages = {�                ;    configurationSection = { "html", "css", "javascript" },�                init_options = {�                filetypes = { "html" }�   
             2cmd = { "vscode-html-language-server", "--stdio" }�   	              �      
          }�      	            capabilities = capabilities,�                require'lspconfig'.html.setup {�                 �                Icapabilities.textDocument.completion.completionItem.snippetSupport = true�                @local capabilities = vim.lsp.protocol.make_client_capabilities()5��               @       C   N       @       C       �               I       L   �       I       L       �                           �                       �                      "   �              "       �                      !                !       �                         %                    �    	                       *                      �    
           2       5   +      2       5       �                         a                    �                         {                    �               ;       >   �      ;       >       �                         �                    �                         �                    �                                             �                                             �                         (                    �                         -                    �               7       :   K      7       :       �                         �                    �                         �                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a*)     �                9--Enable (broadcasting) snippet capability for completion   C-- local capabilities = vim.lsp.protocol.make_client_capabilities()   L-- capabilities.textDocument.completion.completionItem.snippetSupport = true       "-- require'lspconfig'.html.setup {   !--   capabilities = capabilities,   -- }       5-- cmd = { "vscode-html-language-server", "--stdio" }   -- filetypes = { "html" }   -- init_options = {   >--     configurationSection = { "html", "css", "javascript" },   --     embeddedLanguages = {   --         css = true,   --         javascript = true   --     }   -- }   -- root_dir = function(fname)   :--     return root_pattern(fname) or vim.loop.os_homedir()   -- end,   -- settings = {}5��                                 �              5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             a*)    �                 5��                                                5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a)4�     �             �               llua << EOF   "require'lspconfig'.pyright.setup{}   BEOFocal capabilities = vim.lsp.protocol.make_client_capabilities()5��                        O               1       5�_�   
                    
    ����                                                                                                                                                                                                                                                                                                                                                             a)3�     �             �                   cmd = {  Commands:          Default Values:   6    cmd = { "vscode-html-language-server", "--stdio" }       filetypes = { "html" }       init_options = {   =      configurationSection = { "html", "css", "javascript" },         embeddedLanguages = {           css = true,           javascript = true         }       }       root_dir = function(fname)   =          return root_pattern(fname) or vim.loop.os_homedir()           end,   <    settings = {} "vscode-html-language-server", "--stdio" }5��                        G              �      5��