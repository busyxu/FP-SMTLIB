(declare-fun w0_ack!594 () (_ BitVec 64))
(declare-fun w1_ack!591 () (_ BitVec 64))
(declare-fun w2_ack!592 () (_ BitVec 64))
(declare-fun w3_ack!593 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) w0_ack!594) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!591) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) w2_ack!592) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w3_ack!593) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w0_ack!594) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!591) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) w1_ack!591)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) w1_ack!591)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x409ef00000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ef00000000000)
                                   a!1))))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4026000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4026000000000000)
                                   a!1)))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven a!2 a!3)
    #x0000000000000000))))

(check-sat)
(exit)
