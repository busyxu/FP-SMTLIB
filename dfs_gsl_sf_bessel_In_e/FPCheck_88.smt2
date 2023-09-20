(declare-fun b_ack!116 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (let ((a!1 (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!116)))
                  ((_ to_fp 11 53) #x3e60000000000000))))
  (not a!1)))
(assert (fp.leq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!116)))
        ((_ to_fp 11 53) #x4008000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!116)))
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!116))))))
  (FPCHECK_FSUB_ACCURACY
    (fp.div roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x4012000000000000))
    #x3ff0000000000000)))

(check-sat)
(exit)
