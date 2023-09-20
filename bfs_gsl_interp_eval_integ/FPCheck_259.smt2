(declare-fun x1_ack!3103 () (_ BitVec 64))
(declare-fun x0_ack!3110 () (_ BitVec 64))
(declare-fun x2_ack!3104 () (_ BitVec 64))
(declare-fun b_ack!3109 () (_ BitVec 64))
(declare-fun a_ack!3108 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!3105 () (_ BitVec 64))
(declare-fun y1_ack!3106 () (_ BitVec 64))
(declare-fun y2_ack!3107 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3110) ((_ to_fp 11 53) x1_ack!3103)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3103) ((_ to_fp 11 53) x2_ack!3104)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3103)
                       ((_ to_fp 11 53) x0_ack!3110))
               ((_ to_fp 11 53) x0_ack!3110))
       ((_ to_fp 11 53) x1_ack!3103)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3103)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3103)
                       ((_ to_fp 11 53) x0_ack!3110)))
       ((_ to_fp 11 53) x0_ack!3110)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3104)
                       ((_ to_fp 11 53) x1_ack!3103))
               ((_ to_fp 11 53) x1_ack!3103))
       ((_ to_fp 11 53) x2_ack!3104)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3104)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3104)
                       ((_ to_fp 11 53) x1_ack!3103)))
       ((_ to_fp 11 53) x1_ack!3103)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3103)
                    ((_ to_fp 11 53) x0_ack!3110))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3104)
                    ((_ to_fp 11 53) x1_ack!3103))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3108) ((_ to_fp 11 53) b_ack!3109))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3108) ((_ to_fp 11 53) x0_ack!3110))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3109) ((_ to_fp 11 53) x2_ack!3104))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3108) ((_ to_fp 11 53) b_ack!3109))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3108) ((_ to_fp 11 53) x0_ack!3110))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3108) ((_ to_fp 11 53) x1_ack!3103)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3103) ((_ to_fp 11 53) a_ack!3108))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3109) ((_ to_fp 11 53) x1_ack!3103))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3109) ((_ to_fp 11 53) x2_ack!3104))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3104)
                    ((_ to_fp 11 53) x1_ack!3103))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3107)
                           ((_ to_fp 11 53) y1_ack!3106))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3104)
                                   ((_ to_fp 11 53) x1_ack!3103)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3106)
                           ((_ to_fp 11 53) y0_ack!3105))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3103)
                                   ((_ to_fp 11 53) x0_ack!3110)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3104)
                                   ((_ to_fp 11 53) x1_ack!3103))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3103)
                                   ((_ to_fp 11 53) x0_ack!3110)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3108)
                                   ((_ to_fp 11 53) x1_ack!3103))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3108)
                                   ((_ to_fp 11 53) x1_ack!3103)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3109)
                                   ((_ to_fp 11 53) x1_ack!3103))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3109)
                                   ((_ to_fp 11 53) x1_ack!3103))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3104)
                                   ((_ to_fp 11 53) x1_ack!3103))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           a!5)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3108)
                                   ((_ to_fp 11 53) x1_ack!3103))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3109)
                                   ((_ to_fp 11 53) x1_ack!3103))))))
  (FPCHECK_FMUL_UNDERFLOW a!6 a!7))))))

(check-sat)
(exit)
