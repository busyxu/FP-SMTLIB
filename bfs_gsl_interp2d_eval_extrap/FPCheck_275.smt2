(declare-fun x1_ack!2832 () (_ BitVec 64))
(declare-fun x0_ack!2836 () (_ BitVec 64))
(declare-fun y0_ack!2833 () (_ BitVec 64))
(declare-fun x_ack!2834 () (_ BitVec 64))
(declare-fun y_ack!2835 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2836) ((_ to_fp 11 53) x1_ack!2832))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2833) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2834) ((_ to_fp 11 53) x0_ack!2836))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2834) ((_ to_fp 11 53) x1_ack!2832))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2835) ((_ to_fp 11 53) y0_ack!2833))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2835) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2832)
                       ((_ to_fp 11 53) x0_ack!2836))
               ((_ to_fp 11 53) x0_ack!2836))
       ((_ to_fp 11 53) x1_ack!2832)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2832)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2832)
                       ((_ to_fp 11 53) x0_ack!2836)))
       ((_ to_fp 11 53) x0_ack!2836)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2833))
               ((_ to_fp 11 53) y0_ack!2833))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2833)))
       ((_ to_fp 11 53) y0_ack!2833)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!2835)
                                   ((_ to_fp 11 53) y0_ack!2833))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!2833))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!2834)
                    ((_ to_fp 11 53) x0_ack!2836))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2832)
                    ((_ to_fp 11 53) x0_ack!2836)))
    a!1)))

(check-sat)
(exit)
