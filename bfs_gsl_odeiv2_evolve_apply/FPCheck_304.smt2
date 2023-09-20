(declare-fun t_ack!1422 () (_ BitVec 64))
(declare-fun t1_ack!1423 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!1424 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1423)
                    ((_ to_fp 11 53) t_ack!1422))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1423)
                    ((_ to_fp 11 53) t_ack!1422))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!1423)
                     ((_ to_fp 11 53) t_ack!1422))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1423)
                    ((_ to_fp 11 53) t_ack!1422))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW #x3fa887ad701404ac y1_ack!1424))

(check-sat)
(exit)
