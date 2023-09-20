(declare-fun t_ack!12677 () (_ BitVec 64))
(declare-fun t1_ack!12678 () (_ BitVec 64))
(declare-fun h_ack!12679 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!12678)
                    ((_ to_fp 11 53) t_ack!12677))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!12678)
                    ((_ to_fp 11 53) t_ack!12677))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!12678)
                ((_ to_fp 11 53) t_ack!12677))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!12679)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!12678)
                    ((_ to_fp 11 53) t_ack!12677)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!12678)
                    ((_ to_fp 11 53) t_ack!12677))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  t_ack!12677
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe21360b60a7776)
          ((_ to_fp 11 53) h_ack!12679))))

(check-sat)
(exit)
