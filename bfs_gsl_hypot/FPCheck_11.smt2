(declare-fun a_ack!59 () (_ BitVec 64))
(declare-fun b_ack!58 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) a_ack!59)) #x01 #x00))))
  (not (= a!1 #b1))))
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) b_ack!58)) #x01 #x00))))
  (not (= a!1 #b1))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!59))
            (fp.abs ((_ to_fp 11 53) b_ack!58)))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!58))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!58))
          (fp.abs ((_ to_fp 11 53) a_ack!59)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!58))
          (fp.abs ((_ to_fp 11 53) a_ack!59)))))

(check-sat)
(exit)
