(declare-fun t_ack!7214 () (_ BitVec 64))
(declare-fun t1_ack!7215 () (_ BitVec 64))
(declare-fun h_ack!7217 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!7216 () (_ BitVec 64))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!7215)
               ((_ to_fp 11 53) t_ack!7214))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!7217) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7215)
                    ((_ to_fp 11 53) t_ack!7214))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY #x4024000000000000 y1_ack!7216))

(check-sat)
(exit)
