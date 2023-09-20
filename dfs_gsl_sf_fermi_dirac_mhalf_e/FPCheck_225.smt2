(declare-fun a_ack!305 () (_ BitVec 64))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!305) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!305) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_exp a_ack!305)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!305))
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcd)))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   (CF_exp a_ack!305)
                                   a!1)))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #x3cb0000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_exp a_ack!305)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!305))
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcd)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!305))
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)))))
  (FPCHECK_FADD_OVERFLOW
    (fp.add roundNearestTiesToEven (CF_exp a_ack!305) a!1)
    a!2))))

(check-sat)
(exit)
