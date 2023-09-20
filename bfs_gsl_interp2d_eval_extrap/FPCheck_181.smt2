(declare-fun x1_ack!1807 () (_ BitVec 64))
(declare-fun x0_ack!1811 () (_ BitVec 64))
(declare-fun y0_ack!1808 () (_ BitVec 64))
(declare-fun x_ack!1809 () (_ BitVec 64))
(declare-fun y_ack!1810 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1811) ((_ to_fp 11 53) x1_ack!1807))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1808) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1809) ((_ to_fp 11 53) x0_ack!1811))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1809) ((_ to_fp 11 53) x1_ack!1807)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1810) ((_ to_fp 11 53) y0_ack!1808))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1810) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1807)
                       ((_ to_fp 11 53) x0_ack!1811))
               ((_ to_fp 11 53) x0_ack!1811))
       ((_ to_fp 11 53) x1_ack!1807)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1807)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1807)
                       ((_ to_fp 11 53) x0_ack!1811)))
       ((_ to_fp 11 53) x0_ack!1811)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1810)
                       ((_ to_fp 11 53) y0_ack!1808))
               ((_ to_fp 11 53) y0_ack!1808))
       ((_ to_fp 11 53) y_ack!1810)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1810)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1810)
                       ((_ to_fp 11 53) y0_ack!1808)))
       ((_ to_fp 11 53) y0_ack!1808)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1809)
                                   ((_ to_fp 11 53) x0_ack!1811))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1807)
                                   ((_ to_fp 11 53) x0_ack!1811)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!1810)
                                   ((_ to_fp 11 53) y0_ack!1808))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!1808))))))
  (FPCHECK_FMUL_OVERFLOW a!1 a!2)))

(check-sat)
(exit)
