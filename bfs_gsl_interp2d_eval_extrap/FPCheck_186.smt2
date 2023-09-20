(declare-fun x1_ack!1866 () (_ BitVec 64))
(declare-fun x0_ack!1871 () (_ BitVec 64))
(declare-fun y0_ack!1867 () (_ BitVec 64))
(declare-fun x_ack!1869 () (_ BitVec 64))
(declare-fun y_ack!1870 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z0_ack!1868 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1871) ((_ to_fp 11 53) x1_ack!1866))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1867) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1869) ((_ to_fp 11 53) x0_ack!1871))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1869) ((_ to_fp 11 53) x1_ack!1866)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1870) ((_ to_fp 11 53) y0_ack!1867))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1870) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1866)
                       ((_ to_fp 11 53) x0_ack!1871))
               ((_ to_fp 11 53) x0_ack!1871))
       ((_ to_fp 11 53) x1_ack!1866)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1866)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1866)
                       ((_ to_fp 11 53) x0_ack!1871)))
       ((_ to_fp 11 53) x0_ack!1871)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1870)
                       ((_ to_fp 11 53) y0_ack!1867))
               ((_ to_fp 11 53) y0_ack!1867))
       ((_ to_fp 11 53) y_ack!1870)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1870)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1870)
                       ((_ to_fp 11 53) y0_ack!1867)))
       ((_ to_fp 11 53) y0_ack!1867)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1869)
                                   ((_ to_fp 11 53) x0_ack!1871))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1866)
                                   ((_ to_fp 11 53) x0_ack!1871)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!1870)
                                   ((_ to_fp 11 53) y0_ack!1867))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!1867))))))
  (FPCHECK_FMUL_ACCURACY (fp.mul roundNearestTiesToEven a!1 a!2) z0_ack!1868)))

(check-sat)
(exit)
