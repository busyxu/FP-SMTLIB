(declare-fun x1_ack!3029 () (_ BitVec 64))
(declare-fun x0_ack!3036 () (_ BitVec 64))
(declare-fun y0_ack!3030 () (_ BitVec 64))
(declare-fun x_ack!3034 () (_ BitVec 64))
(declare-fun y_ack!3035 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z1_ack!3032 () (_ BitVec 64))
(declare-fun z3_ack!3033 () (_ BitVec 64))
(declare-fun z0_ack!3031 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3036) ((_ to_fp 11 53) x1_ack!3029))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3030) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3034) ((_ to_fp 11 53) x0_ack!3036))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3034) ((_ to_fp 11 53) x1_ack!3029))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3035) ((_ to_fp 11 53) y0_ack!3030))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3035) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3029)
                       ((_ to_fp 11 53) x0_ack!3036))
               ((_ to_fp 11 53) x0_ack!3036))
       ((_ to_fp 11 53) x1_ack!3029)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3029)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3029)
                       ((_ to_fp 11 53) x0_ack!3036)))
       ((_ to_fp 11 53) x0_ack!3036)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3030))
               ((_ to_fp 11 53) y0_ack!3030))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3030)))
       ((_ to_fp 11 53) y0_ack!3030)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3034)
                           ((_ to_fp 11 53) x0_ack!3036))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3029)
                           ((_ to_fp 11 53) x0_ack!3036))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!3035)
                           ((_ to_fp 11 53) y0_ack!3030))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!3030)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z0_ack!3031)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z3_ack!3033)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z1_ack!3032))))
  (FPCHECK_FADD_OVERFLOW (fp.add roundNearestTiesToEven a!3 a!4) a!5))))

(check-sat)
(exit)
