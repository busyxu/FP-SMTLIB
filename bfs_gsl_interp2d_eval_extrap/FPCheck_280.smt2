(declare-fun x1_ack!2902 () (_ BitVec 64))
(declare-fun x0_ack!2908 () (_ BitVec 64))
(declare-fun y0_ack!2903 () (_ BitVec 64))
(declare-fun x_ack!2906 () (_ BitVec 64))
(declare-fun y_ack!2907 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z3_ack!2905 () (_ BitVec 64))
(declare-fun z0_ack!2904 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2908) ((_ to_fp 11 53) x1_ack!2902))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2903) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2906) ((_ to_fp 11 53) x0_ack!2908))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2906) ((_ to_fp 11 53) x1_ack!2902))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2907) ((_ to_fp 11 53) y0_ack!2903))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2907) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2902)
                       ((_ to_fp 11 53) x0_ack!2908))
               ((_ to_fp 11 53) x0_ack!2908))
       ((_ to_fp 11 53) x1_ack!2902)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2902)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2902)
                       ((_ to_fp 11 53) x0_ack!2908)))
       ((_ to_fp 11 53) x0_ack!2908)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2903))
               ((_ to_fp 11 53) y0_ack!2903))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2903)))
       ((_ to_fp 11 53) y0_ack!2903)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!2906)
                           ((_ to_fp 11 53) x0_ack!2908))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!2902)
                           ((_ to_fp 11 53) x0_ack!2908))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!2907)
                                   ((_ to_fp 11 53) y0_ack!2903))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!2903))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z0_ack!2904))))
  (FPCHECK_FADD_UNDERFLOW
    a!3
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z3_ack!2905))))))

(check-sat)
(exit)
