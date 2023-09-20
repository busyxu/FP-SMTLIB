(declare-fun a_ack!136 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!135 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!136) ((_ to_fp 11 53) #xc000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!136) ((_ to_fp 11 53) #xc008000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) a_ack!136))))))
  (FPCHECK_FADD_UNDERFLOW
    #x3ff0000000000000
    (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!135)))))

(check-sat)
(exit)
