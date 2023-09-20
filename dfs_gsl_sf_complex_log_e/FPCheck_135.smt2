(declare-fun a_ack!408 () (_ BitVec 64))
(declare-fun b_ack!407 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!408) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!408))
            (fp.abs ((_ to_fp 11 53) b_ack!407)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!408))
       (fp.abs ((_ to_fp 11 53) b_ack!407))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!407))
                           (fp.abs ((_ to_fp 11 53) a_ack!408)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!407))
                           (fp.abs ((_ to_fp 11 53) a_ack!408))))))
  (FPCHECK_FADD_ACCURACY #x3ff0000000000000 a!1)))

(check-sat)
(exit)
