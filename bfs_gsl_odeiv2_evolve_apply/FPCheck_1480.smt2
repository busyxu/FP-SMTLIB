(declare-fun t_ack!7132 () (_ BitVec 64))
(declare-fun t1_ack!7133 () (_ BitVec 64))
(declare-fun h_ack!7135 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!7134 () (_ BitVec 64))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!7133)
               ((_ to_fp 11 53) t_ack!7132))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!7135) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7133)
                    ((_ to_fp 11 53) t_ack!7132))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW #x8000000000000000 y0_ack!7134))

(check-sat)
(exit)
