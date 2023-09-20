(declare-fun t_ack!3771 () (_ BitVec 64))
(declare-fun t1_ack!3772 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun h_ack!3773 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!3772)
                    ((_ to_fp 11 53) t_ack!3771))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!3772)
                    ((_ to_fp 11 53) t_ack!3771))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!3772)
                     ((_ to_fp 11 53) t_ack!3771))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!3772)
                    ((_ to_fp 11 53) t_ack!3771))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  t_ack!3771
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fed96c8c31039db)
          ((_ to_fp 11 53) h_ack!3773))))

(check-sat)
(exit)
