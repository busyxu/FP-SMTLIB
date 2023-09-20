(declare-fun b_ack!1611 () (_ BitVec 32))
(declare-fun a_ack!1613 () (_ BitVec 32))
(declare-fun c_ack!1612 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!1611 #x00000000)))
(assert (not (bvslt a_ack!1613 b_ack!1611)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1612) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1612) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1611)))
(assert (= #x00000000 b_ack!1611))
(assert (not (= a_ack!1613 b_ack!1611)))
(assert (not (= a_ack!1613 (bvadd #x00000001 b_ack!1611))))
(assert (bvsle (bvadd #x00000002 b_ack!1611) a_ack!1613))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvmul #x00000002 (bvadd #x00000002 b_ack!1611)))))
      (a!3 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff (bvmul #x00000002 (bvadd #x00000002 b_ack!1611))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000002 b_ack!1611 b_ack!1611)))
                   a!1)))
  (FPCHECK_FINVALID_SQRT
    (fp.mul roundNearestTiesToEven a!2 a!3)
    (fp.mul roundNearestTiesToEven a!2 a!3)))))

(check-sat)
(exit)
