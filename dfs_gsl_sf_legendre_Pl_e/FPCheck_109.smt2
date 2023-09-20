(declare-fun a_ack!423 () (_ BitVec 32))
(declare-fun b_ack!422 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!423 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!422) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!422) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!423)))
(assert (not (= #x00000001 a_ack!423)))
(assert (= #x00000002 a_ack!423))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!422))
                           ((_ to_fp 11 53) b_ack!422)))))
  (FPCHECK_FMUL_OVERFLOW
    #x3cb0000000000000
    (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))

(check-sat)
(exit)
