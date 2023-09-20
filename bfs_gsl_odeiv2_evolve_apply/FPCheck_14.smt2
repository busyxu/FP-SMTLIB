(declare-fun t_ack!73 () (_ BitVec 64))
(declare-fun t1_ack!74 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!75 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!74)
                    ((_ to_fp 11 53) t_ack!73))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!74)
                    ((_ to_fp 11 53) t_ack!73))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) y0_ack!75)
          ((_ to_fp 11 53) y0_ack!75))
  #x3ff0000000000000))

(check-sat)
(exit)
