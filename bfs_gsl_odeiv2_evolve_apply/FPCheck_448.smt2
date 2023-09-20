(declare-fun t_ack!2112 () (_ BitVec 64))
(declare-fun t1_ack!2113 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun h_ack!2114 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!2113)
                    ((_ to_fp 11 53) t_ack!2112))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!2113)
                    ((_ to_fp 11 53) t_ack!2112))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!2113)
                     ((_ to_fp 11 53) t_ack!2112))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!2113)
                    ((_ to_fp 11 53) t_ack!2112))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW #x3fddc28f5c28f5c3 h_ack!2114))

(check-sat)
(exit)
