(declare-fun x1_ack!3192 () (_ BitVec 64))
(declare-fun x0_ack!3199 () (_ BitVec 64))
(declare-fun x2_ack!3193 () (_ BitVec 64))
(declare-fun b_ack!3198 () (_ BitVec 64))
(declare-fun a_ack!3197 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!3194 () (_ BitVec 64))
(declare-fun y1_ack!3195 () (_ BitVec 64))
(declare-fun y2_ack!3196 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3199) ((_ to_fp 11 53) x1_ack!3192)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3192) ((_ to_fp 11 53) x2_ack!3193)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3192)
                       ((_ to_fp 11 53) x0_ack!3199))
               ((_ to_fp 11 53) x0_ack!3199))
       ((_ to_fp 11 53) x1_ack!3192)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3192)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3192)
                       ((_ to_fp 11 53) x0_ack!3199)))
       ((_ to_fp 11 53) x0_ack!3199)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3193)
                       ((_ to_fp 11 53) x1_ack!3192))
               ((_ to_fp 11 53) x1_ack!3192))
       ((_ to_fp 11 53) x2_ack!3193)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3193)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3193)
                       ((_ to_fp 11 53) x1_ack!3192)))
       ((_ to_fp 11 53) x1_ack!3192)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3192)
                    ((_ to_fp 11 53) x0_ack!3199))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3193)
                    ((_ to_fp 11 53) x1_ack!3192))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3197) ((_ to_fp 11 53) b_ack!3198))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3197) ((_ to_fp 11 53) x0_ack!3199))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3198) ((_ to_fp 11 53) x2_ack!3193))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3197) ((_ to_fp 11 53) b_ack!3198))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3197) ((_ to_fp 11 53) x0_ack!3199))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3197) ((_ to_fp 11 53) x1_ack!3192)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3192) ((_ to_fp 11 53) a_ack!3197))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3198) ((_ to_fp 11 53) x1_ack!3192))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3198) ((_ to_fp 11 53) x2_ack!3193))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3193)
                    ((_ to_fp 11 53) x1_ack!3192))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3196)
                           ((_ to_fp 11 53) y1_ack!3195))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3193)
                                   ((_ to_fp 11 53) x1_ack!3192)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3195)
                           ((_ to_fp 11 53) y0_ack!3194))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3192)
                                   ((_ to_fp 11 53) x0_ack!3199)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3193)
                                   ((_ to_fp 11 53) x1_ack!3192))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3192)
                                   ((_ to_fp 11 53) x0_ack!3199))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3193)
                                   ((_ to_fp 11 53) x1_ack!3192))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!3196)
                                   ((_ to_fp 11 53) y1_ack!3195))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3193)
                                   ((_ to_fp 11 53) x1_ack!3192)))
                   a!5)))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!6)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3197)
                                   ((_ to_fp 11 53) x1_ack!3192))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3198)
                                   ((_ to_fp 11 53) x1_ack!3192))))))
  (FPCHECK_FADD_ACCURACY y1_ack!3195 a!7)))))))

(check-sat)
(exit)
