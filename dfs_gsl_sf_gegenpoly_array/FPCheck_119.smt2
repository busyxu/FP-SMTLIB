(declare-fun b_ack!541 () (_ BitVec 64))
(declare-fun a_ack!543 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun c_ack!542 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!541) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!543 #x00000000)))
(assert (not (= #x00000000 a_ack!543)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!541) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvsle #x00000002 a_ack!543))
(assert (bvsle #x00000003 a_ack!543))
(assert (bvsle #x00000004 a_ack!543))
(assert (bvsle #x00000005 a_ack!543))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4014000000000000)
                                   ((_ to_fp 11 53) b_ack!541))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_ACCURACY a!1 c_ack!542)))

(check-sat)
(exit)
