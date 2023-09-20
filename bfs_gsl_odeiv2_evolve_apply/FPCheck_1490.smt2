(declare-fun t_ack!7206 () (_ BitVec 64))
(declare-fun t1_ack!7207 () (_ BitVec 64))
(declare-fun h_ack!7209 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!7208 () (_ BitVec 64))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!7207)
               ((_ to_fp 11 53) t_ack!7206))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!7209) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7207)
                    ((_ to_fp 11 53) t_ack!7206))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW #x4024000000000000 y1_ack!7208))

(check-sat)
(exit)
