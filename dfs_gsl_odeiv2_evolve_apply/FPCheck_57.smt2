(declare-fun t_ack!460 () (_ BitVec 64))
(declare-fun t1_ack!461 () (_ BitVec 64))
(declare-fun h_ack!464 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!463 () (_ BitVec 64))
(declare-fun y0_ack!462 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!461)
                    ((_ to_fp 11 53) t_ack!460))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!461)
               ((_ to_fp 11 53) t_ack!460))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!464) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!461)
                ((_ to_fp 11 53) t_ack!460))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!464)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!461)
               ((_ to_fp 11 53) t_ack!460))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!461)
                                   ((_ to_fp 11 53) t_ack!460)))
                   ((_ to_fp 11 53) y1_ack!463))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y0_ack!462) a!1)
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y0_ack!462) a!1))))

(check-sat)
(exit)
