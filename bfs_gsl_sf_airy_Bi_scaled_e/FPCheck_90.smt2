(declare-fun a_ack!283 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!283) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!283) ((_ to_fp 11 53) #xc000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!283) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4030000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!283)
                                   ((_ to_fp 11 53) a_ack!283))
                           ((_ to_fp 11 53) a_ack!283)))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x4022000000000000))
    #x401c000000000000)))

(check-sat)
(exit)
