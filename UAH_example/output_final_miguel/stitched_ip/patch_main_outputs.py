from pathlib import Path

path = Path("main.cpp")
text = path.read_text()

backup = Path("main.cpp.bak_outputs")
backup.write_text(text)

old = '''            std::cout << "Salida AXI recibida:"
                      << " ciclo = " << sim_time
                      << " data = " << static_cast<int>(data)
                      << " num_salida = " << outputs.size()
                      << std::endl;
'''

new = '''            std::cout << "Salida AXI recibida:"
                      << " ciclo = " << sim_time
                      << " data = " << static_cast<int>(data)
                      << " num_salida = " << outputs.size()
                      << std::endl;

            if (outputs.size() >= 2) {
                break;
            }
'''

if old not in text:
    print("No se ha encontrado exactamente el bloque de salida. No se ha cambiado esa parte.")
else:
    text = text.replace(old, new)
    path.write_text(text)
    print("Añadido break al recibir 2 salidas.")
    print("Copia de seguridad guardada como main.cpp.bak_outputs")
