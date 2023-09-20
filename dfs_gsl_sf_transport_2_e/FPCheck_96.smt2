(declare-fun a_ack!139 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!139) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!139) ((_ to_fp 11 53) #x3e68000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!139) ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!139) ((_ to_fp 11 53) #x404205966f2b4f12)))
(assert (let ((a!1 (bvadd #x00000001
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404205966f2b4f12)
                            ((_ to_fp 11 53) a_ack!139))))))
  (bvsle #x00000001 a!1)))
(assert (let ((a!1 (bvadd #x00000001
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404205966f2b4f12)
                            ((_ to_fp 11 53) a_ack!139))))))
  (bvsle #x00000002 a!1)))
(assert (let ((a!1 (bvadd #x00000001
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404205966f2b4f12)
                            ((_ to_fp 11 53) a_ack!139))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) a_ack!139)))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.add roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2)
            ((_ to_fp 11 53) #x3ff0000000000000))
    #x4000000000000000))))

(check-sat)
(exit)
