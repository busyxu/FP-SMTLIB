(declare-fun t_ack!1695 () (_ BitVec 64))
(declare-fun t1_ack!1696 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun h_ack!1697 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1696)
                    ((_ to_fp 11 53) t_ack!1695))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1696)
                    ((_ to_fp 11 53) t_ack!1695))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!1696)
                     ((_ to_fp 11 53) t_ack!1695))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1696)
                    ((_ to_fp 11 53) t_ack!1695))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  t_ack!1695
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fc2e147ae147ae1)
          ((_ to_fp 11 53) h_ack!1697))))

(check-sat)
(exit)
