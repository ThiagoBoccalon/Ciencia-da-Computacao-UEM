
def criatabela(file):
    with open(file) as f:
        linhas = f.readlines()[1:]
        linhasquebradas = map(lambda x: x.replace('"', '')[:-1].split(';'), linhas)
        

readfile('PACIENTE.TXT')
