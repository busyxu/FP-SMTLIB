(declare-fun a_ack!169 () (_ BitVec 64))
(declare-fun c_ack!168 () (_ BitVec 64))
(declare-fun b_ack!167 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!169) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!169))
       ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!168))
       ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (bvsle #x00000001 b_ack!167))
(assert (bvsle #x00000002 b_ack!167))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!169)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) a_ack!169)
            ((_ to_fp 11 53) #x4000000000000000))
    a!1)))

(check-sat)
(exit)
