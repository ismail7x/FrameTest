package frametest

import groovy.io.FileType

class Read_dirController {

    def index() { 
		
		def list = []
		
		def dir = new File("D:\\TestRepoLocal\\APIAutomation\\src\\test\\cucumber\\features")
		dir.eachFileRecurse (FileType.FILES) { file ->
		  list << file
		}
		
		list.each {
            println it.name.replaceFirst(~/\.[^\.]+$/, '')
          }
	
		render(view: "index",  model: [name:list.name])
		
		params.list('fileName')
		
		
    }
	
//	def checkedTests = params.list('fileName')
//	
//	//get list of books. this will return only the selected books
//	def selectedTests = fileName.getAll(checkedTests)
//	{
//		for(result in selectedTests){
//		//now manipulate the result as you wish ...
//			list.each {
//				println checkedTests.name
//			}
//		}
//
//	}

}
