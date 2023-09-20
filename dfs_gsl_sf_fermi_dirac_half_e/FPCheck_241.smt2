(declare-fun a_ack!318 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!318) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!318) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!318))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd))))
  (FPCHECK_FDIV_INVALID
    (fp.mul roundNearestTiesToEven (CF_exp a_ack!318) a!1)
    (fp.add roundNearestTiesToEven
            (CF_exp a_ack!318)
            (fp.mul roundNearestTiesToEven (CF_exp a_ack!318) a!1)))))

(check-sat)
(exit)
