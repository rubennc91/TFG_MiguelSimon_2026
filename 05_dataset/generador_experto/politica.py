"""Elección de la política que conduce en las tareas de DAgger (la red), rotando por semilla."""
from typing import Optional


def elegir_pesos(lista: Optional[str], semilla: int) -> Optional[str]:
    """`lista`: rutas de pesos separadas por comas. Rota entre ellas según la semilla de la tarea; vacío -> None."""
    rutas = [r.strip() for r in (lista or "").split(",") if r.strip()]
    return rutas[semilla % len(rutas)] if rutas else None
