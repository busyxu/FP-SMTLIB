(declare-fun t_ack!1680 () (_ BitVec 64))
(declare-fun t1_ack!1681 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun h_ack!1682 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1681)
                    ((_ to_fp 11 53) t_ack!1680))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1681)
                    ((_ to_fp 11 53) t_ack!1680))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!1681)
                     ((_ to_fp 11 53) t_ack!1680))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1681)
                    ((_ to_fp 11 53) t_ack!1680))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW #x3fc2e147ae147ae1 h_ack!1682))

(check-sat)
(exit)
