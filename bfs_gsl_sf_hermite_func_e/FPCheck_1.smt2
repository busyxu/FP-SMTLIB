(declare-fun a_ack!5 () (_ BitVec 32))
(declare-fun b_ack!4 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!5 #x00000000)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!4) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000 (bvand a_ack!5 #x00000001)))
(assert (not (bvslt #x00000001 a_ack!5)))
(assert (let ((a!1 (not (= #x00000000 (bvand (bvsdiv a_ack!5 #x00000002) #x00000001)))))
  (FPCHECK_FDIV_UNDERFLOW
    (ite a!1 #xbff0000000000000 #x3ff0000000000000)
    #x3ff54d264f787eb7)))

(check-sat)
(exit)
