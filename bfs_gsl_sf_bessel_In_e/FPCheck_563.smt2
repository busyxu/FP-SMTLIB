(declare-fun b_ack!884 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (let ((a!1 (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!884)))
                  ((_ to_fp 11 53) #x3e60000000000000))))
  (not a!1)))
(assert (fp.leq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!884)))
        ((_ to_fp 11 53) #x4008000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!884)))
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!884))))))
  (FPCHECK_FDIV_ACCURACY a!1 #x4012000000000000)))

(check-sat)
(exit)
