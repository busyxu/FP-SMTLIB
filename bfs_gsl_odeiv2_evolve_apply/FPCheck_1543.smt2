(declare-fun t_ack!7668 () (_ BitVec 64))
(declare-fun t1_ack!7669 () (_ BitVec 64))
(declare-fun h_ack!7670 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7669)
                    ((_ to_fp 11 53) t_ack!7668))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7669)
                    ((_ to_fp 11 53) t_ack!7668))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!7669)
                ((_ to_fp 11 53) t_ack!7668))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!7670)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7669)
                    ((_ to_fp 11 53) t_ack!7668)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7669)
                    ((_ to_fp 11 53) t_ack!7668))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  t_ack!7668
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fac71c71c71c71c)
          ((_ to_fp 11 53) h_ack!7670))))

(check-sat)
(exit)
