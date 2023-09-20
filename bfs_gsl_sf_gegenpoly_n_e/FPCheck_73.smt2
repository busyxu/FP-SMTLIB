(declare-fun b_ack!430 () (_ BitVec 64))
(declare-fun a_ack!432 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!431 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!430) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!432 #x00000000)))
(assert (not (= #x00000000 a_ack!432)))
(assert (not (= #x00000001 a_ack!432)))
(assert (not (= #x00000002 a_ack!432)))
(assert (= #x00000003 a_ack!432))
(assert (fp.eq ((_ to_fp 11 53) b_ack!430) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff5555555555555)
                                   ((_ to_fp 11 53) c_ack!431))
                           ((_ to_fp 11 53) c_ack!431)))))
  (FPCHECK_FMUL_UNDERFLOW
    #x4000000000000000
    (fp.abs (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) c_ack!431) a!1)))))

(check-sat)
(exit)
