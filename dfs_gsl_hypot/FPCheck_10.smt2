(declare-fun a_ack!47 () (_ BitVec 64))
(declare-fun b_ack!46 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) a_ack!47)) #x01 #x00))))
  (not (= a!1 #b1))))
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) b_ack!46)) #x01 #x00))))
  (not (= a!1 #b1))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!47))
            (fp.abs ((_ to_fp 11 53) b_ack!46)))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!46))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!46))
                           (fp.abs ((_ to_fp 11 53) a_ack!47)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!46))
                           (fp.abs ((_ to_fp 11 53) a_ack!47))))))
  (FPCHECK_FADD_ACCURACY #x3ff0000000000000 a!1)))

(check-sat)
(exit)
