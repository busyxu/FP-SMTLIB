(declare-fun t_ack!12671 () (_ BitVec 64))
(declare-fun t1_ack!12672 () (_ BitVec 64))
(declare-fun h_ack!12673 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!12672)
                    ((_ to_fp 11 53) t_ack!12671))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!12672)
                    ((_ to_fp 11 53) t_ack!12671))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!12672)
                ((_ to_fp 11 53) t_ack!12671))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!12673)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!12672)
                    ((_ to_fp 11 53) t_ack!12671)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!12672)
                    ((_ to_fp 11 53) t_ack!12671))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  t_ack!12671
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe21360b60a7776)
          ((_ to_fp 11 53) h_ack!12673))))

(check-sat)
(exit)
