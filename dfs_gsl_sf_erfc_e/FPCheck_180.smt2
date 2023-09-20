(declare-fun a_ack!238 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!238))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!238))
             ((_ to_fp 11 53) #x4014000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!238))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!238))
                           ((_ to_fp 11 53) #x3fe20dd750429b62))
                   ((_ to_fp 11 53) #x3ff467e6dad8642a))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!238))
                           a!1)
                   ((_ to_fp 11 53) #x40141381c5862508))))
  (FPCHECK_FADD_ACCURACY
    (fp.mul roundNearestTiesToEven (fp.abs ((_ to_fp 11 53) a_ack!238)) a!2)
    #x4018a40e0d3e694c))))

(check-sat)
(exit)
