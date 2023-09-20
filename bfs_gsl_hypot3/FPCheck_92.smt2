(declare-fun c_ack!464 () (_ BitVec 64))
(declare-fun b_ack!463 () (_ BitVec 64))
(declare-fun a_ack!465 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!463))
       (fp.abs ((_ to_fp 11 53) c_ack!464))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!465))
            (fp.abs ((_ to_fp 11 53) b_ack!463)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!463))
       (fp.abs ((_ to_fp 11 53) c_ack!464))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!463))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!463))
          (fp.abs ((_ to_fp 11 53) b_ack!463)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!463))
          (fp.abs ((_ to_fp 11 53) b_ack!463)))))

(check-sat)
(exit)
