(declare-fun a_ack!418 () (_ BitVec 32))
(declare-fun b_ack!416 () (_ BitVec 32))
(declare-fun c_ack!417 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!418 #x00000000)))
(assert (not (bvslt b_ack!416 a_ack!418)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!417) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!416) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!417) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!416)))
(assert (not (= #x00000000 b_ack!416)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!417) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 b_ack!416))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) c_ack!417)
                      ((_ to_fp 11 53) c_ack!417))
              (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3f48406003b2ae5a))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul (bvadd #x00000001 b_ack!416)
                            (bvadd #x00000001 b_ack!416)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.gt (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3f20000000000000)
                 ((_ to_fp 11 53) c_ack!417))
         a!1)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 b_ack!416)))
  #x3fd0000000000000))

(check-sat)
(exit)
