(declare-fun x1_ack!1827 () (_ BitVec 64))
(declare-fun x0_ack!1831 () (_ BitVec 64))
(declare-fun y0_ack!1828 () (_ BitVec 64))
(declare-fun x_ack!1829 () (_ BitVec 64))
(declare-fun y_ack!1830 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1831) ((_ to_fp 11 53) x1_ack!1827))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1828) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1829) ((_ to_fp 11 53) x0_ack!1831))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1829) ((_ to_fp 11 53) x1_ack!1827)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1830) ((_ to_fp 11 53) y0_ack!1828))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1830) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1827)
                       ((_ to_fp 11 53) x0_ack!1831))
               ((_ to_fp 11 53) x0_ack!1831))
       ((_ to_fp 11 53) x1_ack!1827)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1827)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1827)
                       ((_ to_fp 11 53) x0_ack!1831)))
       ((_ to_fp 11 53) x0_ack!1831)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1830)
                       ((_ to_fp 11 53) y0_ack!1828))
               ((_ to_fp 11 53) y0_ack!1828))
       ((_ to_fp 11 53) y_ack!1830)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1830)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1830)
                       ((_ to_fp 11 53) y0_ack!1828)))
       ((_ to_fp 11 53) y0_ack!1828)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1829)
                                   ((_ to_fp 11 53) x0_ack!1831))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1827)
                                   ((_ to_fp 11 53) x0_ack!1831)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!1830)
                                   ((_ to_fp 11 53) y0_ack!1828))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!1828))))))
  (FPCHECK_FMUL_ACCURACY a!1 a!2)))

(check-sat)
(exit)
