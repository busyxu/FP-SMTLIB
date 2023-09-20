(declare-fun t_ack!768 () (_ BitVec 64))
(declare-fun t1_ack!769 () (_ BitVec 64))
(declare-fun h_ack!772 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!771 () (_ BitVec 64))
(declare-fun y0_ack!770 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!769)
                    ((_ to_fp 11 53) t_ack!768))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!769)
               ((_ to_fp 11 53) t_ack!768))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!772) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!769)
                ((_ to_fp 11 53) t_ack!768))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!772)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!769)
               ((_ to_fp 11 53) t_ack!768))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!769)
                           ((_ to_fp 11 53) t_ack!768))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!771))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!770)
                                   ((_ to_fp 11 53) y0_ack!770))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!770)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) y1_ack!771)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!770))
                           a!3)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!770)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) y1_ack!771)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!770)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) y1_ack!771))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!771)
                                   a!4))
                   (fp.sub roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_UNDERFLOW
    #x3fb0000000000000
    (fp.sub roundNearestTiesToEven a!2 a!6))))))

(check-sat)
(exit)
