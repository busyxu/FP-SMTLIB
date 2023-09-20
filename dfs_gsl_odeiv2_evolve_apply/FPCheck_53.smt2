(declare-fun t_ack!419 () (_ BitVec 64))
(declare-fun t1_ack!420 () (_ BitVec 64))
(declare-fun h_ack!423 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y1_ack!422 () (_ BitVec 64))
(declare-fun y0_ack!421 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!420)
                    ((_ to_fp 11 53) t_ack!419))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!420)
               ((_ to_fp 11 53) t_ack!419))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!423) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!420)
                ((_ to_fp 11 53) t_ack!419))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!423)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!420)
               ((_ to_fp 11 53) t_ack!419))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!420)
                                   ((_ to_fp 11 53) t_ack!419)))
                   ((_ to_fp 11 53) y1_ack!422))))
  (FPCHECK_FSUB_ACCURACY
    #x8000000000000000
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y0_ack!421) a!1))))

(check-sat)
(exit)
