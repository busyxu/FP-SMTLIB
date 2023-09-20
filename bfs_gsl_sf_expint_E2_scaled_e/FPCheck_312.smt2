(declare-fun a_ack!407 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!407) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!407) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!407) ((_ to_fp 11 53) #x4059000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!407) ((_ to_fp 11 53) #x4085eeaad5511c64)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x41f7328cc0000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!407))
                           ((_ to_fp 11 53) #xc2344c3b28000000)))))
  (FPCHECK_FADD_UNDERFLOW
    #xc1bc8cfc00000000
    (fp.mul roundNearestTiesToEven
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) a_ack!407))
            a!1))))

(check-sat)
(exit)
