(declare-fun t_ack!2121 () (_ BitVec 64))
(declare-fun t1_ack!2122 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun h_ack!2123 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!2122)
                    ((_ to_fp 11 53) t_ack!2121))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!2122)
                    ((_ to_fp 11 53) t_ack!2121))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!2122)
                     ((_ to_fp 11 53) t_ack!2121))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!2122)
                    ((_ to_fp 11 53) t_ack!2121))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  t_ack!2121
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fddc28f5c28f5c3)
          ((_ to_fp 11 53) h_ack!2123))))

(check-sat)
(exit)
