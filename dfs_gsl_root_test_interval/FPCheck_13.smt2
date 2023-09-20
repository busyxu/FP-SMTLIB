(declare-fun x_hi_ack!58 () (_ BitVec 64))
(declare-fun x_lo_ack!59 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!59) ((_ to_fp 11 53) x_hi_ack!58))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!59)
                       ((_ to_fp 11 53) x_hi_ack!58))
               ((_ to_fp 11 53) x_lo_ack!59))
       ((_ to_fp 11 53) x_hi_ack!58)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!59)
                       ((_ to_fp 11 53) x_hi_ack!58))
               ((_ to_fp 11 53) x_hi_ack!58))
       ((_ to_fp 11 53) x_lo_ack!59)))
(assert (FPCHECK_FMUL_UNDERFLOW #x3ff0000000000000 x_lo_ack!59))

(check-sat)
(exit)
