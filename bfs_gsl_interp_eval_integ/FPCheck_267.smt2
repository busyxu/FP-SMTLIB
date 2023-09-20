(declare-fun x1_ack!3205 () (_ BitVec 64))
(declare-fun x0_ack!3212 () (_ BitVec 64))
(declare-fun x2_ack!3206 () (_ BitVec 64))
(declare-fun b_ack!3211 () (_ BitVec 64))
(declare-fun a_ack!3210 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!3207 () (_ BitVec 64))
(declare-fun y1_ack!3208 () (_ BitVec 64))
(declare-fun y2_ack!3209 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3212) ((_ to_fp 11 53) x1_ack!3205)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3205) ((_ to_fp 11 53) x2_ack!3206)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3205)
                       ((_ to_fp 11 53) x0_ack!3212))
               ((_ to_fp 11 53) x0_ack!3212))
       ((_ to_fp 11 53) x1_ack!3205)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3205)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3205)
                       ((_ to_fp 11 53) x0_ack!3212)))
       ((_ to_fp 11 53) x0_ack!3212)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3206)
                       ((_ to_fp 11 53) x1_ack!3205))
               ((_ to_fp 11 53) x1_ack!3205))
       ((_ to_fp 11 53) x2_ack!3206)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3206)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3206)
                       ((_ to_fp 11 53) x1_ack!3205)))
       ((_ to_fp 11 53) x1_ack!3205)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3205)
                    ((_ to_fp 11 53) x0_ack!3212))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3206)
                    ((_ to_fp 11 53) x1_ack!3205))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3210) ((_ to_fp 11 53) b_ack!3211))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3210) ((_ to_fp 11 53) x0_ack!3212))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3211) ((_ to_fp 11 53) x2_ack!3206))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3210) ((_ to_fp 11 53) b_ack!3211))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3210) ((_ to_fp 11 53) x0_ack!3212))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3210) ((_ to_fp 11 53) x1_ack!3205)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3205) ((_ to_fp 11 53) a_ack!3210))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3211) ((_ to_fp 11 53) x1_ack!3205))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3211) ((_ to_fp 11 53) x2_ack!3206))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3206)
                    ((_ to_fp 11 53) x1_ack!3205))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3209)
                           ((_ to_fp 11 53) y1_ack!3208))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3206)
                                   ((_ to_fp 11 53) x1_ack!3205)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3208)
                           ((_ to_fp 11 53) y0_ack!3207))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3205)
                                   ((_ to_fp 11 53) x0_ack!3212)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3206)
                                   ((_ to_fp 11 53) x1_ack!3205))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3205)
                                   ((_ to_fp 11 53) x0_ack!3212)))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3210)
                                   ((_ to_fp 11 53) x1_ack!3205))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3210)
                                   ((_ to_fp 11 53) x1_ack!3205)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3211)
                                   ((_ to_fp 11 53) x1_ack!3205))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3211)
                                   ((_ to_fp 11 53) x1_ack!3205))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3))
      (a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3210)
                                   ((_ to_fp 11 53) x1_ack!3205))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3211)
                                   ((_ to_fp 11 53) x1_ack!3205))))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!3206)
                           ((_ to_fp 11 53) x1_ack!3205))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!4)))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!3209)
                                   ((_ to_fp 11 53) y1_ack!3208))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3206)
                                   ((_ to_fp 11 53) x1_ack!3205)))
                   (fp.div roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!6)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3210)
                                   ((_ to_fp 11 53) x1_ack!3205))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3211)
                                   ((_ to_fp 11 53) x1_ack!3205))))))
  (FPCHECK_FADD_OVERFLOW
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y1_ack!3208) a!7)
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd5555555555555)
                    a!4)
            a!9))))))))

(check-sat)
(exit)
