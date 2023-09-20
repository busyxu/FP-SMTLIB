(declare-fun a_ack!128 () (_ BitVec 64))
(declare-fun b_ack!127 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!128) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!128))
            (fp.abs ((_ to_fp 11 53) b_ack!127)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!128))
            (fp.abs ((_ to_fp 11 53) b_ack!127)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!127))
          (fp.abs ((_ to_fp 11 53) b_ack!127)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!127))
          (fp.abs ((_ to_fp 11 53) b_ack!127)))))

(check-sat)
(exit)
