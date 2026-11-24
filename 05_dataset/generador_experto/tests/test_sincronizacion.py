import pytest

from generador_experto.sincronizacion import BufferOdom, DetectorAtasco


def test_cercana_y_desfase():
    b = BufferOdom()
    for t in (1.00, 1.05, 1.10):
        b.anadir(t, x=t * 10, y=0.0, yaw=0.0, v=5.0)
    reg, desfase = b.cercana(1.06)
    assert reg.x == pytest.approx(10.5) and desfase == pytest.approx(0.01)


def test_vacio_devuelve_none():
    assert BufferOdom().cercana(1.0) is None


def test_descarta_lo_antiguo():
    b = BufferOdom(ventana=1.0)
    b.anadir(0.0, 0, 0, 0, 0)
    b.anadir(5.0, 1, 0, 0, 0)
    reg, desfase = b.cercana(0.1)
    assert reg.x == 1 and desfase == pytest.approx(4.9)     # el de t=0 ya no está


def test_atasco_tras_un_segundo_parado():
    d = DetectorAtasco(t_max=1.0)
    assert d.actualizar(0.0, v_real=0.0, v_ord=5.0) is False
    assert d.actualizar(0.5, v_real=0.1, v_ord=5.0) is False
    assert d.actualizar(1.05, v_real=0.1, v_ord=5.0) is True


def test_atasco_se_reinicia_si_el_coche_se_mueve():
    d = DetectorAtasco(t_max=1.0)
    d.actualizar(0.0, 0.0, 5.0)
    d.actualizar(0.9, 0.0, 5.0)
    assert d.actualizar(1.0, v_real=3.0, v_ord=5.0) is False        # se movió: cuenta desde cero
    assert d.actualizar(1.5, v_real=0.0, v_ord=5.0) is False


def test_sin_orden_de_avanzar_no_es_atasco():
    d = DetectorAtasco(t_max=1.0)
    d.actualizar(0.0, 0.0, 1.0)
    assert d.actualizar(5.0, 0.0, 1.0) is False


def test_atasco_olvidar_tras_reinicio():
    d = DetectorAtasco(t_max=1.0)
    d.actualizar(0.0, 0.0, 5.0)
    d.olvidar()
    assert d.actualizar(1.5, 0.0, 5.0) is False
