(declare-fun t_ack!2607 () (_ BitVec 64))
(declare-fun t1_ack!2608 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun h_ack!2609 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!2608)
                    ((_ to_fp 11 53) t_ack!2607))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!2608)
                    ((_ to_fp 11 53) t_ack!2607))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!2608)
                     ((_ to_fp 11 53) t_ack!2607))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!2608)
                    ((_ to_fp 11 53) t_ack!2607))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  t_ack!2607
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe21360b60a7776)
          ((_ to_fp 11 53) h_ack!2609))))

(check-sat)
(exit)
