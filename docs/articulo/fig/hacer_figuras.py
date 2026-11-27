"""Figuras de datos del artículo (circuitos, imágenes de entrada, resultados). Uso: python hacer_figuras.py"""
import numpy as np, matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
R = "/home/ruben/TFG_MiguelSimon_2026/05_dataset/generador_experto/datos/circuitos/"
plt.rcParams.update({"font.size": 8, "font.family": "serif"})

# --- circuitos
cir = [("montmelo","Montmeló","train"),("montreal","Montreal","train"),("simple","synthetic","train"),
       ("many_curves","many curves","train"),("monaco","Monaco","train"),
       ("nurburgring","Nürburgring","validation"),("silverstone","Silverstone","closed-loop test")]
col = {"train":"#1f77b4","validation":"#ff7f0e","closed-loop test":"#d62728"}
fig, ax = plt.subplots(1, 7, figsize=(7.4, 1.5))
for a,(n,t,r) in zip(ax,cir):
    p = np.load(R+n+".npz")["puntos"]; p = np.vstack([p,p[:1]])
    a.plot(p[:,0],p[:,1],color=col[r],lw=1.1); a.set_aspect("equal"); a.axis("off")
    a.set_title(t, fontsize=7, color=col[r])
h=[plt.Line2D([],[],color=c,label=k) for k,c in col.items()]
fig.legend(handles=h,loc="lower center",ncol=3,frameon=False,fontsize=7,bbox_to_anchor=(0.5,-0.08))
fig.savefig("fig/circuitos.pdf",bbox_inches="tight"); plt.close(fig)

# --- imágenes de entrada de la red
d = np.load("/home/ruben/datasets/experto_f1_v2/cache_val_32x24.npz")
x,y,k = d["x"].reshape(-1,3,24,32), d["y"], np.abs(d["kappa"])
idx = [int(np.argmin(np.abs(k-t)+ (np.hypot(*(y[:,:2]-y[:,:2]).T) if False else 0))) for t in (0.0,0.04,0.10,0.2)]
fig, ax = plt.subplots(1, 4, figsize=(7.0, 1.4))
for a,i in zip(ax,idx):
    a.imshow(x[i].transpose(1,2,0), interpolation="nearest"); a.set_xticks([]); a.set_yticks([])
    a.set_title(r"$|\kappa|$=%.2f m$^{-1}$" % k[i], fontsize=7)
fig.savefig("fig/entradas.pdf",bbox_inches="tight"); plt.close(fig)

# --- lazo cerrado: MLP q4 / q4v3 / CNN cq4
lab=["MLP w4a4\n(v2 only)","MLP w4a4\n(v2+v3)","CNN w4a4\n(v2+v3)"]
mont=[8,6,15]; nur=[5,11,19]
fig, ax = plt.subplots(figsize=(3.4,2.0)); w=0.38; xs=np.arange(3)
ax.bar(xs-w/2,mont,w,label="Montmeló",color="#1f77b4"); ax.bar(xs+w/2,nur,w,label="Nürburgring",color="#ff7f0e")
for i in range(3):
    ax.text(i-w/2,mont[i]+.3,mont[i],ha="center",fontsize=7); ax.text(i+w/2,nur[i]+.3,nur[i],ha="center",fontsize=7)
ax.set_xticks(xs); ax.set_xticklabels(lab,fontsize=7); ax.set_ylim(0,22); ax.set_ylabel("2-lap completions (of 20)")
ax.legend(frameon=False,fontsize=7,loc="upper left"); ax.spines[["top","right"]].set_visible(False)
fig.savefig("fig/lazo_cerrado.pdf",bbox_inches="tight"); plt.close(fig)

# --- plegado: ciclos vs LUT
fig, ax = plt.subplots(figsize=(3.4,2.0))
cyc=[91425,10716,4729]; lut=[5713,6730,7946]; nm=["original\n(min. folding)","folded\n(x8)","parallel"]
ax.plot(lut,[c/1e5*1e3*0.01 for c in cyc],"o-",color="k")  # ms a 100 MHz
for l,c,n in zip(lut,cyc,nm): ax.annotate(f"{n}\n{c/1e5:.2f} ms",(l,c/1e5*1e3*0.01),textcoords="offset points",xytext=(6,4),fontsize=6.5)
ax.set_yscale("log"); ax.set_xlabel("LUT of the FINN IP (out of context)"); ax.set_ylabel("latency at 100 MHz (ms)")
ax.set_xlim(5300,9600); ax.spines[["top","right"]].set_visible(False)
fig.savefig("fig/plegado.pdf",bbox_inches="tight"); plt.close(fig)
print("ok")

# --- imagen de la cámara de Gazebo y su reducción 32x24
import cv2, csv
im = cv2.imread("/home/ruben/TFG_MiguelSimon_2026/04_ros2_gazebo/f1_ws/results/camara_f1.png")[:, :, ::-1]
pq = cv2.resize(im, (32, 24), interpolation=cv2.INTER_LINEAR)
fig, ax = plt.subplots(1, 2, figsize=(5.0, 1.7), gridspec_kw={"width_ratios": [4, 4]})
ax[0].imshow(im); ax[0].set_title("Gazebo camera, 640$\\times$480", fontsize=7)
ax[1].imshow(pq, interpolation="nearest"); ax[1].set_title("network input, 32$\\times$24", fontsize=7)
for a in ax: a.set_xticks([]); a.set_yticks([])
fig.savefig("fig/camara.pdf", bbox_inches="tight"); plt.close(fig)

# --- trayectoria del lazo cerrado con la placa (Silverstone, 1 vuelta)
r = list(csv.DictReader(open("/home/ruben/lazo_ip_verilator/lazo_cerrado/cnn_ip_verilator_hilplaca2_silverstone_s+1.csv")))
x = np.array([float(a["x"]) for a in r]); y = np.array([float(a["y"]) for a in r]); cte = np.array([abs(float(a["cte"])) for a in r])
p = np.load(R + "silverstone.npz")["puntos"]; p = np.vstack([p, p[:1]])
fig, ax = plt.subplots(figsize=(3.4, 2.6))
ax.plot(p[:, 0], p[:, 1], color="0.7", lw=4, solid_capstyle="round", zorder=1)
sc = ax.scatter(x, y, c=cte, s=7, cmap="plasma", vmin=0, vmax=0.5, zorder=3)
ax.set_aspect("equal"); ax.axis("off"); cb = fig.colorbar(sc, ax=ax, shrink=0.7); cb.set_label("|lateral error| (m)", fontsize=7)
fig.savefig("fig/trayectoria_placa.pdf", bbox_inches="tight"); plt.close(fig)
print("ok2")
