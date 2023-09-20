(declare-fun t_ack!5294 () (_ BitVec 64))
(declare-fun t1_ack!5295 () (_ BitVec 64))
(declare-fun h_ack!5296 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!5295)
                    ((_ to_fp 11 53) t_ack!5294))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!5295)
               ((_ to_fp 11 53) t_ack!5294))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!5296) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!5295)
                ((_ to_fp 11 53) t_ack!5294))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!5296)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!5295)
               ((_ to_fp 11 53) t_ack!5294))))
(assert (FPCHECK_FADD_OVERFLOW
  t_ack!5294
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe21360b60a7776)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) t1_ack!5295)
                  ((_ to_fp 11 53) t_ack!5294)))))

(check-sat)
(exit)
