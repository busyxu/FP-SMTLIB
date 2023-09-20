(declare-fun x1_ack!3700 () (_ BitVec 64))
(declare-fun x0_ack!3707 () (_ BitVec 64))
(declare-fun x2_ack!3701 () (_ BitVec 64))
(declare-fun b_ack!3706 () (_ BitVec 64))
(declare-fun a_ack!3705 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!3702 () (_ BitVec 64))
(declare-fun y1_ack!3703 () (_ BitVec 64))
(declare-fun y2_ack!3704 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3707) ((_ to_fp 11 53) x1_ack!3700)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3700) ((_ to_fp 11 53) x2_ack!3701)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3700)
                       ((_ to_fp 11 53) x0_ack!3707))
               ((_ to_fp 11 53) x0_ack!3707))
       ((_ to_fp 11 53) x1_ack!3700)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3700)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3700)
                       ((_ to_fp 11 53) x0_ack!3707)))
       ((_ to_fp 11 53) x0_ack!3707)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3701)
                       ((_ to_fp 11 53) x1_ack!3700))
               ((_ to_fp 11 53) x1_ack!3700))
       ((_ to_fp 11 53) x2_ack!3701)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3701)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3701)
                       ((_ to_fp 11 53) x1_ack!3700)))
       ((_ to_fp 11 53) x1_ack!3700)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3700)
                    ((_ to_fp 11 53) x0_ack!3707))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3701)
                    ((_ to_fp 11 53) x1_ack!3700))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3705) ((_ to_fp 11 53) b_ack!3706))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3705) ((_ to_fp 11 53) x0_ack!3707))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3706) ((_ to_fp 11 53) x2_ack!3701))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3705) ((_ to_fp 11 53) b_ack!3706))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3705) ((_ to_fp 11 53) x0_ack!3707))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3705) ((_ to_fp 11 53) x1_ack!3700))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3706) ((_ to_fp 11 53) x0_ack!3707))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3706) ((_ to_fp 11 53) x1_ack!3700))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3700)
                    ((_ to_fp 11 53) x0_ack!3707))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3704)
                           ((_ to_fp 11 53) y1_ack!3703))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3701)
                                   ((_ to_fp 11 53) x1_ack!3700)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3703)
                           ((_ to_fp 11 53) y0_ack!3702))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3700)
                                   ((_ to_fp 11 53) x0_ack!3707)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3701)
                                   ((_ to_fp 11 53) x1_ack!3700))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3700)
                                   ((_ to_fp 11 53) x0_ack!3707))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3700)
                                   ((_ to_fp 11 53) x0_ack!3707))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!3703)
                                   ((_ to_fp 11 53) y0_ack!3702))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3700)
                                   ((_ to_fp 11 53) x0_ack!3707)))
                   a!5)))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fe0000000000000) a!6)
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3705)
                    ((_ to_fp 11 53) x0_ack!3707))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!3706)
                    ((_ to_fp 11 53) x0_ack!3707)))))))))

(check-sat)
(exit)
