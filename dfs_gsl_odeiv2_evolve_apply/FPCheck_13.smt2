(declare-fun t_ack!81 () (_ BitVec 64))
(declare-fun t1_ack!82 () (_ BitVec 64))
(declare-fun h_ack!84 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!83 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!82)
                    ((_ to_fp 11 53) t_ack!81))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!82)
               ((_ to_fp 11 53) t_ack!81))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!84) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW y0_ack!83 y0_ack!83))

(check-sat)
(exit)
