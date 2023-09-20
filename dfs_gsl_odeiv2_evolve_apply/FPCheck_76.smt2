(declare-fun t_ack!646 () (_ BitVec 64))
(declare-fun t1_ack!647 () (_ BitVec 64))
(declare-fun h_ack!650 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!648 () (_ BitVec 64))
(declare-fun y1_ack!649 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!647)
                    ((_ to_fp 11 53) t_ack!646))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!647)
               ((_ to_fp 11 53) t_ack!646))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!650) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!647)
                ((_ to_fp 11 53) t_ack!646))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!650)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!647)
               ((_ to_fp 11 53) t_ack!646))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!649))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!648)
                                   ((_ to_fp 11 53) y0_ack!648))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!647)
                                   ((_ to_fp 11 53) t_ack!646)))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!648))
                           a!1))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3f95555555555555)
            ((_ to_fp 11 53) y1_ack!649))
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fb0000000000000)
            (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y1_ack!649) a!2))))))

(check-sat)
(exit)
