(declare-fun x1_ack!1817 () (_ BitVec 64))
(declare-fun x0_ack!1821 () (_ BitVec 64))
(declare-fun y0_ack!1818 () (_ BitVec 64))
(declare-fun x_ack!1819 () (_ BitVec 64))
(declare-fun y_ack!1820 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1821) ((_ to_fp 11 53) x1_ack!1817))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1818) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1819) ((_ to_fp 11 53) x0_ack!1821))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1819) ((_ to_fp 11 53) x1_ack!1817)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1820) ((_ to_fp 11 53) y0_ack!1818))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1820) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1817)
                       ((_ to_fp 11 53) x0_ack!1821))
               ((_ to_fp 11 53) x0_ack!1821))
       ((_ to_fp 11 53) x1_ack!1817)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1817)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1817)
                       ((_ to_fp 11 53) x0_ack!1821)))
       ((_ to_fp 11 53) x0_ack!1821)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1820)
                       ((_ to_fp 11 53) y0_ack!1818))
               ((_ to_fp 11 53) y0_ack!1818))
       ((_ to_fp 11 53) y_ack!1820)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1820)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1820)
                       ((_ to_fp 11 53) y0_ack!1818)))
       ((_ to_fp 11 53) y0_ack!1818)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1819)
                                   ((_ to_fp 11 53) x0_ack!1821))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1817)
                                   ((_ to_fp 11 53) x0_ack!1821)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!1820)
                                   ((_ to_fp 11 53) y0_ack!1818))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!1818))))))
  (FPCHECK_FMUL_UNDERFLOW a!1 a!2)))

(check-sat)
(exit)
