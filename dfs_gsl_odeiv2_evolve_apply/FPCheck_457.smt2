(declare-fun t_ack!4307 () (_ BitVec 64))
(declare-fun t1_ack!4308 () (_ BitVec 64))
(declare-fun h_ack!4309 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!4308)
                    ((_ to_fp 11 53) t_ack!4307))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!4308)
               ((_ to_fp 11 53) t_ack!4307))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!4309) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!4308)
                ((_ to_fp 11 53) t_ack!4307))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!4309)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!4308)
               ((_ to_fp 11 53) t_ack!4307))))
(assert (FPCHECK_FADD_UNDERFLOW
  t_ack!4307
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fddc28f5c28f5c3)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) t1_ack!4308)
                  ((_ to_fp 11 53) t_ack!4307)))))

(check-sat)
(exit)
