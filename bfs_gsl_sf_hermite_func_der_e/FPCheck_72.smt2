(declare-fun a_ack!436 () (_ BitVec 32))
(declare-fun b_ack!435 () (_ BitVec 32))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!436 #x00000000)))
(assert (not (bvslt b_ack!435 #x00000000)))
(assert (not (= #x00000000 a_ack!436)))
(assert (not (= #x00000001 a_ack!436)))
(assert (not (bvslt (bvadd #x00000001 (bvsub b_ack!435 a_ack!436)) #x00000001)))
(assert (bvsle (bvadd #x00000001 (bvsub b_ack!435 a_ack!436)) b_ack!435))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub b_ack!435 a_ack!436))))))
  (FPCHECK_FINVALID_SQRT a!1 a!1)))

(check-sat)
(exit)
