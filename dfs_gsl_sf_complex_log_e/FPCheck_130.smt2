(declare-fun a_ack!388 () (_ BitVec 64))
(declare-fun b_ack!387 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!388) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!388))
            (fp.abs ((_ to_fp 11 53) b_ack!387)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!388))
       (fp.abs ((_ to_fp 11 53) b_ack!387))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!387))
          (fp.abs ((_ to_fp 11 53) a_ack!388)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!387))
          (fp.abs ((_ to_fp 11 53) a_ack!388)))))

(check-sat)
(exit)
