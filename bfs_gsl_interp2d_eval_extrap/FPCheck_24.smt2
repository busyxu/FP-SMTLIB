(declare-fun x1_ack!238 () (_ BitVec 64))
(declare-fun x0_ack!242 () (_ BitVec 64))
(declare-fun y0_ack!239 () (_ BitVec 64))
(declare-fun x_ack!240 () (_ BitVec 64))
(declare-fun y_ack!241 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!242) ((_ to_fp 11 53) x1_ack!238))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!239) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!240) ((_ to_fp 11 53) x0_ack!242)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!241) ((_ to_fp 11 53) y0_ack!239))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!241) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!238)
                       ((_ to_fp 11 53) x0_ack!242))
               ((_ to_fp 11 53) x0_ack!242))
       ((_ to_fp 11 53) x1_ack!238)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!238)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!238)
                       ((_ to_fp 11 53) x0_ack!242)))
       ((_ to_fp 11 53) x0_ack!242)))
(assert (FPCHECK_FSUB_OVERFLOW #x3ff0000000000000 y0_ack!239))

(check-sat)
(exit)
