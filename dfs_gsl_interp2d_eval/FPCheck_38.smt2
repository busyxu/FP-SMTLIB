(declare-fun x1_ack!378 () (_ BitVec 64))
(declare-fun x0_ack!382 () (_ BitVec 64))
(declare-fun y0_ack!379 () (_ BitVec 64))
(declare-fun x_ack!380 () (_ BitVec 64))
(declare-fun y_ack!381 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!382) ((_ to_fp 11 53) x1_ack!378))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!379) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!380) ((_ to_fp 11 53) x0_ack!382))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!380) ((_ to_fp 11 53) x1_ack!378))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!381) ((_ to_fp 11 53) y0_ack!379))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!381) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!380) ((_ to_fp 11 53) x0_ack!382))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!380) ((_ to_fp 11 53) x1_ack!378))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!381) ((_ to_fp 11 53) y0_ack!379))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!381) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!378)
                       ((_ to_fp 11 53) x0_ack!382))
               ((_ to_fp 11 53) x0_ack!382))
       ((_ to_fp 11 53) x1_ack!378)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!378)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!378)
                       ((_ to_fp 11 53) x0_ack!382)))
       ((_ to_fp 11 53) x0_ack!382)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!379))
               ((_ to_fp 11 53) y0_ack!379))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!379)))
       ((_ to_fp 11 53) y0_ack!379)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!381)
                                   ((_ to_fp 11 53) y0_ack!379))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!379))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!380)
                    ((_ to_fp 11 53) x0_ack!382))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!378)
                    ((_ to_fp 11 53) x0_ack!382)))
    a!1)))

(check-sat)
(exit)
