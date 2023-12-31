(declare-fun b_ack!2828 () (_ BitVec 32))
(declare-fun a_ack!2830 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun c_ack!2829 () (_ BitVec 64))
(assert (not (bvslt b_ack!2828 #x00000000)))
(assert (not (bvslt a_ack!2830 #x00000000)))
(assert (not (= #x00000000 b_ack!2828)))
(assert (not (= #x00000001 b_ack!2828)))
(assert (not (= #x00000000 a_ack!2830)))
(assert (not (= #x00000001 a_ack!2830)))
(assert (not (bvslt (bvsub b_ack!2828 a_ack!2830) #x00000000)))
(assert (not (bvslt (bvsub b_ack!2828 a_ack!2830) #x00000000)))
(assert (= #x00000000 (bvsub b_ack!2828 a_ack!2830)))
(assert (not (bvslt (bvadd #x00000001 (bvsub b_ack!2828 a_ack!2830)) #x00000000)))
(assert (not (= #xffffffff (bvsub b_ack!2828 a_ack!2830))))
(assert (= #x00000000 (bvsub b_ack!2828 a_ack!2830)))
(assert (FPCHECK_FMUL_ACCURACY #x4000000000000000 c_ack!2829))

(check-sat)
(exit)
