(declare-fun x1_ack!3186 () (_ BitVec 64))
(declare-fun x0_ack!3194 () (_ BitVec 64))
(declare-fun y0_ack!3187 () (_ BitVec 64))
(declare-fun x_ack!3192 () (_ BitVec 64))
(declare-fun y_ack!3193 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z2_ack!3190 () (_ BitVec 64))
(declare-fun z1_ack!3189 () (_ BitVec 64))
(declare-fun z3_ack!3191 () (_ BitVec 64))
(declare-fun z0_ack!3188 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3194) ((_ to_fp 11 53) x1_ack!3186))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3187) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3192) ((_ to_fp 11 53) x0_ack!3194))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3192) ((_ to_fp 11 53) x1_ack!3186))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3193) ((_ to_fp 11 53) y0_ack!3187))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3193) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3186)
                       ((_ to_fp 11 53) x0_ack!3194))
               ((_ to_fp 11 53) x0_ack!3194))
       ((_ to_fp 11 53) x1_ack!3186)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3186)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3186)
                       ((_ to_fp 11 53) x0_ack!3194)))
       ((_ to_fp 11 53) x0_ack!3194)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3187))
               ((_ to_fp 11 53) y0_ack!3187))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3187)))
       ((_ to_fp 11 53) y0_ack!3187)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3192)
                           ((_ to_fp 11 53) x0_ack!3194))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3186)
                           ((_ to_fp 11 53) x0_ack!3194))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!3193)
                           ((_ to_fp 11 53) y0_ack!3187))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!3187)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z0_ack!3188)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z3_ack!3191)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z1_ack!3189))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven a!3 a!4) a!5)
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z2_ack!3190))))))

(check-sat)
(exit)
