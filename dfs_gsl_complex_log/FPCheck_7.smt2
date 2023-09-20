(declare-fun y_ack!28 () (_ BitVec 64))
(declare-fun x_ack!29 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!29)) (fp.abs ((_ to_fp 11 53) y_ack!28))))
(assert (let ((a!1 (and (fp.eq (fp.abs ((_ to_fp 11 53) y_ack!28))
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!29))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y_ack!28))
          (fp.abs ((_ to_fp 11 53) x_ack!29)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y_ack!28))
          (fp.abs ((_ to_fp 11 53) x_ack!29)))))

(check-sat)
(exit)
