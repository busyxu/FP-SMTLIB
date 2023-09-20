(declare-fun t_ack!202 () (_ BitVec 64))
(declare-fun t1_ack!203 () (_ BitVec 64))
(declare-fun h_ack!204 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!203)
                    ((_ to_fp 11 53) t_ack!202))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!203)
               ((_ to_fp 11 53) t_ack!202))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!204) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!203)
                ((_ to_fp 11 53) t_ack!202))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!204)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!203)
               ((_ to_fp 11 53) t_ack!202))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fac71c71c71c71c
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) t1_ack!203)
          ((_ to_fp 11 53) t_ack!202))))

(check-sat)
(exit)
