(declare-fun x1_ack!132 () (_ BitVec 64))
(declare-fun x2_ack!131 () (_ BitVec 64))
(declare-fun y1_ack!130 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!132) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!131) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!131) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!132))
        (fp.abs ((_ to_fp 11 53) y1_ack!130))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y1_ack!130))
          (fp.abs ((_ to_fp 11 53) x1_ack!132)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y1_ack!130))
          (fp.abs ((_ to_fp 11 53) x1_ack!132)))))

(check-sat)
(exit)
