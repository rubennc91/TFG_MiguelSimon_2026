from pathlib import Path
import re

path = Path("main.cpp")
text = path.read_text()

# Copia de seguridad
backup = Path("main.cpp.bak_denorm")
backup.write_text(text)

# Cambiar decode_norm_from_int8 si existe
text = re.sub(
    r"double\s+decode_norm_from_int8\s*\(\s*int\s+raw\s*\)\s*\{.*?\}",
    """double decode_norm_from_int8(int raw)
{
    return raw / 255.0;
}""",
    text,
    flags=re.S
)

# Cambiar denormalize_v
text = re.sub(
    r"double\s+denormalize_v\s*\(\s*double\s+vnorm\s*\)\s*\{.*?\}",
    """double denormalize_v(double vnorm)
{
    return 13.6 * vnorm - 0.6;
}""",
    text,
    flags=re.S
)

# Cambiar denormalize_w
text = re.sub(
    r"double\s+denormalize_w\s*\(\s*double\s+wnorm\s*\)\s*\{.*?\}",
    """double denormalize_w(double wnorm)
{
    return 2.0 * CV_PI * wnorm - CV_PI;
}""",
    text,
    flags=re.S
)

path.write_text(text)

print("Modificado main.cpp")
print("Copia de seguridad guardada como main.cpp.bak_denorm")
