(declare-fun t_ack!2248 () (_ BitVec 64))
(declare-fun t1_ack!2249 () (_ BitVec 64))
(declare-fun h_ack!2251 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!2250 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!2249)
                    ((_ to_fp 11 53) t_ack!2248))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!2249)
               ((_ to_fp 11 53) t_ack!2248))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!2251) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!2249)
                ((_ to_fp 11 53) t_ack!2248))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!2251)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!2249)
               ((_ to_fp 11 53) t_ack!2248))))
(assert (FPCHECK_FMUL_UNDERFLOW #x3fa3333333333333 y1_ack!2250))

(check-sat)
(exit)
