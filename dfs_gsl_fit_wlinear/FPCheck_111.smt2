(declare-fun w0_ack!374 () (_ BitVec 64))
(declare-fun w1_ack!373 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.gt ((_ to_fp 11 53) w0_ack!374) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!373) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x409ec80000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) w0_ack!374)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) w0_ack!374))))))
  (FPCHECK_FSUB_ACCURACY
    #x409ef00000000000
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!1))))

(check-sat)
(exit)
