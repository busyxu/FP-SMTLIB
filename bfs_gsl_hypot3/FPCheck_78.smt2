(declare-fun c_ack!410 () (_ BitVec 64))
(declare-fun b_ack!409 () (_ BitVec 64))
(declare-fun a_ack!411 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!409))
       (fp.abs ((_ to_fp 11 53) c_ack!410))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!411))
            (fp.abs ((_ to_fp 11 53) b_ack!409)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!409))
       (fp.abs ((_ to_fp 11 53) c_ack!410))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!409))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!411))
          (fp.abs ((_ to_fp 11 53) b_ack!409)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!411))
          (fp.abs ((_ to_fp 11 53) b_ack!409)))))

(check-sat)
(exit)
