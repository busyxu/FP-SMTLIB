(declare-fun x_hi_ack!54 () (_ BitVec 64))
(declare-fun x_lo_ack!55 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!55) ((_ to_fp 11 53) x_hi_ack!54))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!55)
                       ((_ to_fp 11 53) x_hi_ack!54))
               ((_ to_fp 11 53) x_lo_ack!55))
       ((_ to_fp 11 53) x_hi_ack!54)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!55)
                       ((_ to_fp 11 53) x_hi_ack!54))
               ((_ to_fp 11 53) x_hi_ack!54))
       ((_ to_fp 11 53) x_lo_ack!55)))
(assert (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 x_lo_ack!55))

(check-sat)
(exit)
