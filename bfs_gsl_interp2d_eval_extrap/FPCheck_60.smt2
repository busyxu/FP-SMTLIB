(declare-fun x1_ack!563 () (_ BitVec 64))
(declare-fun x0_ack!567 () (_ BitVec 64))
(declare-fun y0_ack!564 () (_ BitVec 64))
(declare-fun x_ack!565 () (_ BitVec 64))
(declare-fun y_ack!566 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!567) ((_ to_fp 11 53) x1_ack!563))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!564) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!565) ((_ to_fp 11 53) x0_ack!567))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!565) ((_ to_fp 11 53) x1_ack!563)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!566) ((_ to_fp 11 53) y0_ack!564))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!566) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!565)
                                   ((_ to_fp 11 53) x0_ack!567))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!563)
                                   ((_ to_fp 11 53) x0_ack!567)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!566)
                                   ((_ to_fp 11 53) y0_ack!564))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!564))))))
  (FPCHECK_FMUL_ACCURACY a!1 a!2)))

(check-sat)
(exit)
