(declare-fun b_ack!534 () (_ BitVec 64))
(declare-fun a_ack!535 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!534) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!535 #x00000000)))
(assert (not (= #x00000000 a_ack!535)))
(assert (not (= #x00000001 a_ack!535)))
(assert (not (= #x00000002 a_ack!535)))
(assert (= #x00000003 a_ack!535))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!534) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!534)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4018000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!534))))))
  (FPCHECK_FADD_OVERFLOW #x4010000000000000 a!1)))

(check-sat)
(exit)
