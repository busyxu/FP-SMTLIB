(declare-fun a_ack!3404 () (_ BitVec 32))
(declare-fun b_ack!3402 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun c_ack!3403 () (_ BitVec 64))
(assert (not (bvslt a_ack!3404 #x00000000)))
(assert (not (bvslt b_ack!3402 #x00000000)))
(assert (not (= #x00000000 a_ack!3404)))
(assert (not (= #x00000001 a_ack!3404)))
(assert (bvslt (bvadd #x00000001 (bvsub b_ack!3402 a_ack!3404)) #x00000001))
(assert (not (bvsle #x00000001 b_ack!3402)))
(assert (bvslt b_ack!3402 a_ack!3404))
(assert (not (= #x00000000 (bvand (bvsub a_ack!3404 b_ack!3402) #x00000001))))
(assert (bvslt b_ack!3402 (bvsub a_ack!3404 b_ack!3402)))
(assert (not (bvslt #x00000000 b_ack!3402)))
(assert (bvsle #x00000001 (bvsub a_ack!3404 b_ack!3402)))
(assert (bvsle #x00000002 (bvsub a_ack!3404 b_ack!3402)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3403))
                           ((_ to_fp 11 53) #x3cb0000000000000))
                   ((_ to_fp 11 53) #x3cb0000000000000))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven (fp.abs ((_ to_fp 11 53) c_ack!3403)) a!1)
    #x3cc0000000000000)))

(check-sat)
(exit)
