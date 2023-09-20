(declare-fun t_ack!11672 () (_ BitVec 64))
(declare-fun t1_ack!11673 () (_ BitVec 64))
(declare-fun h_ack!11674 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!11673)
                    ((_ to_fp 11 53) t_ack!11672))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!11673)
                    ((_ to_fp 11 53) t_ack!11672))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!11673)
                ((_ to_fp 11 53) t_ack!11672))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!11674)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!11673)
                    ((_ to_fp 11 53) t_ack!11672)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!11673)
                    ((_ to_fp 11 53) t_ack!11672))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  t_ack!11672
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fddc28f5c28f5c3)
          ((_ to_fp 11 53) h_ack!11674))))

(check-sat)
(exit)
