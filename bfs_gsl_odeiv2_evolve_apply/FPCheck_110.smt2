(declare-fun t_ack!517 () (_ BitVec 64))
(declare-fun t1_ack!518 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!519 () (_ BitVec 64))
(declare-fun y1_ack!520 () (_ BitVec 64))
(declare-fun h_ack!521 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!518)
                    ((_ to_fp 11 53) t_ack!517))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!518)
                    ((_ to_fp 11 53) t_ack!517))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!518)
                     ((_ to_fp 11 53) t_ack!517))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!518)
                    ((_ to_fp 11 53) t_ack!517))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!520))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!519)
                                   ((_ to_fp 11 53) y0_ack!519))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           ((_ to_fp 11 53) h_ack!521))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!519))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f95555555555555)
                           ((_ to_fp 11 53) y1_ack!520))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!520)
                                   a!2)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!519)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!521)
                                   a!3))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!519)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!521)
                                   a!3)))))
  (FPCHECK_FSUB_ACCURACY a!4 #x3ff0000000000000))))))

(check-sat)
(exit)
