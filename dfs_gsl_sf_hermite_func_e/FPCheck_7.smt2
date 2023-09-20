(declare-fun a_ack!31 () (_ BitVec 32))
(declare-fun b_ack!30 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!31 #x00000000)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!30) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000 (bvand a_ack!31 #x00000001)))
(assert (bvslt #x00000001 a_ack!31))
(assert (let ((a!1 (not (= #x00000000 (bvand (bvsdiv a_ack!31 #x00000002) #x00000001)))))
  (FPCHECK_FMUL_UNDERFLOW
    (ite a!1 #xbff0000000000000 #x3ff0000000000000)
    #x3fe6a09e667f3bcd)))

(check-sat)
(exit)
