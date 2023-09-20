(declare-fun t_ack!4301 () (_ BitVec 64))
(declare-fun t1_ack!4302 () (_ BitVec 64))
(declare-fun h_ack!4303 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!4302)
                    ((_ to_fp 11 53) t_ack!4301))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!4302)
               ((_ to_fp 11 53) t_ack!4301))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!4303) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!4302)
                ((_ to_fp 11 53) t_ack!4301))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!4303)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!4302)
               ((_ to_fp 11 53) t_ack!4301))))
(assert (FPCHECK_FADD_OVERFLOW
  t_ack!4301
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fddc28f5c28f5c3)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) t1_ack!4302)
                  ((_ to_fp 11 53) t_ack!4301)))))

(check-sat)
(exit)
