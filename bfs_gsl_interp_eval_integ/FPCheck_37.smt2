(declare-fun x1_ack!292 () (_ BitVec 64))
(declare-fun x0_ack!297 () (_ BitVec 64))
(declare-fun x2_ack!293 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!294 () (_ BitVec 64))
(declare-fun y1_ack!295 () (_ BitVec 64))
(declare-fun y2_ack!296 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!297) ((_ to_fp 11 53) x1_ack!292)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!292) ((_ to_fp 11 53) x2_ack!293)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!292)
                       ((_ to_fp 11 53) x0_ack!297))
               ((_ to_fp 11 53) x0_ack!297))
       ((_ to_fp 11 53) x1_ack!292)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!292)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!292)
                       ((_ to_fp 11 53) x0_ack!297)))
       ((_ to_fp 11 53) x0_ack!297)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!293)
                       ((_ to_fp 11 53) x1_ack!292))
               ((_ to_fp 11 53) x1_ack!292))
       ((_ to_fp 11 53) x2_ack!293)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!293)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!293)
                       ((_ to_fp 11 53) x1_ack!292)))
       ((_ to_fp 11 53) x1_ack!292)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!292)
                    ((_ to_fp 11 53) x0_ack!297))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!293)
                    ((_ to_fp 11 53) x1_ack!292))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!296)
                           ((_ to_fp 11 53) y1_ack!295))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!293)
                                   ((_ to_fp 11 53) x1_ack!292)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!295)
                           ((_ to_fp 11 53) y0_ack!294))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!292)
                                   ((_ to_fp 11 53) x0_ack!297))))))
  (FPCHECK_FMUL_ACCURACY
    #x4008000000000000
    (fp.sub roundNearestTiesToEven a!1 a!2))))

(check-sat)
(exit)
