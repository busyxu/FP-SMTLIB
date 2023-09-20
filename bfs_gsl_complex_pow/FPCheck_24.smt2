(declare-fun x1_ack!126 () (_ BitVec 64))
(declare-fun x2_ack!125 () (_ BitVec 64))
(declare-fun y1_ack!124 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!126) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!125) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!125) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!126))
        (fp.abs ((_ to_fp 11 53) y1_ack!124))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y1_ack!124))
          (fp.abs ((_ to_fp 11 53) x1_ack!126)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y1_ack!124))
          (fp.abs ((_ to_fp 11 53) x1_ack!126)))))

(check-sat)
(exit)
