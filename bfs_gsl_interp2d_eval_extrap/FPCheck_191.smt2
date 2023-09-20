(declare-fun x1_ack!1918 () (_ BitVec 64))
(declare-fun x0_ack!1922 () (_ BitVec 64))
(declare-fun y0_ack!1919 () (_ BitVec 64))
(declare-fun x_ack!1920 () (_ BitVec 64))
(declare-fun y_ack!1921 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1922) ((_ to_fp 11 53) x1_ack!1918))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1919) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1920) ((_ to_fp 11 53) x0_ack!1922))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1920) ((_ to_fp 11 53) x1_ack!1918)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1921) ((_ to_fp 11 53) y0_ack!1919))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1921) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1918)
                       ((_ to_fp 11 53) x0_ack!1922))
               ((_ to_fp 11 53) x0_ack!1922))
       ((_ to_fp 11 53) x1_ack!1918)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1918)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1918)
                       ((_ to_fp 11 53) x0_ack!1922)))
       ((_ to_fp 11 53) x0_ack!1922)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1921)
                       ((_ to_fp 11 53) y0_ack!1919))
               ((_ to_fp 11 53) y0_ack!1919))
       ((_ to_fp 11 53) y_ack!1921)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1921)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1921)
                       ((_ to_fp 11 53) y0_ack!1919)))
       ((_ to_fp 11 53) y0_ack!1919)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!1921)
                                   ((_ to_fp 11 53) y0_ack!1919))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!1919))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1920)
                    ((_ to_fp 11 53) x0_ack!1922))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1918)
                    ((_ to_fp 11 53) x0_ack!1922)))
    a!1)))

(check-sat)
(exit)
