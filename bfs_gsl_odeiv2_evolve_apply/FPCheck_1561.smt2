(declare-fun t_ack!7838 () (_ BitVec 64))
(declare-fun t1_ack!7839 () (_ BitVec 64))
(declare-fun h_ack!7842 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!7841 () (_ BitVec 64))
(declare-fun y0_ack!7840 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7839)
                    ((_ to_fp 11 53) t_ack!7838))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7839)
                    ((_ to_fp 11 53) t_ack!7838))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!7839)
                ((_ to_fp 11 53) t_ack!7838))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!7842)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7839)
                    ((_ to_fp 11 53) t_ack!7838)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7839)
                    ((_ to_fp 11 53) t_ack!7838))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!7840)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                                   ((_ to_fp 11 53) h_ack!7842))
                           ((_ to_fp 11 53) y1_ack!7841))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!7841))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!7840)
                                   ((_ to_fp 11 53) y0_ack!7840))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           ((_ to_fp 11 53) h_ack!7842))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!7840))
                           a!2))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!7841)
                                   a!3))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) #x8000000000000000) a!1)
    a!4)))))

(check-sat)
(exit)
