(declare-fun t_ack!513 () (_ BitVec 64))
(declare-fun t1_ack!514 () (_ BitVec 64))
(declare-fun h_ack!517 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y1_ack!516 () (_ BitVec 64))
(declare-fun y0_ack!515 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!514)
                    ((_ to_fp 11 53) t_ack!513))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!514)
               ((_ to_fp 11 53) t_ack!513))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!517) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!514)
                ((_ to_fp 11 53) t_ack!513))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!517)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!514)
               ((_ to_fp 11 53) t_ack!513))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!514)
                                   ((_ to_fp 11 53) t_ack!513)))
                   ((_ to_fp 11 53) y1_ack!516))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y0_ack!515) a!1)
            (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y0_ack!515) a!1))
    #x3ff0000000000000)))

(check-sat)
(exit)
