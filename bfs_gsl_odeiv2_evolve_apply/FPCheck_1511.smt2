(declare-fun t_ack!7392 () (_ BitVec 64))
(declare-fun t1_ack!7393 () (_ BitVec 64))
(declare-fun h_ack!7395 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!7394 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7393)
                    ((_ to_fp 11 53) t_ack!7392))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!7393)
               ((_ to_fp 11 53) t_ack!7392))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!7395) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW y0_ack!7394 y0_ack!7394))

(check-sat)
(exit)
