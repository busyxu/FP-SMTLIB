(declare-fun x1_ack!280 () (_ BitVec 64))
(declare-fun x0_ack!285 () (_ BitVec 64))
(declare-fun x2_ack!281 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!282 () (_ BitVec 64))
(declare-fun y1_ack!283 () (_ BitVec 64))
(declare-fun y2_ack!284 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!285) ((_ to_fp 11 53) x1_ack!280)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!280) ((_ to_fp 11 53) x2_ack!281)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!280)
                       ((_ to_fp 11 53) x0_ack!285))
               ((_ to_fp 11 53) x0_ack!285))
       ((_ to_fp 11 53) x1_ack!280)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!280)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!280)
                       ((_ to_fp 11 53) x0_ack!285)))
       ((_ to_fp 11 53) x0_ack!285)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!281)
                       ((_ to_fp 11 53) x1_ack!280))
               ((_ to_fp 11 53) x1_ack!280))
       ((_ to_fp 11 53) x2_ack!281)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!281)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!281)
                       ((_ to_fp 11 53) x1_ack!280)))
       ((_ to_fp 11 53) x1_ack!280)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!280)
                    ((_ to_fp 11 53) x0_ack!285))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!281)
                    ((_ to_fp 11 53) x1_ack!280))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!284)
                           ((_ to_fp 11 53) y1_ack!283))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!281)
                                   ((_ to_fp 11 53) x1_ack!280)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!283)
                           ((_ to_fp 11 53) y0_ack!282))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!280)
                                   ((_ to_fp 11 53) x0_ack!285))))))
  (FPCHECK_FMUL_UNDERFLOW
    #x4008000000000000
    (fp.sub roundNearestTiesToEven a!1 a!2))))

(check-sat)
(exit)
