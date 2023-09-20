(declare-fun a_ack!409 () (_ BitVec 32))
(declare-fun b_ack!407 () (_ BitVec 32))
(declare-fun c_ack!408 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!409 #x00000000)))
(assert (not (bvslt b_ack!407 a_ack!409)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!408) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!407) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!408) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!407)))
(assert (not (= #x00000000 b_ack!407)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!408) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 b_ack!407))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) c_ack!408)
                      ((_ to_fp 11 53) c_ack!408))
              (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3f48406003b2ae5a))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul (bvadd #x00000001 b_ack!407)
                            (bvadd #x00000001 b_ack!407)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.gt (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3f20000000000000)
                 ((_ to_fp 11 53) c_ack!408))
         a!1)))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fe0000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 b_ack!407))))

(check-sat)
(exit)
