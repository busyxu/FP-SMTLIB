(declare-fun t_ack!7757 () (_ BitVec 64))
(declare-fun t1_ack!7758 () (_ BitVec 64))
(declare-fun h_ack!7761 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!7760 () (_ BitVec 64))
(declare-fun y0_ack!7759 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7758)
                    ((_ to_fp 11 53) t_ack!7757))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7758)
                    ((_ to_fp 11 53) t_ack!7757))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!7758)
                ((_ to_fp 11 53) t_ack!7757))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!7761)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7758)
                    ((_ to_fp 11 53) t_ack!7757)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7758)
                    ((_ to_fp 11 53) t_ack!7757))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!7759)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                                   ((_ to_fp 11 53) h_ack!7761))
                           ((_ to_fp 11 53) y1_ack!7760)))))
  (FPCHECK_FMUL_UNDERFLOW a!1 a!1)))

(check-sat)
(exit)
