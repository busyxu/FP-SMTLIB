(declare-fun a_ack!257 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!257) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!257) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!257) ((_ to_fp 11 53) #x3e68000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!257) ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!257) ((_ to_fp 11 53) #x404205966f2b4f12)))
(assert (let ((a!1 (bvadd #x00000001
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404205966f2b4f12)
                            ((_ to_fp 11 53) a_ack!257))))))
  (bvsle #x00000001 a!1)))
(assert (let ((a!1 (bvadd #x00000001
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404205966f2b4f12)
                            ((_ to_fp 11 53) a_ack!257))))))
  (bvsle #x00000002 a!1)))
(assert (let ((a!1 (bvadd #x00000001
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404205966f2b4f12)
                            ((_ to_fp 11 53) a_ack!257))))))
  (FPCHECK_FDIV_ACCURACY
    #x3ff0000000000000
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) a_ack!257)))))

(check-sat)
(exit)
