(declare-fun w0_ack!136 () (_ BitVec 64))
(declare-fun w1_ack!133 () (_ BitVec 64))
(declare-fun w2_ack!134 () (_ BitVec 64))
(declare-fun w3_ack!135 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) w0_ack!136) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!133) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) w2_ack!134) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w3_ack!135) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w0_ack!136) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!133) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x409ef00000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) w1_ack!133)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) w1_ack!133))))))
  (FPCHECK_FSUB_UNDERFLOW
    #x409ef00000000000
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!1))))

(check-sat)
(exit)
