(declare-fun a_ack!609 () (_ BitVec 32))
(declare-fun b_ack!608 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!609 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!608) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!608) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!609) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!608) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!608) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!609)))
(assert (not (= #x00000000 a_ack!609)))
(assert (not (= #x00000001 a_ack!609)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!609))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!608)
                      ((_ to_fp 11 53) b_ack!608))
              (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x4005bf0a8b145769))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    (bvmul (bvadd #x00000001 a_ack!609)
                           (bvadd #x00000001 a_ack!609))
                    a_ack!609))))
  (fp.gt (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3f20000000000000)
                 ((_ to_fp 11 53) b_ack!608))
         (fp.add roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (FPCHECK_FADD_UNDERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 a_ack!609))
  #x3fe0000000000000))

(check-sat)
(exit)
