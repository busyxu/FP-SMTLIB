(declare-fun a_ack!158 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!158) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!158) ((_ to_fp 11 53) #x3e68000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!158) ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!158) ((_ to_fp 11 53) #x404205966f2b4f12)))
(assert (let ((a!1 (bvadd #x00000001
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404205966f2b4f12)
                            ((_ to_fp 11 53) a_ack!158))))))
  (bvsle #x00000001 a!1)))
(assert (let ((a!1 (bvadd #x00000001
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404205966f2b4f12)
                            ((_ to_fp 11 53) a_ack!158))))))
  (bvsle #x00000002 a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!158)))))
      (a!2 (bvadd #x00000001
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404205966f2b4f12)
                            ((_ to_fp 11 53) a_ack!158))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a!2)
                           ((_ to_fp 11 53) a_ack!158))))
      (a!6 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!2)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) a_ack!158)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!6)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!4 a!3)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!158))))))
  (FPCHECK_FADD_ACCURACY
    a!5
    (fp.add roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!7 a!6)
            ((_ to_fp 11 53) #x3ff0000000000000))))))))

(check-sat)
(exit)
