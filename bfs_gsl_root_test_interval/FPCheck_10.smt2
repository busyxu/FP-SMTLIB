(declare-fun x_hi_ack!44 () (_ BitVec 64))
(declare-fun x_lo_ack!45 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!45) ((_ to_fp 11 53) x_hi_ack!44))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!45)
                       ((_ to_fp 11 53) x_hi_ack!44))
               ((_ to_fp 11 53) x_lo_ack!45))
       ((_ to_fp 11 53) x_hi_ack!44)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!45)
                       ((_ to_fp 11 53) x_hi_ack!44))
               ((_ to_fp 11 53) x_hi_ack!44))
       ((_ to_fp 11 53) x_lo_ack!45)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) x_lo_ack!45)
          ((_ to_fp 11 53) x_hi_ack!44))))

(check-sat)
(exit)
