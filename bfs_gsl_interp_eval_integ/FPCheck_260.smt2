(declare-fun x1_ack!3119 () (_ BitVec 64))
(declare-fun x0_ack!3126 () (_ BitVec 64))
(declare-fun x2_ack!3120 () (_ BitVec 64))
(declare-fun b_ack!3125 () (_ BitVec 64))
(declare-fun a_ack!3124 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!3121 () (_ BitVec 64))
(declare-fun y1_ack!3122 () (_ BitVec 64))
(declare-fun y2_ack!3123 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3126) ((_ to_fp 11 53) x1_ack!3119)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3119) ((_ to_fp 11 53) x2_ack!3120)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3119)
                       ((_ to_fp 11 53) x0_ack!3126))
               ((_ to_fp 11 53) x0_ack!3126))
       ((_ to_fp 11 53) x1_ack!3119)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3119)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3119)
                       ((_ to_fp 11 53) x0_ack!3126)))
       ((_ to_fp 11 53) x0_ack!3126)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3120)
                       ((_ to_fp 11 53) x1_ack!3119))
               ((_ to_fp 11 53) x1_ack!3119))
       ((_ to_fp 11 53) x2_ack!3120)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3120)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3120)
                       ((_ to_fp 11 53) x1_ack!3119)))
       ((_ to_fp 11 53) x1_ack!3119)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3119)
                    ((_ to_fp 11 53) x0_ack!3126))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3120)
                    ((_ to_fp 11 53) x1_ack!3119))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3124) ((_ to_fp 11 53) b_ack!3125))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3124) ((_ to_fp 11 53) x0_ack!3126))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3125) ((_ to_fp 11 53) x2_ack!3120))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3124) ((_ to_fp 11 53) b_ack!3125))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3124) ((_ to_fp 11 53) x0_ack!3126))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3124) ((_ to_fp 11 53) x1_ack!3119)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3119) ((_ to_fp 11 53) a_ack!3124))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3125) ((_ to_fp 11 53) x1_ack!3119))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3125) ((_ to_fp 11 53) x2_ack!3120))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3120)
                    ((_ to_fp 11 53) x1_ack!3119))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3123)
                           ((_ to_fp 11 53) y1_ack!3122))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3120)
                                   ((_ to_fp 11 53) x1_ack!3119)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3122)
                           ((_ to_fp 11 53) y0_ack!3121))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3119)
                                   ((_ to_fp 11 53) x0_ack!3126)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3120)
                                   ((_ to_fp 11 53) x1_ack!3119))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3119)
                                   ((_ to_fp 11 53) x0_ack!3126)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3124)
                                   ((_ to_fp 11 53) x1_ack!3119))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3124)
                                   ((_ to_fp 11 53) x1_ack!3119)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3125)
                                   ((_ to_fp 11 53) x1_ack!3119))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3125)
                                   ((_ to_fp 11 53) x1_ack!3119))))))
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
                                   ((_ to_fp 11 53) x2_ack!3120)
                                   ((_ to_fp 11 53) x1_ack!3119))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           a!5)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3124)
                                   ((_ to_fp 11 53) x1_ack!3119))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3125)
                                   ((_ to_fp 11 53) x1_ack!3119))))))
  (FPCHECK_FMUL_ACCURACY a!6 a!7))))))

(check-sat)
(exit)
