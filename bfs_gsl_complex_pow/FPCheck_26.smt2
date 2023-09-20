(declare-fun x1_ack!138 () (_ BitVec 64))
(declare-fun x2_ack!137 () (_ BitVec 64))
(declare-fun y1_ack!136 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!138) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!137) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!137) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!138))
        (fp.abs ((_ to_fp 11 53) y1_ack!136))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y1_ack!136))
          (fp.abs ((_ to_fp 11 53) x1_ack!138)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y1_ack!136))
          (fp.abs ((_ to_fp 11 53) x1_ack!138)))))

(check-sat)
(exit)
