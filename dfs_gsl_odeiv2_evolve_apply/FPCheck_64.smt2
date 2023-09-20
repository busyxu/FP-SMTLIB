(declare-fun t_ack!528 () (_ BitVec 64))
(declare-fun t1_ack!529 () (_ BitVec 64))
(declare-fun h_ack!532 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!531 () (_ BitVec 64))
(declare-fun y0_ack!530 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!529)
                    ((_ to_fp 11 53) t_ack!528))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!529)
               ((_ to_fp 11 53) t_ack!528))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!532) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!529)
                ((_ to_fp 11 53) t_ack!528))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!532)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!529)
               ((_ to_fp 11 53) t_ack!528))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!529)
                           ((_ to_fp 11 53) t_ack!528))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!531))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!530)
                                   ((_ to_fp 11 53) y0_ack!530))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!530))
                           a!2)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!530)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) y1_ack!531)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!530)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) y1_ack!531))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4024000000000000)
            (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y1_ack!531) a!3))
    (fp.sub roundNearestTiesToEven a!4 ((_ to_fp 11 53) #x3ff0000000000000))))))

(check-sat)
(exit)
