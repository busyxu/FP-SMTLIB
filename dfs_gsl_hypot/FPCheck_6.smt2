(declare-fun a_ack!29 () (_ BitVec 64))
(declare-fun b_ack!28 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) a_ack!29)) #x01 #x00))))
  (not (= a!1 #b1))))
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) b_ack!28)) #x01 #x00))))
  (not (= a!1 #b1))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!29))
            (fp.abs ((_ to_fp 11 53) b_ack!28)))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!28))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!28))
          (fp.abs ((_ to_fp 11 53) a_ack!29)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!28))
          (fp.abs ((_ to_fp 11 53) a_ack!29)))))

(check-sat)
(exit)
