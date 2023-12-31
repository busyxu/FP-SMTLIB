(declare-fun b_ack!579 () (_ BitVec 32))
(declare-fun a_ack!581 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun c_ack!580 () (_ BitVec 64))
(assert (not (bvslt b_ack!579 #x00000000)))
(assert (not (bvslt a_ack!581 #x00000000)))
(assert (not (= #x00000000 b_ack!579)))
(assert (not (= #x00000001 b_ack!579)))
(assert (not (= #x00000000 a_ack!581)))
(assert (not (= #x00000001 a_ack!581)))
(assert (not (bvslt (bvsub b_ack!579 a_ack!581) #x00000000)))
(assert (not (bvslt (bvsub b_ack!579 a_ack!581) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!579 a_ack!581))))
(assert (= #x00000001 (bvsub b_ack!579 a_ack!581)))
(assert (FPCHECK_FMUL_ACCURACY #x4000000000000000 c_ack!580))

(check-sat)
(exit)
