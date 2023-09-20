(declare-fun a_ack!103 () (_ BitVec 32))
(declare-fun b_ack!101 () (_ BitVec 32))
(declare-fun c_ack!102 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!103 #x00000000)))
(assert (not (bvslt b_ack!101 a_ack!103)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!102) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!101) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!102) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!101)))
(assert (not (= #x00000000 b_ack!101)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!102) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 b_ack!101))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) c_ack!102)
                      ((_ to_fp 11 53) c_ack!102))
              (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3f48406003b2ae5a))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul (bvadd #x00000001 b_ack!101)
                            (bvadd #x00000001 b_ack!101)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.gt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3f20000000000000)
                      ((_ to_fp 11 53) c_ack!102))
              a!1))))
(assert (bvslt #x00000032 (bvadd #x00000001 b_ack!101)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!102) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53)
               roundNearestTiesToEven
               (bvadd #x00000001 b_ack!101))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  c_ack!102
  ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 b_ack!101))))

(check-sat)
(exit)
