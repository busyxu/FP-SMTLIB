(declare-fun x1_ack!3045 () (_ BitVec 64))
(declare-fun x0_ack!3052 () (_ BitVec 64))
(declare-fun y0_ack!3046 () (_ BitVec 64))
(declare-fun x_ack!3050 () (_ BitVec 64))
(declare-fun y_ack!3051 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z1_ack!3048 () (_ BitVec 64))
(declare-fun z3_ack!3049 () (_ BitVec 64))
(declare-fun z0_ack!3047 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3052) ((_ to_fp 11 53) x1_ack!3045))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3046) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3050) ((_ to_fp 11 53) x0_ack!3052))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3050) ((_ to_fp 11 53) x1_ack!3045))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3051) ((_ to_fp 11 53) y0_ack!3046))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3051) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3045)
                       ((_ to_fp 11 53) x0_ack!3052))
               ((_ to_fp 11 53) x0_ack!3052))
       ((_ to_fp 11 53) x1_ack!3045)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3045)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3045)
                       ((_ to_fp 11 53) x0_ack!3052)))
       ((_ to_fp 11 53) x0_ack!3052)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3046))
               ((_ to_fp 11 53) y0_ack!3046))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3046)))
       ((_ to_fp 11 53) y0_ack!3046)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3050)
                           ((_ to_fp 11 53) x0_ack!3052))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3045)
                           ((_ to_fp 11 53) x0_ack!3052))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!3051)
                           ((_ to_fp 11 53) y0_ack!3046))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!3046)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z0_ack!3047)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z3_ack!3049)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z1_ack!3048))))
  (FPCHECK_FADD_UNDERFLOW (fp.add roundNearestTiesToEven a!3 a!4) a!5))))

(check-sat)
(exit)
