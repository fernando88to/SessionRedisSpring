package sessionredisspring

class IndexController {

    def index() {
        session.setAttribute("nome",params.nome)
        render 'foi'
    }
    def index2() {
        def attribute = session.getAttribute('nome')
        render attribute ? attribute : 'sem sessão'

    }
    // get hostname
    def hostname(){
        String version = 4
        render InetAddress.getLocalHost().getHostName() + " version " + version
    }

    def savesession(){
        def objeto = [:]
        objeto.nome = 'Fernando'
        objeto.data = new Date()
        List<String> rules = ['nome','data', 'teste', 'id', 'foi','nome2', 'aaa','bbb', 'ccc', 'ddd',
        'eee', 'fff']
        objeto.regras  = rules
        session.setAttribute('objeto', objeto)
        render 'foi'

    }
}
