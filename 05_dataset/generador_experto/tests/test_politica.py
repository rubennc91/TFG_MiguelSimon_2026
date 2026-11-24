import pytest

from generador_experto.politica import elegir_pesos


def test_rota_segun_la_semilla():
    lista = "a.npz,b.npz,c.npz"
    assert [elegir_pesos(lista, s) for s in range(6)] == ["a.npz", "b.npz", "c.npz", "a.npz", "b.npz", "c.npz"]


def test_un_solo_modelo():
    assert elegir_pesos("solo.npz", 7) == "solo.npz"


def test_sin_pesos_es_none():
    assert elegir_pesos("", 3) is None and elegir_pesos(None, 3) is None


def test_espacios_y_vacios_se_ignoran():
    assert elegir_pesos(" a.npz , ,b.npz ", 1) == "b.npz"
