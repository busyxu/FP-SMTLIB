(declare-fun t_ack!7150 () (_ BitVec 64))
(declare-fun t1_ack!7151 () (_ BitVec 64))
(declare-fun h_ack!7153 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!7152 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7151)
                    ((_ to_fp 11 53) t_ack!7150))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!7151)
               ((_ to_fp 11 53) t_ack!7150))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!7153) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW #x8000000000000000 y0_ack!7152))

(check-sat)
(exit)
