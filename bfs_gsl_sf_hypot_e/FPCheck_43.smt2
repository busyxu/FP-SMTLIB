(declare-fun a_ack!122 () (_ BitVec 64))
(declare-fun b_ack!121 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!122) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!122))
            (fp.abs ((_ to_fp 11 53) b_ack!121)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!122))
            (fp.abs ((_ to_fp 11 53) b_ack!121)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!121))
                           (fp.abs ((_ to_fp 11 53) b_ack!121)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!121))
                           (fp.abs ((_ to_fp 11 53) b_ack!121))))))
  (FPCHECK_FINVALID_SQRT
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1)
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1))))

(check-sat)
(exit)
