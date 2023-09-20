(declare-fun t_ack!54 () (_ BitVec 64))
(declare-fun t1_ack!55 () (_ BitVec 64))
(declare-fun h_ack!57 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!56 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!55)
                    ((_ to_fp 11 53) t_ack!54))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!55)
               ((_ to_fp 11 53) t_ack!54))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!57) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW #x4024000000000000 y1_ack!56))

(check-sat)
(exit)
