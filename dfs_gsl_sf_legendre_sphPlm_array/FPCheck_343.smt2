(declare-fun b_ack!1791 () (_ BitVec 32))
(declare-fun a_ack!1793 () (_ BitVec 32))
(declare-fun c_ack!1792 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!1791 #x00000000)))
(assert (not (bvslt a_ack!1793 b_ack!1791)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1792) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1792) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1791)))
(assert (= #x00000000 b_ack!1791))
(assert (not (= a_ack!1793 b_ack!1791)))
(assert (not (= a_ack!1793 (bvadd #x00000001 b_ack!1791))))
(assert (bvsle (bvadd #x00000002 b_ack!1791) a_ack!1793))
(assert (bvsle (bvadd #x00000003 b_ack!1791) a_ack!1793))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvmul #x00000002 (bvadd #x00000003 b_ack!1791)))))
      (a!3 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff (bvmul #x00000002 (bvadd #x00000003 b_ack!1791))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000003 b_ack!1791 b_ack!1791)))
                   a!1)))
  (FPCHECK_FINVALID_SQRT
    (fp.mul roundNearestTiesToEven a!2 a!3)
    (fp.mul roundNearestTiesToEven a!2 a!3)))))

(check-sat)
(exit)
