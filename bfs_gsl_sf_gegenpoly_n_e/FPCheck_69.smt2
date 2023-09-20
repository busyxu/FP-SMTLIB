(declare-fun b_ack!404 () (_ BitVec 64))
(declare-fun a_ack!406 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun c_ack!405 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!404) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!406 #x00000000)))
(assert (not (= #x00000000 a_ack!406)))
(assert (not (= #x00000001 a_ack!406)))
(assert (not (= #x00000002 a_ack!406)))
(assert (= #x00000003 a_ack!406))
(assert (fp.eq ((_ to_fp 11 53) b_ack!404) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff5555555555555)
                                   ((_ to_fp 11 53) c_ack!405))
                           ((_ to_fp 11 53) c_ack!405)))))
  (FPCHECK_FMUL_OVERFLOW c_ack!405 a!1)))

(check-sat)
(exit)
