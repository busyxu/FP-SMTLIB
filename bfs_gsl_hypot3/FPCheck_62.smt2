(declare-fun c_ack!326 () (_ BitVec 64))
(declare-fun b_ack!325 () (_ BitVec 64))
(declare-fun a_ack!327 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!325))
            (fp.abs ((_ to_fp 11 53) c_ack!326)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!327))
            (fp.abs ((_ to_fp 11 53) c_ack!326)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!325))
            (fp.abs ((_ to_fp 11 53) c_ack!326)))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!326))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!326))
          (fp.abs ((_ to_fp 11 53) c_ack!326)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!326))
          (fp.abs ((_ to_fp 11 53) c_ack!326)))))

(check-sat)
(exit)
