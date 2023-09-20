(declare-fun t_ack!2240 () (_ BitVec 64))
(declare-fun t1_ack!2241 () (_ BitVec 64))
(declare-fun h_ack!2243 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!2242 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!2241)
                    ((_ to_fp 11 53) t_ack!2240))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!2241)
               ((_ to_fp 11 53) t_ack!2240))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!2243) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!2241)
                ((_ to_fp 11 53) t_ack!2240))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!2243)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!2241)
               ((_ to_fp 11 53) t_ack!2240))))
(assert (FPCHECK_FMUL_OVERFLOW #x3fa3333333333333 y1_ack!2242))

(check-sat)
(exit)
