(declare-fun a_ack!43 () (_ BitVec 32))
(declare-fun b_ack!42 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (bvslt a_ack!43 #x000003e8))
(assert (not (bvslt a_ack!43 #x00000000)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!42) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000 (bvand a_ack!43 #x00000001)))
(assert (bvslt #x00000001 a_ack!43))
(assert (bvslt #x00000003 a_ack!43))
(assert (let ((a!1 (not (= #x00000000 (bvand (bvsdiv a_ack!43 #x00000002) #x00000001)))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) (ite a!1 #xbff0000000000000 #x3ff0000000000000))
            ((_ to_fp 11 53) #x3fe6a09e667f3bcd))
    #x3febb67ae8584caa)))

(check-sat)
(exit)
