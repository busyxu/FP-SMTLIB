(declare-fun a_ack!54 () (_ BitVec 64))
(declare-fun b_ack!53 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (not (fp.eq ((_ to_fp 11 53) a_ack!54)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!53) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!54))
            (fp.abs ((_ to_fp 11 53) b_ack!53)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!54))
            (fp.abs ((_ to_fp 11 53) b_ack!53)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!53))
                           (fp.abs ((_ to_fp 11 53) b_ack!53)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!53))
                           (fp.abs ((_ to_fp 11 53) b_ack!53))))))
  (FPCHECK_FADD_ACCURACY #x3ff0000000000000 a!1)))

(check-sat)
(exit)
