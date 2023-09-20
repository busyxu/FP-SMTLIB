(declare-fun b_ack!411 () (_ BitVec 64))
(declare-fun alpha_ack!412 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FINVALID_SQRT ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!411) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) alpha_ack!412)
             ((_ to_fp 11 53) #xbff0000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fe0000000000000)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) alpha_ack!412)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fe0000000000000)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) alpha_ack!412)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!1)))
(assert (fp.leq (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) #x3fe0000000000000)
                (fp.add roundNearestTiesToEven
                        ((_ to_fp 11 53) alpha_ack!412)
                        ((_ to_fp 11 53) #x3ff0000000000000)))
        ((_ to_fp 11 53) #x4065600000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) alpha_ack!412)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq a!1 (CF_floor a!1))))
(assert (let ((a!1 (CF_floor (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) #x3fe0000000000000)
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) alpha_ack!412)
                                     ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (bvmul #x0000000000000018
                  ((_ sign_extend 32)
                    (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1))))))
  (bvult #x0000000000000000 (bvadd #x0000000000000008 a!2)))))
(assert (let ((a!1 (CF_floor (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) #x3fe0000000000000)
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) alpha_ack!412)
                                     ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (bvmul #x0000000000000018
                  ((_ sign_extend 32)
                    (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1))))))
  (bvult (bvadd #x0000000000000008 a!2) #x0000000000001001))))
(assert (FPCHECK_FINVALID_SQRT b_ack!411 b_ack!411))

(check-sat)
(exit)
