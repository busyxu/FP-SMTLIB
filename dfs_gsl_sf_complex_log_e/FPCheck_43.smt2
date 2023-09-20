(declare-fun a_ack!95 () (_ BitVec 64))
(declare-fun b_ack!94 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (not (fp.eq ((_ to_fp 11 53) a_ack!95)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!94) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!95)) (fp.abs ((_ to_fp 11 53) b_ack!94))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!95))
            (fp.abs ((_ to_fp 11 53) b_ack!94)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!95))
          (fp.abs ((_ to_fp 11 53) b_ack!94)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!95))
          (fp.abs ((_ to_fp 11 53) b_ack!94)))))

(check-sat)
(exit)
