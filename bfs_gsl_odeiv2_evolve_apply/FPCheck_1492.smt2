(declare-fun t_ack!7225 () (_ BitVec 64))
(declare-fun t1_ack!7226 () (_ BitVec 64))
(declare-fun h_ack!7228 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!7227 () (_ BitVec 64))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!7226)
               ((_ to_fp 11 53) t_ack!7225))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!7228) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7226)
                    ((_ to_fp 11 53) t_ack!7225))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW y0_ack!7227 y0_ack!7227))

(check-sat)
(exit)
