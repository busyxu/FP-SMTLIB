(declare-fun t_ack!7629 () (_ BitVec 64))
(declare-fun t1_ack!7630 () (_ BitVec 64))
(declare-fun h_ack!7633 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7631 () (_ BitVec 64))
(declare-fun y1_ack!7632 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7630)
                    ((_ to_fp 11 53) t_ack!7629))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7630)
                    ((_ to_fp 11 53) t_ack!7629))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!7630)
                ((_ to_fp 11 53) t_ack!7629))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!7633)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7630)
                    ((_ to_fp 11 53) t_ack!7629)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7630)
                    ((_ to_fp 11 53) t_ack!7629))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!7632))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!7631)
                                   ((_ to_fp 11 53) y0_ack!7631))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           ((_ to_fp 11 53) h_ack!7633))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!7631))
                           a!1))))
  (FPCHECK_FADD_UNDERFLOW y1_ack!7632 a!2))))

(check-sat)
(exit)
