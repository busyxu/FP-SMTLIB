(declare-fun t_ack!387 () (_ BitVec 64))
(declare-fun t1_ack!388 () (_ BitVec 64))
(declare-fun h_ack!389 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!388)
                    ((_ to_fp 11 53) t_ack!387))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!388)
               ((_ to_fp 11 53) t_ack!387))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!389) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!388)
                ((_ to_fp 11 53) t_ack!387))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!389)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!388)
               ((_ to_fp 11 53) t_ack!387))))
(assert (FPCHECK_FADD_UNDERFLOW
  t_ack!387
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fac71c71c71c71c)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) t1_ack!388)
                  ((_ to_fp 11 53) t_ack!387)))))

(check-sat)
(exit)
