(declare-fun a_ack!126 () (_ BitVec 64))
(declare-fun b_ack!125 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!126) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!126))
            (fp.abs ((_ to_fp 11 53) b_ack!125)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!126))
            (fp.abs ((_ to_fp 11 53) b_ack!125)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!125))
          (fp.abs ((_ to_fp 11 53) b_ack!125)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!125))
          (fp.abs ((_ to_fp 11 53) b_ack!125)))))

(check-sat)
(exit)
