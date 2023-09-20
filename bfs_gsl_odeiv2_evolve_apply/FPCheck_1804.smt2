(declare-fun t_ack!10202 () (_ BitVec 64))
(declare-fun t1_ack!10203 () (_ BitVec 64))
(declare-fun h_ack!10205 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!10204 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10203)
                    ((_ to_fp 11 53) t_ack!10202))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10203)
                    ((_ to_fp 11 53) t_ack!10202))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!10203)
                ((_ to_fp 11 53) t_ack!10202))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!10205)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10203)
                    ((_ to_fp 11 53) t_ack!10202)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10203)
                    ((_ to_fp 11 53) t_ack!10202))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW #x3fa887ad701404ac y1_ack!10204))

(check-sat)
(exit)
