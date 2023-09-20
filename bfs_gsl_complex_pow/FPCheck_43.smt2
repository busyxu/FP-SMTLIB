(declare-fun x1_ack!241 () (_ BitVec 64))
(declare-fun x2_ack!240 () (_ BitVec 64))
(declare-fun y1_ack!239 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!241) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!240) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!240) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!241))
             (fp.abs ((_ to_fp 11 53) y1_ack!239)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x1_ack!241))
          (fp.abs ((_ to_fp 11 53) y1_ack!239)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x1_ack!241))
          (fp.abs ((_ to_fp 11 53) y1_ack!239)))))

(check-sat)
(exit)
