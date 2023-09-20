(declare-fun a_ack!238 () (_ BitVec 64))
(declare-fun b_ack!237 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!238) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!238))
            (fp.abs ((_ to_fp 11 53) b_ack!237)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!238))
       (fp.abs ((_ to_fp 11 53) b_ack!237))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!237))
                           (fp.abs ((_ to_fp 11 53) a_ack!238)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!237))
                           (fp.abs ((_ to_fp 11 53) a_ack!238))))))
  (FPCHECK_FADD_ACCURACY #x3ff0000000000000 a!1)))

(check-sat)
(exit)
