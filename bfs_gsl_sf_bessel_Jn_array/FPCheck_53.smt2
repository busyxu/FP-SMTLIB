(declare-fun a_ack!283 () (_ BitVec 32))
(declare-fun b_ack!281 () (_ BitVec 32))
(declare-fun c_ack!282 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!283 #x00000000)))
(assert (not (bvslt b_ack!281 a_ack!283)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!282) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!281) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!282) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!281)))
(assert (not (= #x00000000 b_ack!281)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!282) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 b_ack!281))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) c_ack!282)
                      ((_ to_fp 11 53) c_ack!282))
              (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3f48406003b2ae5a))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul (bvadd #x00000001 b_ack!281)
                            (bvadd #x00000001 b_ack!281)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.gt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3f20000000000000)
                      ((_ to_fp 11 53) c_ack!282))
              a!1))))
(assert (bvslt #x00000032 (bvadd #x00000001 b_ack!281)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!282) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53)
               roundNearestTiesToEven
               (bvadd #x00000001 b_ack!281))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 b_ack!281))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 b_ack!281)))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 b_ack!281)))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!1 a!1)
                    a!1)
            ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #x00000001 b_ack!281)))
    ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 b_ack!281)))))

(check-sat)
(exit)
