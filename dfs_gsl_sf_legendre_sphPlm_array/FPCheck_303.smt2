(declare-fun b_ack!1635 () (_ BitVec 32))
(declare-fun a_ack!1637 () (_ BitVec 32))
(declare-fun c_ack!1636 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!1635 #x00000000)))
(assert (not (bvslt a_ack!1637 b_ack!1635)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1636) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1636) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1635)))
(assert (= #x00000000 b_ack!1635))
(assert (not (= a_ack!1637 b_ack!1635)))
(assert (not (= a_ack!1637 (bvadd #x00000001 b_ack!1635))))
(assert (bvsle (bvadd #x00000002 b_ack!1635) a_ack!1637))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000002 b_ack!1635 b_ack!1635))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvmul #x00000002 (bvadd #x00000002 b_ack!1635)))))
      (a!4 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffd (bvmul #x00000002 (bvadd #x00000002 b_ack!1635))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000002 b_ack!1635 b_ack!1635)))
                   a!1)))
  (FPCHECK_FDIV_UNDERFLOW (fp.mul roundNearestTiesToEven a!2 a!3) a!4))))

(check-sat)
(exit)
