(declare-fun t_ack!561 () (_ BitVec 64))
(declare-fun t1_ack!562 () (_ BitVec 64))
(declare-fun h_ack!565 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!564 () (_ BitVec 64))
(declare-fun y0_ack!563 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!562)
                    ((_ to_fp 11 53) t_ack!561))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!562)
               ((_ to_fp 11 53) t_ack!561))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!565) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!562)
                ((_ to_fp 11 53) t_ack!561))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!565)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!562)
               ((_ to_fp 11 53) t_ack!561))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!562)
                           ((_ to_fp 11 53) t_ack!561))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!564))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!563)
                                   ((_ to_fp 11 53) y0_ack!563))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!563)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) y1_ack!564)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!563))
                           a!3)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!563)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) y1_ack!564)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!563)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) y1_ack!564))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!564)
                                   a!4))
                   (fp.sub roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FSUB_UNDERFLOW a!2 a!6)))))

(check-sat)
(exit)
