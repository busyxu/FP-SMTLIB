(declare-fun t_ack!7384 () (_ BitVec 64))
(declare-fun t1_ack!7385 () (_ BitVec 64))
(declare-fun h_ack!7387 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!7386 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7385)
                    ((_ to_fp 11 53) t_ack!7384))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!7385)
               ((_ to_fp 11 53) t_ack!7384))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!7387) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW y0_ack!7386 y0_ack!7386))

(check-sat)
(exit)
