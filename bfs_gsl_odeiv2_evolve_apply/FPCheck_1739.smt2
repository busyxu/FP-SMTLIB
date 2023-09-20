(declare-fun t_ack!9565 () (_ BitVec 64))
(declare-fun t1_ack!9566 () (_ BitVec 64))
(declare-fun h_ack!9568 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!9567 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9566)
                    ((_ to_fp 11 53) t_ack!9565))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9566)
                    ((_ to_fp 11 53) t_ack!9565))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!9566)
                ((_ to_fp 11 53) t_ack!9565))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!9568)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9566)
                    ((_ to_fp 11 53) t_ack!9565)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9566)
                    ((_ to_fp 11 53) t_ack!9565))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW #x3fa3333333333333 y1_ack!9567))

(check-sat)
(exit)
