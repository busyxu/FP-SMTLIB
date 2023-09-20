(declare-fun t_ack!7233 () (_ BitVec 64))
(declare-fun t1_ack!7234 () (_ BitVec 64))
(declare-fun h_ack!7236 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!7235 () (_ BitVec 64))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!7234)
               ((_ to_fp 11 53) t_ack!7233))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!7236) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7234)
                    ((_ to_fp 11 53) t_ack!7233))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW y0_ack!7235 y0_ack!7235))

(check-sat)
(exit)
